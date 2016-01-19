/*
 * Copyright (c) 2007 Xilinx, Inc.  All rights reserved.
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
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwipopts.h"

#include "webserver.h"
#include "platform_gpio.h"

#include "config_apps.h"
#ifdef __arm__
#include "FreeRTOS.h"
#include "task.h"
#include "xil_printf.h"
#endif
int generate_response(int sd, char *http_req, int http_req_len);
static unsigned http_port = 80;

/* thread spawned for each connection */
void
process_http_request(int sd)
{
	int read_len,j;
	int RECV_BUF_SIZE = 1400;                        /* http request size can be a max of RECV_BUF_SIZE */
	char recv_buf[1400];		/* since these buffers are allocated on the stack .. */
							/* .. care should be taken to ensure there are no overflows */

	/* read in the request */
	if ((read_len = read(sd, recv_buf, RECV_BUF_SIZE)) < 0) {
		close(sd);
#ifdef OS_IS_FREERTOS
		vTaskDelete(NULL);
#endif
		return;
	}

	/* respond to request */
	generate_response(sd, recv_buf, read_len);
	j = 0;
	while(j < 5000)
		j++;
	/* close connection */
	close(sd);
#ifdef OS_IS_FREERTOS
	vTaskDelete(NULL);
#endif
	return;
}

/* http server */
int
web_application_thread()
{
	int sock, new_sd;
	struct sockaddr_in address, remote;
	int size;

	/* initialize devices */
	platform_init_gpios();

	/* create a TCP socket */
	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0) {
#ifdef OS_IS_FREERTOS
	vTaskDelete(NULL);
#endif
		return -1;
	}

	/* bind to port 80 at any interface */
	address.sin_family = AF_INET;
	address.sin_port = htons(http_port);
	address.sin_addr.s_addr = INADDR_ANY;
	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0) {
#ifdef OS_IS_FREERTOS
	vTaskDelete(NULL);
#endif
		return -1;
	}

	/* listen for incoming connections */
	lwip_listen(sock, 0);

	size = sizeof(remote);
	while (1) {
		new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size);
		/* spawn a separate handler for each request */
		sys_thread_new("httpd", (void(*)(void*))process_http_request, (void*)new_sd,
                        THREAD_STACKSIZE,
                        DEFAULT_THREAD_PRIO);
	}
	return 0;
}

void
print_web_app_header()
{
    xil_printf("%20s %6d %s\r\n", "http server",
                        http_port,
                        "Point your web browser to http://192.168.1.10");
}
