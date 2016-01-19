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

proc swapp_get_name {} {
    return "FreeRTOS Blink AXI GPIO LED Mutex";
}

proc swapp_get_description {} {
    return "Blink LED using FreeRTOS mutex";
}

proc check_os {} {
    set oslist [get_os];

    if { [llength $oslist] != 1 } {
        return 0;
    }
    set os [lindex $oslist 0];

    if { $os != "freertos_zynq" } {
        error "This application is supported only on FreeRTOS based Board Support Packages.";
    }
}

proc get_stdout {} {
    set os [get_os]
    if { $os == "" } {
        error "No Operating System specified in the Board Support Package.";
    }
    set stdout [get_property CONFIG.STDOUT $os];
    return $stdout;
}

proc check_stdout_hw {} {
	set slaves [get_property SLAVES [get_cells [get_sw_processor]]]
	foreach slave $slaves {
		set slave_type [get_property IP_NAME [get_cells $slave]];
		# Check for MDM-Uart peripheral. The MDM would be listed as a peripheral
		# only if it has a UART interface. So no further check is required
		if { $slave_type == "ps7_uart" || $slave_type == "axi_uartlite" ||
			 $slave_type == "axi_uart16550" || $slave_type == "iomodule" ||
			 $slave_type == "mdm" } {
			return;
		}
	}

	error "This application requires a Uart IP in the hardware."

}

proc check_stdout_sw {} {
    set stdout [get_stdout];
    if { $stdout == "none" } {
        error "The STDOUT parameter is not set on the OS. This demo requires STDOUT to be set."
    }
}

proc swapp_is_supported_hw {} {
    set proc [get_sw_processor];
    set proc_type [string match "ps7_cortexa9_0" $proc];

    if { ($proc_type != 1) } { 
	error "This application is supported only for Zynq processor";
	#error $proc;
    }

    # check for uart peripheral
    check_stdout_hw;

    if { $proc_type == 1} {
        # make sure there is a timer (if this is a MB)
        set timerlist [get_cells -filter {ip_name == "xps_timer"}];
        if { [llength $timerlist] <= 0 } {
            set timerlist [get_cells -filter {ip_name == "axi_timer"}];
            if { [llength $timerlist] <= 0 } {
                error "There seems to be no timer peripheral in the hardware. Xilkernel requires a timer for operation.";
            }
        }
    }

    return 1;
}

proc swapp_is_supported_sw {} {

    # make sure we are using the FreeRTOS OS
    check_os;
    check_stdout_sw;

    return 1;
}

# depending on the type of os (standalone|xilkernel), choose
# the correct source files
proc swapp_generate {} {

    # cleanup this file for writing
    set fid [open "platform_config.h" "w+"];
    puts $fid "#ifndef __PLATFORM_CONFIG_H_";
    puts $fid "#define __PLATFORM_CONFIG_H_\n";

    # if we have a uart16550 as stdout, then generate some config for that
    generate_stdout_config $fid;

    puts $fid "";
    puts $fid "#endif";
    close $fid;
}

proc generate_stdout_config { fid } {
    set stdout [get_stdout];

    # if stdout is uartlite, we don't have to generate anything
    set stdout_type [get_property IP_NAME [get_cells $stdout]];

    if { [regexp -nocase "uartlite" $stdout_type] || [string match -nocase "mdm" $stdout_type] } {
        puts $fid "#define STDOUT_IS_UARTLITE";
    } elseif { [regexp -nocase "uart16550" $stdout_type] } {
	# mention that we have a 16550
        puts $fid "#define STDOUT_IS_16550";

        # and note down its base address
	set prefix "XPAR_";
	set postfix "_BASEADDR";
	set stdout_baseaddr_macro $prefix$stdout$postfix;
	set stdout_baseaddr_macro [string toupper $stdout_baseaddr_macro];
	puts $fid "#define STDOUT_BASEADDR $stdout_baseaddr_macro";
    } elseif { [regexp -nocase "ps7_uart" $stdout_type] } {
	# mention that we have a ps7_uart
        puts $fid "#define STDOUT_IS_PS7_UART";
        
        # and get it device id
        set p7_uarts [lsort [get_cells -filter { ip_name == "ps7_uart"} ]];
        set id 0
        foreach uart $p7_uarts {
            if {[string compare -nocase $uart $stdout] == 0} {
		puts $fid "#define UART_DEVICE_ID $id"
		break;
	    }
	    incr id
	}
    }

}
