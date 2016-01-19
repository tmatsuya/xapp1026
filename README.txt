*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2014 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 5.1
Date Last Modified: 26Nov2014
Date Created: 11Nov2014

Associated Filename: XAPP1026.zip
Associated Document: XAPP1026 LightWeight IP (LWIP) Application Example

Supported Device(s): Xilinx Zynq ZC702, Artix AC701 and Kintex KC705
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

            Readme  
			
Date        Version      Revision Description
=========================================================================
28OCT2012	3.2			 XAPP1026 Appnote with XPS flow
14AUG2014	4.0			 XAPP1026 Appnote with Vivado & SDK 2014.2 for Zynq
26SEPT2014  5.0			 XAPP1026 Appnote with Vivado & SDK 2014.3 for Xilinx Kintex KC705,Artix AC701 and Zynq-ZC702.
26Nov2014   5.1          XAPP1026 Appnote with Vivado & SDK 2014.3 for Xilinx Kintex KC705 ethernetlite,Axiethernet on KC705,AC701 and Zynq-ZC702.
=========================================================================


2. OVERVIEW

This readme describes how to use the files which are comes with XAPP1026 v4.0.
The package release with XAPP1026 V4.0 has the Zynq_GigE,Kc705_AxiEth_32kb_cache,
 and Kc705_AxiEth_64kb_cache,AC701_AxiEth_32kb_cache, and AC701_AxiEth_64kb_cache folders.
Each folder contains hardware ,software design files and 
also it has ready_for_download folder which contains the all executables for ready to execute the project.

3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

Tools requirements:Xilinx Vivado & SDK 2014.3 
hardware requirements: Xilinx ZC702,Kintex KC705,Artix AC701 devices,UART,JTAG & Ethernet cable

4. DESIGN FILE HIERARCHY

Each folder has following directories

	\14.3
		It contains older design files created in XPS flow and it is provided for reference
		This folder in outside of design files.
		
	\hw
		This directory contains hardware designs.
	\sw
		This directory has raw_apps and socket_apps.
		Each app includes echo server,web server,tftp.
		it also has TCP/IP throughput measurement using iperf.
	\repo
		This directory has freertos_zynq for socket_apps and LWIP 1.4.1 TCP/IP stack.
		And for microblaze system repo folder has LWIP 1.4.1 TCP/IP stack.
		
	\ready_for_download
	
		Ths directory has executable files for ready to test.
		
5. INSTALLATION AND OPERATING INSTRUCTIONS 

1) Install the Xilinx Vivado 2014.3 or later tools.
2) Install the Xilinx SDK 2014.3 or later tools.
3) Install the Xilinx ISE14.3 for the ML605 and SP605 devices

6. OTHER INFORMATION (OPTIONAL) 

  Warnings:
      ERROR: [Hsm 55-1676] Not supported OS. It is supported only for freertos_zynq
	This error showed in SDK log file it just like a warning due to the use of freertos_zynq.
	you can ignore it 
	
7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database.  