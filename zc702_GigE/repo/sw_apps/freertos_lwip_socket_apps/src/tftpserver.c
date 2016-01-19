/*
 * Copyright (c) 2008 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <string.h>
#if __MICROBLAZE__ || __PPC__
#include "xmk.h"
#endif
#include "lwip/inet.h"
#include "lwip/sys.h"
#include "lwip/sockets.h"
#include "lwipopts.h"
#include "mfs_config.h"

#include "tftpserver.h"
#include "tftputils.h"
#include "prot_malloc.h"
#include "config_apps.h"
#ifdef __arm__
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"
#endif

static unsigned tftp_port = 69;

/* tftp_errorcode error strings */
char *tftp_errorcode_string[] = {
	"not defined",
	"file not found",
	"access violation",
	"disk full",
	"illegal operation",
	"unknown transfer id",
	"file already exists",
	"no such user",
};

int tftp_send_message(int sd, struct sockaddr_in *to, char *buf, int buflen)
{
	 return sendto(sd, buf, buflen, 0, (struct sockaddr *)to, sizeof *to);
}

/* construct an error message into buf using err as the error code */
int tftp_construct_error_message(char *buf, tftp_errorcode err)
{
	int errorlen;

	tftp_set_opcode(buf, TFTP_ERROR);
	tftp_set_errorcode(buf, err);

	tftp_set_errormsg(buf, tftp_errorcode_string[err]);
	errorlen = strlen(tftp_errorcode_string[err]);

	/* return message size */
	return 4 + errorlen + 1;
}

/* construct and send an error message back to client */
int tftp_send_error_message(int sd, struct sockaddr_in *to, tftp_errorcode err)
{
	char buf[512];
	int n;

	n = tftp_construct_error_message(buf, err);
	return tftp_send_message(sd, to, buf, n);
}

/* construct and send a data packet */
int tftp_send_data_packet(int sd, struct sockaddr_in *to, int block, char *buf, int buflen)
{
	char packet[TFTP_MAX_MSG_LEN];

	tftp_set_opcode(packet, TFTP_DATA);
	tftp_set_block(packet, block);
	tftp_set_data_message(packet, buf, buflen);

	return tftp_send_message(sd, to, packet, buflen + 4);
}

int tftp_send_ack_packet(int sd, struct sockaddr_in *to, int block)
{
	char packet[TFTP_MAX_ACK_LEN];

	tftp_set_opcode(packet, TFTP_ACK);
	tftp_set_block(packet, block);

	return tftp_send_message(sd, to, packet, TFTP_MAX_ACK_LEN);
}

/* return file @fname back to the client *to, via the socked descriptor sd */
int tftp_process_read(int sd, struct sockaddr_in *to, char *fname)
{
	int fd, n, block;
	fd_set rfds;
        struct timeval tv;

	/* first make sure the file exists and we can read the file */
	if (mfs_exists_file(fname) == 0) {
		printf("unable to open file: %s\r\n", fname);
		tftp_send_error_message(sd, to, TFTP_ERR_FILE_NOT_FOUND);
		return -1;
	}

	fd = mfs_file_open(fname, MFS_MODE_READ);

	/* initialize fd set */
        FD_ZERO(&rfds);
        FD_SET(sd, &rfds);

	/* time to wait for ACK to be received */
        tv.tv_sec = TFTP_TIMEOUT_INTERVAL;
        tv.tv_usec = 0;

	/* now all that is left is to keep sending the file in blocks of 512 bytes */
	block = 1;
	while (1) {
		char buf[TFTP_DATA_PACKET_LEN+1];
		int retries;
		int ackreceived, acklen;

		n = mfs_file_read(fd, buf, TFTP_DATA_PACKET_MSG_LEN);
		if (n <= 0)
			break;

		for (retries = 0, ackreceived = 0; !ackreceived && retries < TFTP_MAX_RETRIES; retries++) {
			/* send the data */
			tftp_send_data_packet(sd, to, block, buf, n);

           		if (lwip_select(sd + 1, &rfds, NULL, NULL, &tv) > 0) {
				char ackbuf[TFTP_MAX_ACK_LEN + 1];
				struct sockaddr_in from;
				int fromlen = sizeof from;

				/* we received a packet within specified time */
				/* read and make sure the data is acked */
				acklen = lwip_recvfrom(sd, ackbuf, TFTP_MAX_ACK_LEN, 0,
						(struct sockaddr *)&from, (socklen_t *)&fromlen);

				/* if we've received the correct ack, then we can go on to the next piece of data */
				/* if we haven't, then we have resend the current data */
				if (acklen == 4 && tftp_is_correct_ack(ackbuf, block))
					ackreceived = 1;
				else {
					printf("ack not recvd, acklen = %d\r\n", acklen);
				}
			}

		}

		/* if the peer did not respond with an ack, then we quit sending */
		if (retries == TFTP_MAX_RETRIES)
			break;

		/* if the last read than the requested number of bytes,
		 * then we've sent the whole file and so we can quit
		 */
		if (n < TFTP_DATA_PACKET_MSG_LEN)
			break;

		block++;
	}

	mfs_file_close(fd);

	return 0;
}

/* write data coming via sd to file *fname */
int tftp_process_write(int sd, struct sockaddr_in *to, char *fname)
{
	int fd, n, block;
	fd_set rfds;
        struct timeval tv;

	/* we do not allow overwriting files */
	if (mfs_exists_file(fname)) {
		printf("file %s already exists\r\n", fname);
		tftp_send_error_message(sd, to, TFTP_ERR_FILE_ALREADY_EXISTS);
		return -1;
	}


	/* attempt to open file *fname for writing */
	fd = mfs_file_open(fname, MFS_MODE_CREATE);
	if (fd < 0) {
		printf("unable to open file %s for writing\r\n", fname);
		perror("write:");
		tftp_send_error_message(sd, to, TFTP_ERR_DISKFULL);
		return -1;
	}

	/* initialize fd set */
        FD_ZERO(&rfds);
        FD_SET(sd, &rfds);

	/* time to wait for data to be received */
        tv.tv_sec = TFTP_TIMEOUT_INTERVAL;
        tv.tv_usec = 0;

	/* now all that is left is to keep reading the file in blocks of 512 bytes */
	block = 0;
	while (1) {
		char buf[TFTP_DATA_PACKET_LEN];
		int retries;
		int data_received, datalen;

		for (retries = 0, data_received = 0; !data_received && retries < TFTP_MAX_RETRIES; retries++) {
			/* send the ack */
			tftp_send_ack_packet(sd, to, block);

			/* now wait for next data packet to be received */
           		if (lwip_select(sd + 1, &rfds, NULL, NULL, &tv) > 0) {
				struct sockaddr_in from;
				int fromlen = sizeof from;

				/* we received the next data packet within specified time */
				datalen = lwip_recvfrom(sd, buf, TFTP_DATA_PACKET_LEN,
						0, (struct sockaddr *)&from, (socklen_t *)&fromlen);

				/* make sure data block is what we expect */
				if ((datalen > 4) && (tftp_extract_block(buf) == (block + 1)))
					data_received = 1;
			}
		}

		if (!data_received) { /* we did not receive data for all the retries */
			printf("data not received, expected block: %d\r\n", block);
			break;
		} else {
			/* write the received data to the file */
			n = mfs_file_write(fd, buf+TFTP_DATA_PACKET_HDR_LEN, datalen-TFTP_DATA_PACKET_HDR_LEN);
			if (n != 1) {
				xil_printf("write to file error\n\r");
				tftp_send_error_message(sd, to, TFTP_ERR_DISKFULL);
				break;
			}
		}

		block++;

		/* if the last packet was < TFTP_DATA_PACKET_LEN bytes, that indicates that
		 * the file has been transferred completely
		 */
		if (datalen < TFTP_DATA_PACKET_LEN) {
			/* send the final ack packet */
			tftp_send_ack_packet(sd, to, block);
			break;
		}
	}

	mfs_file_close(fd);

	return 0;
}

void process_tftp_request(void *a)
{
	tftp_connection_args *args = (tftp_connection_args *)a;
	tftp_opcode op = tftp_decode_op(args->request);
	char fname[512];
	int sd;
	struct sockaddr_in server;

	/* create a new socket to send responses to this client */
	sd = socket(AF_INET, SOCK_DGRAM, 0);
	if (sd < 0) {
		printf("%s: error creating socket, return value = %d\r\n", __FUNCTION__, sd);
		prot_mem_free(args);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
		return;
	}

	/* bind with a port of 0 to obtain some free port */
	memset(&server, 0, sizeof server);
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = 0;
	if (bind(sd, (struct sockaddr *)&server, sizeof server) < 0)  {
		printf("error binding");
		prot_mem_free(args);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
		return;
	}

	switch (op) {
	case TFTP_RRQ:
		tftp_extract_filename(fname, args->request);
		printf("TFTP RRQ (read request): %s\r\n", fname);
		tftp_process_read(sd, &args->from, fname);
		break;
	case TFTP_WRQ:
		tftp_extract_filename(fname, args->request);
		printf("TFTP WRQ (write request): %s\r\n", fname);
		tftp_process_write(sd, &args->from, fname);
		break;
	default:
		/* send a generic access violation message */
		tftp_send_error_message(sd, &args->from, TFTP_ERR_ACCESS_VIOLATION);
		printf("TFTP unknown request op: %d\r\n", op);
		break;
	}

	prot_mem_free(args);

	lwip_close(sd);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
	return;
}

int tftpserver_application_thread()
{
	int sd;
	int port = tftp_port;
	struct sockaddr_in server;
	int fromlen, n;

	sd = socket(AF_INET, SOCK_DGRAM, 0);
	if (sd < 0) {
		printf("error creating socket, return value = %d\r\n", sd);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
		return -1;
	}

	memset(&server, 0, sizeof server);
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = htons(port);
	if (bind(sd, (struct sockaddr *)&server, sizeof server) < 0)  {
		printf("error binding");
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
		return -2;
	}

	fromlen = sizeof(struct sockaddr_in);
	while (1) {
		tftp_connection_args *args;

		/* create a new args structure for every incoming request */
		/* this args structure is passed on to the child thread which is expected to free this memory */
		args = (tftp_connection_args *)prot_mem_malloc(sizeof *args);
		if (args == NULL) {
			printf("error allocating memory for connection arguments\r\n");
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
			return -1;
		}

		/* wait for a connection request */
		n = recvfrom(sd, &args->request, TFTP_MAX_MSG_LEN, 0,
				(struct sockaddr *)&args->from, (socklen_t *)&fromlen);
		if (n < 0) {
			printf("error recvfrom %d\r\n", n);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
			return -3;
		}

		/* create a new thread to process the connection */
		//process_tftp_request(args);
		/* spawn a separate handler for each request */
		sys_thread_new("TFTP", process_tftp_request, (void*)args,
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
	}
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
	return 0;
}

void
print_tftp_app_header()
{
        xil_printf("%20s %6d %s\r\n", "tftp server",
                        tftp_port,
                        "$ tftp -i 192.168.1.10 PUT <source-file>");
}
