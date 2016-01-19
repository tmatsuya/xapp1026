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
#include "semphr.h"
#include "timers.h"
#include "xil_printf.h"

/* App includes. */
#include "xgpio.h"
#include "xgpiops.h"

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_DEVICE_ID	XPAR_LEDS_8BITS_DEVICE_ID

/*
 * Following constant define the Input and Output pins.
 */
#define LED_CHANNEL		1	/* Pin connected to LED/Output */

#define BLINK_PERIOD	100 /* Delay duration before next state transition */

/* Priorities at which the tasks are created. */
#define mainLED_TASK_PRIORITY		( tskIDLE_PRIORITY + 1 )

/* This example toggles the led for each TIMER_PERIOD.
 * Led_Task waits on the semaphore on each iteration, which is
 * signaled from the timer call back, each time the timer expires.
 * Configure timer period by changing the value against the
 * TIMER_PERIOD macro.
 * A safe shutdown function is provided which deletes all the
 * resources in case semaphore take/give fails or timer could not
 * be created.
 */
#define TIMER_PERIOD	100 /* No of ticks before timer expires */
#define TIMER_ID		123 /* Timer ID*/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */
XGpio GpioOutput; /* The driver instance for GPIO Device configured as O/P */
XGpio GpioInput;  /* The driver instance for GPIO Device configured as I/P */

/* Timer handle */
xTimerHandle xTimer;

/* Task handle */
xTaskHandle xTask;

/* Semaphore handle */
xSemaphoreHandle xSemaphore_led = NULL;

/*-----------------------------------------------------------*/
static void prvLed_Task( void *pvParameters );
void prvSetGpioHardware(void);
void prvShutdown(void);

/* Define timer callback function */
void vTimerCallback( xTimerHandle pxTimer )
{
	if ( xSemaphoreGive( xSemaphore_led ) != pdTRUE )
	{
		xil_printf("xSemaphore_led give fail\r\n");
		prvShutdown();
	}
}

int main( void )
{
	 prvInitializeExceptions();

	 /* Create Binary Semaphore */
	 vSemaphoreCreateBinary(xSemaphore_led);
	 configASSERT( xSemaphore_led );

	 /* Setup the GPIO Hardware. */
	 prvSetGpioHardware();

	 /* Create the task */
     xTaskCreate( prvLed_Task, ( signed char * ) "LED_TASK",
     			configMINIMAL_STACK_SIZE, NULL,
    			mainLED_TASK_PRIORITY, &xTask );


	 /* Create timer.  Starting the timer before the scheduler
     has been started means the timer will start running immediately that
     the scheduler starts. */
     xTimer = xTimerCreate ( (const signed char *) "LedTimer",
        		 	 	 	 	 	   TIMER_PERIOD,
        		 	 	 	 	 	   pdTRUE, /* auto-reload when expires */
        		 	 	 	 	 	   (void *) TIMER_ID, /* unique id */
        		 	 	 	 	 	   vTimerCallback	/* Callback */
                           );

     if ( xTimer == NULL ) {
		 /* The timer was not created. */
		 xil_printf("Failed to create timer\n\r");
		 prvShutdown();
		 return 0;
	 } else {
		 /* Start the timer */
		 xTimerStart( xTimer, 0 );
	 }

     /* Starting the scheduler will start the timers running as it is already
     been set into the active state. */
     vTaskStartScheduler();

     /* Should not reach here. */
     for( ;; );
}

/*-----------------------------------------------------------*/
static void prvLed_Task( void *pvParameters )
{
  	unsigned int uiLedFlag = 0;
  	static u32 Data = 1;

	for (;;)
		{
			if ( xSemaphoreTake( xSemaphore_led,
						( portTickType ) portMAX_DELAY ) == pdTRUE )
			{
				uiLedFlag ^= 1;
				if (uiLedFlag == 0) Data<<=1;
				if (Data == 256) Data = 1;
				XGpio_DiscreteWrite(&GpioOutput, LED_CHANNEL, uiLedFlag?Data:0);
			} else {
				xil_printf("xSemaphore_led take fail\r\n");
				/* Call shutdown */
				prvShutdown();
			}
		}
}

/*-----------------------------------------------------------*/
void prvSetGpioHardware(void)
{
	int Status;
	/*
	 * Initialize the GPIO driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	 Status = XGpio_Initialize(&GpioOutput, GPIO_DEVICE_ID);
	 if (Status != XST_SUCCESS)  {
		  return XST_FAILURE;
	 }


	 /*
	  * Set the direction for all signals to be outputs
	  */
	 XGpio_SetDataDirection(&GpioOutput, LED_CHANNEL, 0x0);

	 /*
	  * Set the GPIO outputs to low
	  */
	 XGpio_DiscreteWrite(&GpioOutput, LED_CHANNEL, 0x0);
}

void prvShutdown( void )
{
	 /* Check if timer is created */
	 if (xTimer)
		 xTimerDelete(xTimer, 0);
	 vSemaphoreDelete( xSemaphore_led );
	 vTaskDelete( xTask );
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
