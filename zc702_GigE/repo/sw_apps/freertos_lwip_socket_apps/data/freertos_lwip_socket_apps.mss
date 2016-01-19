#
# Copyright (C) 2012-2013 Xilinx, Inc.
#
# This file is part of the port for FreeRTOS made by Xilinx to allow FreeRTOS
# to operate with Xilinx Zynq devices.
#
# This file is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License (version 2) as published by the
# Free Software Foundation AND MODIFIED BY the FreeRTOS exception 
# (see text further below).
#
# This file is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU General Public License; if not it
# can be viewed here: <http://www.gnu.org/licenses/>
#
# The following exception language was found at 
# http://www.freertos.org/a00114.html on May 8, 2012.
#
# GNU General Public License Exception
#
# Any FreeRTOS source code, whether modified or in its original release form,
# or whether in whole or in part, can only be distributed by you under the
# terms of the GNU General Public License plus this exception. An independent
# module is a module which is not derived from or based on FreeRTOS.
#
# EXCEPTION TEXT:
#
# Clause 1
#
# Linking FreeRTOS statically or dynamically with other modules is making a
# combined work based on FreeRTOS. Thus, the terms and conditions of the
# GNU General Public License cover the whole combination.
#
# As a special exception, the copyright holder of FreeRTOS gives you permission
# to link FreeRTOS with independent modules that communicate with FreeRTOS
# solely through the FreeRTOS API interface, regardless of the license terms
# of these independent modules, and to copy and distribute the resulting
# combined work under terms of your choice, provided that 
#
# Every copy of the combined work is accompanied by a written statement that
# details to the recipient the version of FreeRTOS used and an offer by
# yourself to provide the FreeRTOS source code (including any modifications
# you may have  made) should the recipient request it.
# The combined work is not itself an RTOS, scheduler, kernel or related product.
# The independent modules add significant and primary functionality to FreeRTOS
# and do not merely extend the existing functionality already present 
# in FreeRTOS.
#
# Clause 2
#
# FreeRTOS may not be used for any competitive or comparative purpose,
# including the publication of any form of run time or compile time metric,
# without the express permission of Real Time Engineers Ltd. (this is the norm
# within the industry and is intended to ensure information accuracy).
#


 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = freertos_zynq
 PARAMETER STDIN =  *
 PARAMETER STDOUT = *
END

BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip141
 PARAMETER PROC_INSTANCE = ps7_cortexa9_0
 PARAMETER API_MODE = SOCKET_API
 PARAMETER LWIP_DHCP = true
 PARAMETER N_TX_DESCRIPTORS = 256
 PARAMETER N_RX_DESCRIPTORS = 256
 PARAMETER MEMP_N_PBUF = 2048
 PARAMETER MEMP_N_TCP_SEG = 1024
 PARAMETER PBUF_POOL_SIZE = 4096
 PARAMETER TCP_WND = 65535
 PARAMETER TCP_SND_BUF = 65535
 PARAMETER MEM_SIZE = 1048576
 PARAMETER MEMP_N_TCP_PCB = 1024
 PARAMETER MEMP_N_UDP_PCB = 256
 PARAMETER IP_REASS_MAX_PBUFS = 5760
END

BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilmfs
 PARAMETER PROC_INSTANCE = ps7_cortexa9_0
 PARAMETER NUMBYTES = 0xA00000
 PARAMETER BASE_ADDRESS = 0x7200000
 PARAMETER INIT_TYPE = MFSINIT_IMAGE
 PARAMETER NEED_UTILS = true
END
