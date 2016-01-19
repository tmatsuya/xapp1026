/*
 * Copyright (c) 2007-2009 Xilinx, Inc.  All rights reserved.
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

#include <string.h>

#include "mfs_config.h"
#include "lwip/inet.h"
#include "lwip/sockets.h"

#include "webserver.h"
#include "platform_gpio.h"
#include "platform_fs.h"
#include "xil_printf.h"

char debug=1;

char *notfound_header =
	"<html> \
	<head> \
		<title>404</title> \
  		<style type=\"text/css\"> \
		div#request {background: #eeeeee} \
		</style> \
	</head> \
	<body> \
	<h1>404 Page Not Found</h1> \
	<div id=\"request\">";

char *notfound_footer =
	"</div> \
	</body> \
	</html>";

/* dynamically generate 404 response:
 *	this inserts the original request string in betwween the notfound_header & footer strings
 */
int do_404(int sd, char *req, int rlen)
{
	int len, hlen;
	int BUFSIZE = 1024;
	char buf[BUFSIZE];

	len = strlen(notfound_header) + strlen(notfound_footer) + rlen;

	hlen = generate_http_header(buf, "html", len);
	if (lwip_write(sd, buf, hlen) != hlen) {
		xil_printf("error writing http header to socket\r\n");
		xil_printf("http header = %s\n\r", buf);
		return -1;
	}

	lwip_write(sd, notfound_header, strlen(notfound_header));
	lwip_write(sd, req, rlen);
	lwip_write(sd, notfound_footer, strlen(notfound_footer));

	return 0;
}

int do_http_post(int sd, char *req, int rlen)
{
	int BUFSIZE = 1024;
	char buf[BUFSIZE];
	int len = 0, n;
        char *p;

	if (is_cmd_led(req)) {
                n = toggle_leds();
		len = generate_http_header(buf, "txt", 1);
                p = buf + len;
                *p++ = n?'1':'0';
                *p = 0;
		len++;
		xil_printf("http POST: ledstatus: %x\r\n", n);
	} else if (is_cmd_switch(req)) {
                unsigned s = get_switch_state();
                int n_switches = 8;

                xil_printf("http POST: switch state: %x\r\n", s);
		len = generate_http_header(buf, "txt", n_switches);
                p = buf + len;
                for (n = 0; n < n_switches; n++) {
                        *p++ = '0' + (s & 0x1);
                        s >>= 1;
                }
                *p = 0;

                len += n_switches;
	} else {
		xil_printf("http POST: unsupported command\r\n");
	}

	if (lwip_write(sd, buf, len) != len) {
		if (debug) xil_printf("error writing http POST response to socket\r\n");
		if (debug) xil_printf("http header = %s\r\n", buf);
		return -1;
	}

	return 0;
}

/* respond for a file GET request */
int do_http_get(int sd, char *req, int rlen)
{
	int BUFSIZE = 1400;
	char filename[MAX_FILENAME];
	char buf[BUFSIZE];
	int fsize, hlen, n;
	int fd;
	char *fext;

	/* determine file name */
	extract_file_name(filename, req, rlen, MAX_FILENAME);

	/* respond with 404 if not present */
	if (mfs_exists_file(filename) == 0) {
		if (debug) xil_printf("requested file %s not found, returning 404\r\n", filename);
		do_404(sd, req, rlen);
		return -1;
	}

	/* respond with correct file */

	/* debug statement on UART */
        if (debug) xil_printf("http GET: %s\r\n", filename);

	/* get a pointer to file extension */
	fext = get_file_extension(filename);

	fd = mfs_file_open(filename, MFS_MODE_READ);

	/* obtain file size,
	 * note that lseek with offset 0, MFS_SEEK_END does not move file pointer */
	fsize = mfs_file_lseek(fd, 0, MFS_SEEK_END);

	/* write the http headers */
	hlen = generate_http_header(buf, fext, fsize);
	if (lwip_write(sd, buf, hlen) != hlen) {
		if (debug) xil_printf("error writing http header to socket\r\n");
		if (debug) xil_printf("http header = %s\r\n", buf);
		return -1;
	}

	/* now write the file */
	while (fsize) {
		int w;
		n = mfs_file_read(fd, buf, BUFSIZE);

		if ((w = lwip_write(sd, buf, n)) != n) {
			if (debug) xil_printf("error writing file (%s) to socket, remaining unwritten bytes = %d\r\n", filename, fsize - n);
			if (debug) xil_printf("attempted to lwip_write %d bytes, actual bytes written = %d\r\n", n, w);
			break;
		}

		fsize -= n;
	}

	mfs_file_close(fd);

	return 0;
}

enum http_req_type { HTTP_GET, HTTP_POST, HTTP_UNKNOWN };
enum http_req_type decode_http_request(char *req, int l)
{
	char *get_str = "GET";
	char *post_str = "POST";

	if (!strncmp(req, get_str, strlen(get_str)))
		return HTTP_GET;

	if (!strncmp(req, post_str, strlen(post_str)))
		return HTTP_POST;

	return HTTP_UNKNOWN;
}

/* generate and write out an appropriate response for the http request */
int generate_response(int sd, char *http_req, int http_req_len)
{
	enum http_req_type request_type = decode_http_request(http_req, http_req_len);

	switch(request_type) {
	case HTTP_GET:
		return do_http_get(sd, http_req, http_req_len);
	case HTTP_POST:
		return do_http_post(sd, http_req, http_req_len);
	default:
		return do_404(sd, http_req, http_req_len);
	}
}
