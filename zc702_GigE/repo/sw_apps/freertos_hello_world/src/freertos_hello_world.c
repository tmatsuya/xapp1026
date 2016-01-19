/*
 Copyright (C) 2012-2013 Xilinx, Inc.

 This file is part of the port for FreeRTOS made by Xilinx to allow FreeRTOS
 to operate with Xilinx Zynq devices.

 This file is free software; you can redistribute it and/or modify it under
 the terms of the GNU General Public License (version 2) as published by the
 Free Software Foundation AND MODIFIED BY the FreeRTOS exception
 (see text further below).

 This file is distributed in the hope that it will be useful, but
 WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 more details.

 You should have received a copy of the GNU General Public License; if not it
 can be viewed here: <http://www.gnu.org/licenses/>

 The following exception language was found at
 http://www.freertos.org/a00114.html on May 8, 2012.

 GNU General Public License Exception

 Any FreeRTOS source code, whether modified or in its original release form,
 or whether in whole or in part, can only be distributed by you under the
 terms of the GNU General Public License plus this exception. An independent
 module is a module which is not derived from or based on FreeRTOS.

 EXCEPTION TEXT:

 Clause 1

 Linking FreeRTOS statically or dynamically with other modules is making a
 combined work based on FreeRTOS. Thus, the terms and conditions of the
 GNU General Public License cover the whole combination.

 As a special exception, the copyright holder of FreeRTOS gives you permission
 to link FreeRTOS with independent modules that communicate with FreeRTOS
 solely through the FreeRTOS API interface, regardless of the license terms
 of these independent modules, and to copy and distribute the resulting
 combined work under terms of your choice, provided that

 Every copy of the combined work is accompanied by a written statement that
 details to the recipient the version of FreeRTOS used and an offer by
 yourself to provide the FreeRTOS source code (including any modifications
 you may have  made) should the recipient request it.
 The combined work is not itself an RTOS, scheduler, kernel or related product.
 The independent modules add significant and primary functionality to FreeRTOS
 and do not merely extend the existing functionality already present
 in FreeRTOS.

 Clause 2

 FreeRTOS may not be used for any competitive or comparative purpose,
 including the publication of any form of run time or compile time metric,
 without the express permission of Real Time Engineers Ltd. (this is the norm
 within the industry and is intended to ensure information accuracy).

*/

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "xil_printf.h"

/* Priorities at which the tasks are created. */
#define mainHELLO_WORLD_TASK_PRIORITY		( tskIDLE_PRIORITY + 1 )
#define	mainGOOD_BYE_TASK_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*-----------------------------------------------------------*/
static void prvHelloWorld( void *pvParameters );
static void prvGoodBye( void *pvParameters );

/*
 * This example creates two tasks were each task prints a statement.
 * Each task yields after it prints a message which apppears on
 * console alternatively. Sometimes, due to scheduler algorithm the
 * task might be pre-empted before print could complete.
 */
/*-----------------------------------------------------------*/

int main( void )
{
	prvInitializeExceptions();

	/* Start the two tasks */
	xTaskCreate( prvHelloWorld, ( signed char * ) "HW",
			configMINIMAL_STACK_SIZE, NULL,
			mainHELLO_WORLD_TASK_PRIORITY, NULL );
	xTaskCreate( prvGoodBye, ( signed char * ) "GB",
			configMINIMAL_STACK_SIZE, NULL,
			mainGOOD_BYE_TASK_PRIORITY, NULL );

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}


/*-----------------------------------------------------------*/
static void prvHelloWorld( void *pvParameters )
{
	for( ;; )
	{
		xil_printf("Hello World\r\n");
		taskYIELD();
	}
}

/*-----------------------------------------------------------*/
static void prvGoodBye( void *pvParameters )
{

	for( ;; )
	{
		xil_printf("Good Bye\r\n");
		taskYIELD();
	}
}


/*-----------------------------------------------------------*/
void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue or
	semaphore is created.  It is also called by various parts of the demo
	application.  If heap_1.c or heap_2.c are used, then the size of the heap
	available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

/*-----------------------------------------------------------*/
void vApplicationStackOverflowHook( xTaskHandle *pxTask, signed char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* vApplicationStackOverflowHook() will only be called if
	configCHECK_FOR_STACK_OVERFLOW is set to either 1 or 2.  The handle and name
	of the offending task will be passed into the hook function via its
	parameters.  However, when a stack has overflowed, it is possible that the
	parameters will have been corrupted, in which case the pxCurrentTCB variable
	can be inspected directly. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

void vApplicationSetupHardware( void )
{
	/* Do nothing */
}