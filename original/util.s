	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"util.c"
	.text
	.align	2
	.global	store8
	.thumb
	.thumb_func
	.type	store8, %function
store8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	lsr	ip, r2, #8
	lsrs	r7, r2, #16
	lsrs	r6, r2, #24
	lsrs	r5, r3, #8
	lsrs	r4, r3, #16
	lsrs	r1, r3, #24
	strb	r7, [r0, #2]
	strb	r6, [r0, #3]
	strb	r5, [r0, #5]
	strb	r4, [r0, #6]
	strb	r2, [r0]
	strb	r3, [r0, #4]
	strb	ip, [r0, #1]
	strb	r1, [r0, #7]
	pop	{r4, r5, r6, r7}
	bx	lr
	.size	store8, .-store8
	.align	2
	.global	load8
	.thumb
	.thumb_func
	.type	load8, %function
load8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	ldrb	r4, [r0, #7]	@ zero_extendqisi2
	movs	r5, #0
	lsrs	r3, r4, #24
	lsls	r2, r4, #8
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r5, #0
	ldrb	r4, [r0, #5]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r5, #0
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r5, #0
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r5, #0
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r5, #0
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	r0, [r0]	@ zero_extendqisi2
	orrs	r5, r5, r3
	orrs	r4, r4, r2
	lsls	r3, r5, #8
	orr	r3, r3, r4, lsr #24
	lsls	r2, r4, #8
	movs	r1, #0
	orrs	r0, r0, r2
	orrs	r1, r1, r3
	pop	{r4, r5}
	bx	lr
	.size	load8, .-load8
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
