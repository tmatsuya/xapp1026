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
#include "task.h"

/* xilinx includes */
#include "xparameters.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

/* Tasks are not created with a floating point context, but can be given a
floating point context after they have been created.  A variable is stored as
part of the tasks context that holds portNO_FLOATING_POINT_CONTEXT if the task
does not have an FPU context, or any other value if the task does have an FPU
context. */
#define portNO_FLOATING_POINT_CONTEXT	( ( portSTACK_TYPE ) 0 )

/* Constants required to setup the task context. */
/* System mode, ARM mode, interrupts enabled. */
#define portINITIAL_SPSR				( ( portSTACK_TYPE ) 0x1f )
#define portTHUMB_MODE_BIT				( ( portSTACK_TYPE ) 0x20 )
#define portINSTRUCTION_SIZE			( ( portSTACK_TYPE ) 4 )
#define portNO_CRITICAL_SECTION_NESTING	( ( portSTACK_TYPE ) 0 )

#define XSCUTIMER_CLOCK_HZ XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ/2
/*-----------------------------------------------------------*/

/* Saved as part of the task context.  If ulPortTaskHasFPUContext is non-zero then
a floating point context must be saved and restored for the task. */
unsigned long ulPortTaskHasFPUContext = pdFALSE;

/* Setup the timer to generate the tick interrupts. */
static void prvSetupTimerInterrupt( void );

/*
 * The scheduler can only be started from ARM mode, so
 * vPortISRStartFirstSTask() is defined in portISR.c.
 */
extern void vPortISRStartFirstTask( void );

portBASE_TYPE xPortStartScheduler( void );
/*-----------------------------------------------------------*/

/*
 * Initialise the stack of a task to look exactly as if a call to
 * portSAVE_CONTEXT had been called.
 *
 * See header file for description.
 */
portSTACK_TYPE *pxPortInitialiseStack( portSTACK_TYPE *pxTopOfStack,
							 pdTASK_CODE pxCode, void *pvParameters )
{
	portSTACK_TYPE *pxOriginalTOS;

	pxOriginalTOS = pxTopOfStack;

	/* Setup the initial stack of the task.  The stack is set exactly as
	expected by the portRESTORE_CONTEXT() macro. */

	/* First on the stack is the return address - which in this case is the
	start of the task.  The offset is added to make the return address appear
	as it would within an IRQ ISR. */
	*pxTopOfStack = ( portSTACK_TYPE ) pxCode + portINSTRUCTION_SIZE;
	pxTopOfStack--;

	*pxTopOfStack = ( portSTACK_TYPE ) xPortStartScheduler;	/* R14 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) pxOriginalTOS;
								/* Stack used when task starts goes in R13. */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x12121212;	/* R12 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) pxOriginalTOS;	/* R11 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x10101010;	/* R10 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x09090909;	/* R9 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x08080808;	/* R8 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x07070707;	/* R7 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x06060606;	/* R6 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x05050505;	/* R5 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x04040404;	/* R4 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x03030303;	/* R3 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x02020202;	/* R2 */
	pxTopOfStack--;
	*pxTopOfStack = ( portSTACK_TYPE ) 0x01010101;	/* R1 */
	pxTopOfStack--;

	/* When the task starts is will expect to find the function parameter in
	R0. */
	*pxTopOfStack = ( portSTACK_TYPE ) pvParameters; /* R0 */
	pxTopOfStack--;

	/* The last thing onto the stack is the status register, which is set for
	system mode, with interrupts enabled. */
	*pxTopOfStack = ( portSTACK_TYPE ) portINITIAL_SPSR;

	if( ( ( unsigned long ) pxCode & 0x01UL ) != 0x00 )
	{
		/* We want the task to start in thumb mode. */
		*pxTopOfStack |= portTHUMB_MODE_BIT;
	}

	pxTopOfStack--;

	/* Some optimisation levels use the stack differently to others.  This
	means the interrupt flags cannot always be stored on the stack and will
	instead be stored in a variable, which is then saved as part of the
	tasks context. */
	*pxTopOfStack = portNO_CRITICAL_SECTION_NESTING;
	pxTopOfStack--;

	/* The task will start without a floating point context.  A task that uses
	the floating point hardware must call vPortTaskUsesFPU() before executing
	any floating point instructions. */
	*pxTopOfStack = portNO_FLOATING_POINT_CONTEXT;

	return pxTopOfStack;
}

void vPortExitTask( void )
{
	/* Delete the task here as there is nothing to do.
	Passing NULL will delete the current task.*/
	vTaskDelete( NULL );
}

/*-----------------------------------------------------------*/
static int flag = 0;
static XScuGic InterruptController; 	/* Interrupt controller instance */
static XScuTimer Timer;						/* A9 timer counter */


portBASE_TYPE xPortStartScheduler( void )
{

	if (flag == 0) {

		/* Start the timer that generates the tick ISR.
		Interrupts are disabled here already. */
		prvSetupTimerInterrupt();

		vApplicationSetupHardware();

		flag = 1;

		/* Start the first task. */
		vPortISRStartFirstTask();

		/* Should not get here! */
		return 0;

	} else {

		vPortExitTask();

		return 0;
	}
}

/*-----------------------------------------------------------*/
void vPortEndScheduler( void )
{
	/* It is unlikely that the ARM port will require this function as there
	is nothing to return to.  */
}

void vPortTaskUsesFPU( void )
{
	unsigned long ulInitialFPSCR = 0;

	/* A task is registering the fact that it needs an FPU context.  Set the
	FPU flag (which is saved as part of the task context). */
	ulPortTaskHasFPUContext = pdTRUE;
}

/*-----------------------------------------------------------*/
void * prvGetInterruptControllerInstance ()
{
	return &InterruptController;
}

/* Does the provided frame pointer appear valid? */
static int ptr_valid(unsigned *fp)
{
	extern unsigned *_end;

	if (fp > _end) {
		return 0;
	}

	if (fp == 0) {
		return 0;
	}

	if ((unsigned)fp & 3) {
		return 0;
	}

	return 1;
}

/* Exception handler (fatal).
 * Attempt to print out a backtrace.
 */
void FreeRTOS_ExHandler(void *data)
{
    unsigned *fp, lr;
    static int exception_count = 0;
    int offset = (int)data;

    xil_printf("\n\rEXCEPTION, HALTED!\n\r");

    fp = (unsigned*)mfgpr(11); /* get current frame pointer */
    if (! ptr_valid(fp)) {
        goto spin;
    }

    /* Fetch Data Fault Address from CP15 */
    lr = mfcp(XREG_CP15_DATA_FAULT_ADDRESS);
    xil_printf("Data Fault Address: 0x%08x\n\r", lr);

    /* The exception frame is built by DataAbortHandler (for example) in
     * FreeRTOS/Source/portable/GCC/Zynq/port_asm_vectors.s:
     * stmdb   sp!,{r0-r3,r12,lr}
     * and the initial handler function (i.e. DataAbortInterrupt() ) in
     * standalone_bsp/src/arm/vectors.c, which is the standard compiler EABI :
     * push    {fp, lr}
     *
     * The relative position of the frame build in port_asm_vectors.s is assumed,
     * as there is no longer any direct reference to it.  If this file (or vectors.c)
     * are modified this location will need to be updated.
     *
     * r0+r1+r2+r3+r12+lr = 5 registers to get to the initial link register where
     * the exception occurred.
     */
    xil_printf("FP: 0x%08x LR: 0x%08x\n\r", (unsigned)fp, *(fp + 5) - offset);
    xil_printf("R0: 0x%08x R1: 0x%08x\n\r", *(fp + 0), *(fp + 1));
    xil_printf("R2: 0x%08x R3: 0x%08x\n\r", *(fp + 2), *(fp + 3));
    xil_printf("R12: 0x%08x\n\r", *(fp + 4));
spin:
    exception_count++;
    if (exception_count > 1) {
        /* Nested exceptions */
        while (1) {;}
    }

    while (1) {;}
}


void prvInitializeExceptions(void)
{
	Xil_ExceptionInit();

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_UNDEFINED_INT,
	                (Xil_ExceptionHandler)FreeRTOS_ExHandler,
	                (void *)4);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_PREFETCH_ABORT_INT,
	                (Xil_ExceptionHandler)FreeRTOS_ExHandler,
	                (void *)4);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_DATA_ABORT_INT,
	                (Xil_ExceptionHandler)FreeRTOS_ExHandler,
	                (void *)8);
}

static void prvSetupInterruptController (void)
{
	int Status;
	XScuGic_Config *IntcConfig; /* The configuration parameters of the
									interrupt controller */
	/*
	 * Initialize the interrupt controller driver
	 */
	IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	if (IntcConfig == NULL) {
		return;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig,
									IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return;
	}

}

/*
 * Setup the A9 internal timer to generate the tick interrupts at the
 * required frequency.
 */
static void prvSetupTimerInterrupt( void )
{
	extern void vTickISR (void);
	int Status;
	XScuTimer_Config *ScuConfig;

	prvSetupInterruptController();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
						(Xil_ExceptionHandler)XScuGic_InterruptHandler,
						&InterruptController);

	/*
	 * Connect to the interrupt controller
	 */
	Status = XScuGic_Connect(&InterruptController, XPAR_SCUTIMER_INTR,
						(Xil_ExceptionHandler)vTickISR, (void *)&Timer);
	if (Status != XST_SUCCESS) {
		return;
	}

	/* Timer Setup */

	/*
	 * Initialize the A9Timer driver.
	 */
	ScuConfig = XScuTimer_LookupConfig(XPAR_SCUTIMER_DEVICE_ID);

	Status = XScuTimer_CfgInitialize(&Timer, ScuConfig,
									ScuConfig->BaseAddr);
	if (Status != XST_SUCCESS) {
		return;
	}

	/*
	 * Enable Auto reload mode.
	 */
	XScuTimer_EnableAutoReload(&Timer);

	/*
	 * Load the timer counter register.
	 */
	XScuTimer_LoadTimer(&Timer, XSCUTIMER_CLOCK_HZ / configTICK_RATE_HZ);

	/*
	 * Start the timer counter and then wait for it
	 * to timeout a number of times.
	 */
	XScuTimer_Start(&Timer);

	/*
	 * Enable the interrupt for the Timer in the interrupt controller
	 */
	XScuGic_Enable(&InterruptController, XPAR_SCUTIMER_INTR);

	/*
	 * Enable the timer interrupts for timer mode.
	 */
	XScuTimer_EnableInterrupt(&Timer);

	/*
	 * Do NOT enable interrupts in the ARM processor here.
	 * This happens when the scheduler is started.
	 */
}


