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

#define __ARM_NEON__ 1

.org 0
.text

.globl _boot

.globl _vector_table
.globl FIQInterrupt
.globl vFreeRTOS_IRQInterrupt
.globl vPortYieldProcessor
.globl DataAbortInterrupt
.globl PrefetchAbortInterrupt
.globl IRQHandler

.section .vectors,"ax"
	.code 32
_vector_table:
	B	  _boot
	B	  Undefined
	ldr   pc, _swi
	B	  PrefetchAbortHandler
	B	  DataAbortHandler
	NOP	  /* Placeholder for address exception vector*/
	ldr   pc, _irq
	B	  FIQHandler

_irq:   .word vFreeRTOS_IRQInterrupt
_swi:   .word vPortYieldProcessor

FIQHandler:						/* FIQ vector handler */
	stmdb	sp!,{r0-r3,r12,lr}	/* state save from compiled code */
#ifdef __ARM_NEON__
	vpush {d0-d7}
	vpush {d16-d31}
	vmrs r1, FPSCR
	push {r1}
	vmrs r1, FPEXC
	push {r1}
#endif

FIQLoop:
	bl	FIQInterrupt			/* FIQ vector */

#ifdef __ARM_NEON__
	pop 	{r1}
	vmsr    FPEXC, r1
	pop 	{r1}
	vmsr    FPSCR, r1
	vpop    {d16-d31}
	vpop    {d0-d7}
#endif	
	ldmia	sp!,{r0-r3,r12,lr}	/* state restore from compiled code */
	subs	pc, lr, #4			/* adjust return */


Undefined:						/* Undefined handler */
	stmdb	sp!,{r0-r3,r12,lr}	/* state save from compiled code */

	ldmia	sp!,{r0-r3,r12,lr}	/* state restore from compiled code */

	b	_prestart

	movs	pc, lr


DataAbortHandler:				/* Data Abort handler */
	stmdb	sp!,{r0-r3,r12,lr}	/* state save from compiled code */

	movs	r11, sp

	bl	DataAbortInterrupt		/*DataAbortInterrupt :call C function here */

	ldmia	sp!,{r0-r3,r12,lr}	/* state restore from compiled code */

	subs	pc, lr, #4			/* adjust return */

PrefetchAbortHandler:			/* Prefetch Abort handler */
	stmdb	sp!,{r0-r3,r12,lr}	/* state save from compiled code */

	bl	PrefetchAbortInterrupt	/* PrefetchAbortInterrupt: call C function here */

	ldmia	sp!,{r0-r3,r12,lr}	/* state restore from compiled code */

	subs	pc, lr, #4			/* adjust return */


.end
