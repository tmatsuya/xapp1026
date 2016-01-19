#
# Copyright (C) 2012 Xilinx, Inc.
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


# standalone bsp version. set this to the latest "ACTIVE" version.
#set standalone_version standalone_v3_10_a
set standalone_version standalone_v4_1

proc FreeRTOS_drc {os_handle} {

    global env

    set sw_proc_handle [get_sw_processor]
    set hw_proc_handle [get_cells [get_property HW_INSTANCE $sw_proc_handle] ]
    set proctype [get_property IP_NAME $hw_proc_handle]
    set procname [get_property NAME    $hw_proc_handle]

}

proc generate {os_handle} {

    variable standalone_version

    set sw_proc_handle [get_sw_processor]
    set hw_proc_handle [get_cells [get_property HW_INSTANCE $sw_proc_handle] ]
    set proctype [get_property IP_NAME $hw_proc_handle]
    set procname [get_property NAME    $hw_proc_handle]
    
    set enable_sw_profile [get_property CONFIG.enable_sw_intrusive_profiling $os_handle]
    set need_config_file "false"

	# proctype should be "microblaze" or "ppc405" or "ppc405_virtex4" or "ppc440" or ps7_cortexa9
    set armsrcdir "../${standalone_version}/src/cortexa9"
    set armccdir "../${standalone_version}/src/cortexa9/armcc"
    set ccdir "../${standalone_version}/src/cortexa9/gcc"
	set commonsrcdir "../${standalone_version}/src/common"
    set mbsrcdir "../${standalone_version}/src/microblaze"
    set ppcsrcdir "../${standalone_version}/src/ppc405"
    set ppc440srcdir "../${standalone_version}/src/ppc440"

	foreach entry [glob -nocomplain [file join $commonsrcdir *]] {
		file copy -force $entry [file join ".." "${standalone_version}" "src"]
	}
	
	# proctype should be "ps7_cortexa9"
	switch $proctype {
	
	"ps7_cortexa9"  {
		foreach entry [glob -nocomplain [file join $armsrcdir *]] {
			file copy -force $entry [file join ".." "${standalone_version}" "src"]
		}
		
		foreach entry [glob -nocomplain [file join $ccdir *]] {
					file copy -force $entry [file join ".." "${standalone_version}" "src"]
		}
		
		file delete -force "../${standalone_version}/src/asm_vectors.S"
		file delete -force "../${standalone_version}/src/armcc"
        file delete -force "../${standalone_version}/src/gcc"
            
		set need_config_file "true"
		
		set file_handle [xopen_include_file "xparameters.h"]
		puts $file_handle "#include \"xparameters_ps.h\""
		puts $file_handle ""
		close $file_handle
		}
		"default" {puts "processor type $proctype not supported\n"}
	}
	
	# Write the Config.make file
	set makeconfig [open "../${standalone_version}/src/config.make" w]
	
	if { $proctype == "ps7_cortexa9" } {
	    puts $makeconfig "LIBSOURCES = *.c *.s *.S"
	    puts $makeconfig "LIBS = standalone_libs"
	}
	
	close $makeconfig

	# Remove arm directory...
	file delete -force $armsrcdir

	# copy required files to the main src directory
	file copy -force [file join src Source tasks.c] ./src
	file copy -force [file join src Source queue.c] ./src
	file copy -force [file join src Source list.c] ./src
	file copy -force [file join src Source timers.c] ./src
	file copy -force [file join src Source croutine.c] ./src
	file copy -force [file join src Source portable MemMang heap_3.c] ./src
	file copy -force [file join src Source portable GCC Zynq port.c] ./src
	file copy -force [file join src Source portable GCC Zynq portISR.c] ./src
	file copy -force [file join src Source portable GCC Zynq port_asm_vectors.s] ./src
	file copy -force [file join src Source portable GCC Zynq portmacro.h] ./src
	
	set headers [glob -join ./src/Source/include *.\[h\]]
	foreach header $headers {
		file copy -force $header src
	}
	
	file delete -force [file join src Source]
	file delete -force [file join src Source]
	
	# Remove microblaze, ppc405, ppc440, cortexa9 and common directories...
	file delete -force $mbsrcdir
	file delete -force $ppcsrcdir
	file delete -force $ppc440srcdir
	file delete -force $armsrcdir
	file delete -force $ccdir
    file delete -force $commonsrcdir
    file delete -force $armccdir

	# Handle stdin and stdout
	handle_stdin $os_handle
	handle_stdout $os_handle

    set config_file [xopen_new_include_file "./src/FreeRTOSConfig.h" "FreeRTOS Configuration parameters"]
    puts $config_file "\#include \"xparameters.h\" \n"

    set val [get_property CONFIG.use_preemption $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_preemption"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_PREEMPTION" "0"
    } else {
        xput_define $config_file "configUSE_PREEMPTION" "1"
    }

    set val [get_property CONFIG.use_mutexes $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_mutexes"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_MUTEXES" "0"
    } else {
        xput_define $config_file "configUSE_MUTEXES" "1"
    }
    
    set val [get_property CONFIG.use_recursive_mutexes $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_recursive_mutexes"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_RECURSIVE_MUTEXES" "0"
    } else {
        xput_define $config_file "configUSE_RECURSIVE_MUTEXES" "1"
    }

    set val [get_property CONFIG.use_counting_semaphores $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_counting_semaphores"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_COUNTING_SEMAPHORES" "0"
    } else {
        xput_define $config_file "configUSE_COUNTING_SEMAPHORES" "1"
    }

    set val [get_property CONFIG.use_timers $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_timers"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_TIMERS" "0"
    } else {
        xput_define $config_file "configUSE_TIMERS" "1"
    }

    set val [get_property CONFIG.use_idle_hook $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_idle_hook"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_IDLE_HOOK"    "0"
    } else {
        xput_define $config_file "configUSE_IDLE_HOOK"    "1"
    }

    set val [get_property CONFIG.use_tick_hook $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_tick_hook"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_TICK_HOOK"    "0"
    } else {
        xput_define $config_file "configUSE_TICK_HOOK"    "1"
    }

    set val [get_property CONFIG.use_malloc_failed_hook $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_malloc_failed_hook"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_MALLOC_FAILED_HOOK"    "0"
    } else {
        xput_define $config_file "configUSE_MALLOC_FAILED_HOOK"    "1"
    }

    set val [get_property CONFIG.use_trace_facility $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "use_trace_facility"]
    if {$val == "false"} {
        xput_define $config_file "configUSE_TRACE_FACILITY" "0"
    } else {
        xput_define $config_file "configUSE_TRACE_FACILITY" "1"
    }

    xput_define $config_file "configUSE_16_BIT_TICKS"   "0"
    xput_define $config_file "configUSE_APPLICATION_TASK_TAG"   "0"
    xput_define $config_file "configUSE_CO_ROUTINES"    "0"

    set tick_rate [get_property CONFIG.tick_rate $os_handle]
    #set tick_rate [xget_value $os_handle "PARAMETER" "tick_rate"]
    xput_define $config_file "configTICK_RATE_HZ"     "( ( portTickType ) ($tick_rate) )"
    
    set max_priorities [get_property CONFIG.max_priorities  $os_handle]
    #set max_priorities [xget_value $os_handle "PARAMETER" "max_priorities"]
    xput_define $config_file "configMAX_PRIORITIES"   "( ( unsigned portBASE_TYPE ) $max_priorities)"
    xput_define $config_file "configMAX_CO_ROUTINE_PRIORITIES" "2"
    
    set min_stack [get_property CONFIG.minimal_stack_size  $os_handle]
    #set min_stack [xget_value $os_handle "PARAMETER" "minimal_stack_size"]
    set min_stack [expr [expr $min_stack + 3] & 0xFFFFFFFC]
    xput_define $config_file "configMINIMAL_STACK_SIZE" "( ( unsigned short ) $min_stack)"

    set total_heap_size [get_property CONFIG.total_heap_size  $os_handle]
    #set total_heap_size [xget_value $os_handle "PARAMETER" "total_heap_size"]
    set total_heap_size [expr [expr $total_heap_size + 3] & 0xFFFFFFFC]
    xput_define $config_file "configTOTAL_HEAP_SIZE"  "( ( size_t ) ( $total_heap_size ) )"

    set max_task_name_len [get_property CONFIG.max_task_name_len  $os_handle]
    #set max_task_name_len [xget_value $os_handle "PARAMETER" "max_task_name_len"]
    xput_define $config_file "configMAX_TASK_NAME_LEN"  $max_task_name_len
    
    set val [get_property CONFIG.idle_yield  $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "idle_yield"]
    if {$val == "false"} {
        xput_define $config_file "configIDLE_SHOULD_YIELD"  "0"
    } else {
        xput_define $config_file "configIDLE_SHOULD_YIELD"  "1"
    }
    
    set val [get_property CONFIG.timer_task_priority  $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "timer_task_priority"]
	if {$val == "false"} {
		xput_define $config_file "configTIMER_TASK_PRIORITY"  "0"
	} else {
		xput_define $config_file "configTIMER_TASK_PRIORITY"  "1"
	}

    set val [get_property CONFIG.timer_command_queue_length  $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "timer_command_queue_length"]
	if {$val == "false"} {
		xput_define $config_file "configTIMER_QUEUE_LENGTH"  "0"
	} else {
		xput_define $config_file "configTIMER_QUEUE_LENGTH"  "10"
	}

    set val [get_property CONFIG.timer_task_stack_depth  $os_handle]
    #set val [xget_value $os_handle "PARAMETER" "timer_task_stack_depth"]
	if {$val == "false"} {
		xput_define $config_file "configTIMER_TASK_STACK_DEPTH"  "0"
	} else {
		xput_define $config_file "configTIMER_TASK_STACK_DEPTH"  $min_stack
	}
		
    xput_define $config_file "INCLUDE_vTaskCleanUpResources" "0"
    xput_define $config_file "INCLUDE_vTaskDelay"        "1"
    xput_define $config_file "INCLUDE_vTaskDelayUntil"   "1"
    xput_define $config_file "INCLUDE_vTaskDelete"       "1"
    xput_define $config_file "INCLUDE_uxTaskPriorityGet" "1"
    xput_define $config_file "INCLUDE_vTaskPrioritySet"  "1"
    xput_define $config_file "INCLUDE_vTaskSuspend"      "1"


    # complete the header protectors
    puts $config_file "\#endif"
    close $config_file
}

proc xopen_new_include_file { filename description } {
    set inc_file [open $filename w]
    xprint_generated_header $inc_file $description
    set newfname [string map {. _} [lindex [split $filename {\/}] end]]
    puts $inc_file "\#ifndef _[string toupper $newfname]"
    puts $inc_file "\#define _[string toupper $newfname]\n\n"
    return $inc_file
}

proc xput_define { config_file parameter param_value } {
    puts $config_file "#define $parameter $param_value\n"
}
