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

/* Scheduler includes. */
#include "FreeRTOS.h"

/* Xilinx includes */
#include "xparameters.h"
#include "xstatus.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"
#include "xscutimer.h"
#include "xscugic.h"


/* Constants required to handle critical sections. */
#define portNO_CRITICAL_NESTING		( ( unsigned long ) 0 )
volatile unsigned long ulCriticalNesting = 9999UL;

/*-----------------------------------------------------------*/

/* ISR to handle manual context switches (from a call to taskYIELD()). */
void vPortYieldProcessor( void ) __attribute__((interrupt("SWI"), naked));


/*
 * The scheduler can only be started from ARM mode, hence the inclusion of
 * this function here.
 */
void vPortISRStartFirstTask( void );
/*-----------------------------------------------------------*/

void vPortISRStartFirstTask( void )
{

	/* Change from System to Supervisor mode.
	 * portRESTORE_CONTEXT sets the desired CPSR by modifying SPSR, which
	 * requires that the processor be in an Exception mode to actually
	 * do anything by leaving that mode.
	 */
	__asm volatile (
		"LDR    R0, =0x1D3       \n\t"
		"MSR    CPSR, R0         \n\t"
		:::"r0" \
	);

	/* Simply start the scheduler.  This is included here as it can only be
	called from ARM mode. */
	portRESTORE_CONTEXT();
}
/*-----------------------------------------------------------*/

/*
 * Called by portYIELD() or taskYIELD() to manually force a context switch.
 *
 * When a context switch is performed from the task level the saved task
 * context is made to look as if it occurred from within the tick ISR.  This
 * way the same restore context function can be used when restoring the context
 * saved from the ISR or that saved from a call to vPortYieldProcessor.
 */
void vPortYieldProcessor( void )
{

	/* Within an IRQ ISR the link register has an offset from the true return
	address, but an SWI ISR does not.  Add the offset manually so the same
	ISR return code can be used in both cases. */
	__asm volatile ( "ADD		LR, LR, #4" );

	/* Perform the context switch. First save the context of the current
	task.*/
	portSAVE_CONTEXT();

	/* Find the highest priority task that is ready to run. */
	vTaskSwitchContext();

	__asm volatile( "clrex" );

	/* Restore the context of the new task. */
	portRESTORE_CONTEXT();
}

/*
 * The ISR used for the scheduler tick.
 */
void vTickISR( XScuTimer *Timer )
{
	/* Increment the RTOS tick count, then look for the highest priority
	task that is ready to run. */
	vTaskIncrementTick();

	#if configUSE_PREEMPTION == 1
		vTaskSwitchContext();
	#endif

	XScuTimer_ClearInterruptStatus(Timer);
}

/*
 * FreeRTOS bottom-level IRQ vector handler
 */
void vFreeRTOS_IRQInterrupt ( void ) __attribute__((naked));
void vFreeRTOS_IRQInterrupt ( void )
{
	/* Save the context of the interrupted task. */
	portSAVE_CONTEXT();

	ulCriticalNesting++;

	__asm volatile( "clrex" );

	/* Call the handler provided with the standalone BSP */
	__asm volatile( "bl IRQInterrupt" );

	ulCriticalNesting--;

	/* Restore the context of the new task. */
	portRESTORE_CONTEXT();
}


/* The code generated by the GCC compiler uses the stack in different ways at
different optimisation levels.  The interrupt flags can therefore not always
be saved to the stack.  Instead the critical section nesting level is stored
in a variable, which is then saved as part of the stack context. */
void vPortEnterCritical( void )
{
	/* Disable interrupts as per portDISABLE_INTERRUPTS(); 					*/
	__asm volatile (
		"STMDB	SP!, {R0}			\n\t"	/* Push R0.						*/
		"MRS	R0, CPSR			\n\t"	/* Get CPSR.					*/
		"ORR	R0, R0, #0xC0		\n\t"	/* Disable IRQ, FIQ.			*/
		"MSR	CPSR, R0			\n\t"	/* Write back modified value.	*/
		"LDMIA	SP!, {R0}" );				/* Pop R0.						*/

	/* Now interrupts are disabled ulCriticalNesting can be accessed
	directly.  Increment ulCriticalNesting to keep a count of how many times
	portENTER_CRITICAL() has been called. */
	ulCriticalNesting++;
}

void vPortExitCritical( void )
{
	if( ulCriticalNesting > portNO_CRITICAL_NESTING )
	{
		/* Decrement the nesting count as we are leaving a critical section. */
		ulCriticalNesting--;

		/* If the nesting level has reached zero then interrupts should be
		re-enabled. */
		if( ulCriticalNesting == portNO_CRITICAL_NESTING )
		{
			/* Enable interrupts as per portEXIT_CRITICAL().				*/
			__asm volatile (
				"STMDB	SP!, {R0}		\n\t"	/* Push R0.					*/
				"MRS	R0, CPSR		\n\t"	/* Get CPSR.				*/
				"BIC	R0, R0, #0xC0	\n\t"	/* Enable IRQ, FIQ.			*/
				"MSR	CPSR, R0		\n\t"	/* Write back modified value.*/
				"LDMIA	SP!, {R0}" );			/* Pop R0.					*/
		}
	}
}
