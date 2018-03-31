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
	.file	"original.c"
	.text
	.align	2
	.thumb
	.thumb_func
	.type	scaling_inv, %function
scaling_inv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	mov	r4, r1
	mov	r5, r2
	mov	r6, r0
	movs	r7, #0
.L3:
	ldrd	r0, [r5]
	ldrd	r2, [r4]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #8]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #8]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #16]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #16]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #24]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #24]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #32]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #32]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #40]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #40]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #48]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #48]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #56]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #56]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #64]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #64]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #72]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #72]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #80]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #80]
	ldrd	r2, [r4, #88]
	ldrd	r0, [r5], #8
	adds	r7, r7, #1
	ands	r2, r2, r0
	ands	r3, r3, r1
	cmp	r7, #64
	strd	r2, [r6, #88]
	add	r4, r4, #96
	add	r6, r6, #96
	bne	.L3
	pop	{r4, r5, r6, r7}
	bx	lr
	.size	scaling_inv, .-scaling_inv
	.align	2
	.thumb
	.thumb_func
	.type	preprocess, %function
preprocess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r2, #512
	mov	r4, r1
	movs	r1, #0
	mov	r5, r0
	bl	memset
	sub	r7, r5, #8
	movs	r6, #0
.L8:
	adds	r0, r4, r6
	bl	load8
	adds	r6, r6, #8
	cmp	r6, #88
	strd	r0, [r7, #8]!
	bne	.L8
	ldr	r0, [r5, #92]
	ldr	r1, [r5, #88]
	lsls	r3, r0, #8
	orr	r3, r3, r1, lsr #24
	lsls	r2, r1, #8
	strd	r2, [r5, #88]
	movs	r1, #0
	ldrb	r0, [r4, #92]	@ zero_extendqisi2
	orrs	r1, r1, r3
	orrs	r0, r0, r2
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	strd	r2, [r5, #88]
	movs	r1, #0
	ldrb	r0, [r4, #91]	@ zero_extendqisi2
	orrs	r1, r1, r3
	orrs	r0, r0, r2
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	strd	r2, [r5, #88]
	movs	r1, #0
	ldrb	r0, [r4, #90]	@ zero_extendqisi2
	orrs	r1, r1, r3
	orrs	r0, r0, r2
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	strd	r2, [r5, #88]
	movs	r1, #0
	ldrb	r0, [r4, #89]	@ zero_extendqisi2
	orrs	r1, r1, r3
	orrs	r0, r0, r2
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	strd	r2, [r5, #88]
	ldrb	r0, [r4, #88]	@ zero_extendqisi2
	movs	r1, #0
	orrs	r2, r2, r0
	orrs	r3, r3, r1
	strd	r2, [r5, #88]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	preprocess, .-preprocess
	.align	2
	.thumb
	.thumb_func
	.type	send_clock_measurement, %function
send_clock_measurement:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	mov	r3, r1
	sub	sp, sp, #36
	movw	r1, #:lower16:.LC2
	mov	r2, r0
	movt	r1, #:upper16:.LC2
	mov	r0, sp
	bl	sprintf
	mov	r0, sp
	bl	send_USART_str
	add	sp, sp, #36
	@ sp needed
	ldr	pc, [sp], #4
	.size	send_clock_measurement, .-send_clock_measurement
	.align	2
	.thumb
	.thumb_func
	.type	scaling, %function
scaling:
	@ args = 0, pretend = 0, frame = 6336
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #6336
	mov	r6, r0
	mov	r4, r1
	mov	r5, r3
	mov	r8, r2
	sub	r7, sp, #8
	add	r9, sp, #88
.L12:
	mov	r0, r8
	bl	load8
	strd	r0, [r7, #8]!
	cmp	r7, r9
	add	r8, r8, #8
	bne	.L12
	mov	r1, sp
	add	r0, sp, #192
	bl	fft
	add	r8, sp, #6336
	add	r7, sp, #192
.L14:
	mov	r0, r7
	mov	r1, r7
	adds	r7, r7, #96
	bl	vec_sq
	cmp	r7, r8
	bne	.L14
	mov	r0, r4
	add	r1, sp, #192
	bl	vec_copy
	movs	r7, #0
	add	r8, r4, #96
.L16:
	add	r2, sp, #288
	add	r0, r8, r7
	adds	r1, r4, r7
	add	r2, r2, r7
	adds	r7, r7, #96
	bl	vec_mul
	cmp	r7, #6048
	bne	.L16
	add	r8, r4, #6048
	add	r0, sp, #96
	mov	r1, r8
	bl	vec_inv
	add	r10, sp, #6240
	movs	r7, #0
	add	r9, r4, #5952
.L18:
	add	r0, r8, r7
	add	r2, r9, r7
	add	r1, sp, #96
	bl	vec_mul
	add	r0, sp, #96
	add	r2, r10, r7
	mov	r1, r0
	subs	r7, r7, #96
	bl	vec_mul
	cmn	r7, #6048
	bne	.L18
	add	r1, sp, #96
	mov	r0, r4
	bl	vec_copy
	movs	r7, #0
.L20:
	ldrd	r0, [r5]
	ldrd	r2, [r4]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #8]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #8]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #16]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #16]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #24]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #24]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #32]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #32]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #40]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #40]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #48]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #48]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #56]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #56]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #64]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #64]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #72]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #72]
	ldrd	r0, [r5]
	ldrd	r2, [r4, #80]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [r6, #80]
	ldrd	r2, [r4, #88]
	ldrd	r0, [r5], #8
	adds	r7, r7, #1
	ands	r2, r2, r0
	ands	r3, r3, r1
	cmp	r7, #64
	strd	r2, [r6, #88]
	add	r4, r4, #96
	add	r6, r6, #96
	bne	.L20
	add	sp, sp, #6336
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	scaling, .-scaling
	.align	2
	.thumb
	.thumb_func
	.type	weight, %function
weight:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #132
	mov	r4, r0
	movs	r1, #0
	movs	r2, #64
	mov	r8, #0
	mov	r9, #0
	add	r0, sp, #64
	bl	memset
	mov	r5, r9
	sub	lr, r4, #8
	mov	r4, r8
	mov	r2, r4
	mov	r3, r5
	mov	r6, r4
	mov	r7, r5
	mov	r0, r8
	mov	r1, r9
	mov	r10, r4
	mov	fp, r5
	mov	ip, #64
	strd	r2, [sp, #16]
	strd	r6, [sp, #32]
	strd	r10, [sp, #48]
	strd	r2, [sp, #40]
	strd	r6, [sp, #56]
	strd	r0, [sp, #24]
	b	.L24
.L29:
	ldrd	r10, [sp]
	strd	r8, [sp, #32]
	strd	r6, [sp, #48]
	strd	r2, [sp, #40]
.L24:
	ldrd	r2, [lr, #8]!
	and	r6, r10, r2
	and	r7, fp, r3
	eor	r8, r10, r2
	eor	r9, fp, r3
	ldrd	r2, [sp, #24]
	ldrd	r10, [sp, #24]
	and	r0, r6, r4
	and	r1, r7, r5
	ands	r2, r2, r0
	ands	r3, r3, r1
	eor	r10, r10, r0
	eor	fp, fp, r1
	ldrd	r0, [sp, #16]
	strd	r8, [sp]
	ldrd	r8, [sp, #16]
	eors	r0, r0, r2
	eors	r1, r1, r3
	eors	r4, r4, r6
	eors	r5, r5, r7
	strd	r10, [sp, #24]
	ldrd	r6, [sp, #32]
	ldrd	r10, [sp, #32]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r0, [sp, #16]
	ldrd	r2, [sp, #48]
	ldrd	r0, [sp, #48]
	and	r6, r6, r8
	and	r7, r7, r9
	eor	r8, r8, r10
	eor	r9, r9, fp
	ldrd	r10, [sp, #40]
	ands	r2, r2, r6
	ands	r3, r3, r7
	eors	r6, r6, r0
	eors	r7, r7, r1
	ldrd	r0, [sp, #56]
	and	r10, r10, r2
	and	fp, fp, r3
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [sp, #56]
	ldrd	r10, [sp, #40]
	ldrd	r0, [sp]
	eor	r2, r2, r10
	eor	r3, r3, fp
	ldrd	r10, [sp, #24]
	strd	r0, [sp, #64]
	strd	r10, [sp, #80]
	ldrd	r0, [sp, #16]
	ldrd	r10, [sp, #56]
	subs	ip, ip, #1
	strd	r4, [sp, #72]
	strd	r0, [sp, #88]
	strd	r8, [sp, #96]
	strd	r6, [sp, #104]
	strd	r10, [sp, #120]
	strd	r2, [sp, #112]
	bne	.L29
	add	r0, sp, #64
	str	ip, [sp, #12]
	bl	transpose_8x64
	ldr	ip, [sp, #12]
	add	r3, sp, #63
	mov	r0, ip
	add	r1, sp, #127
.L26:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	add	r0, r0, r2
	bne	.L26
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	weight, .-weight
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 60208
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60160
	sub	sp, sp, #60
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	mov	r2, #2048
	addw	r0, sp, #3544
	bl	memcpy
	add	r0, sp, #17280
	ldr	r1, .L49
	mov	r2, #5984
	adds	r0, r0, #88
	bl	memcpy
	bl	clock_setup
	bl	gpio_setup
	mov	r0, #115200
	bl	usart_setup
	movw	r0, #60924
	movt	r0, 57344
	movw	r3, #4100
	ldr	r4, [r0]
	movt	r3, 57344
	mov	r1, #4096
	movs	r2, #0
	orr	r4, r4, #16777216
	movt	r1, 57344
	str	r4, [r0]
	str	r2, [r3]
	ldr	r0, [r1]
	orr	r0, r0, #1
	str	r0, [r1]
	str	r2, [sp, #16]
	str	r2, [sp, #20]
	add	r0, sp, #5664
	add	r5, sp, #17408
	adds	r0, r0, #24
	add	r4, sp, #23296
	ldr	r7, [r3]
	adds	r5, r5, #56
	sub	r6, r0, #104
	adds	r4, r4, #56
.L32:
	mov	r0, r5
	bl	load8
	adds	r5, r5, #8
	cmp	r5, r4
	strd	r0, [r6, #8]!
	bne	.L32
	movw	r5, #4100
	movt	r5, 57344
	movw	r1, #:lower16:.LC3
	ldr	r0, [r5]
	movt	r1, #:upper16:.LC3
	subs	r0, r0, r7
	bl	send_clock_measurement
	add	r0, sp, #1496
	addw	r1, sp, #3544
	ldr	r6, [r5]
	bl	preprocess
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC4
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC4
	bl	send_clock_measurement
	add	r1, sp, #5568
	movs	r2, #1
	add	r0, sp, #1496
	adds	r1, r1, #24
	ldr	r6, [r5]
	bl	benes_compact
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC5
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC5
	bl	send_clock_measurement
	add	r0, sp, #29440
	add	r1, sp, #23296
	add	r2, sp, #17280
	add	r3, sp, #1496
	adds	r2, r2, #88
	adds	r0, r0, #56
	adds	r1, r1, #56
	ldr	r6, [r5]
	bl	scaling
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC6
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC6
	bl	send_clock_measurement
	add	r1, sp, #29440
	add	r0, sp, #216
	adds	r1, r1, #56
	ldr	r6, [r5]
	bl	fft_tr
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC7
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC7
	bl	send_clock_measurement
	ldr	r3, [sp, #340]
	ldr	r7, [sp, #316]
	ldr	lr, [sp, #312]
	ldr	r6, [sp, #324]
	ldr	r0, [r5]
	ldr	r1, [sp, #332]
	lsls	r2, r3, #4
	ldr	r3, [sp, #348]
	lsls	r7, r7, #4
	orr	r7, r7, lr, lsr #28
	lsl	ip, r3, #4
	bic	r3, lr, #-268435456
	orr	r3, r3, r7, lsl #28
	lsrs	r7, r7, #4
	str	r3, [sp, #312]
	str	r7, [sp, #316]
	ldr	r3, [sp, #356]
	ldr	r7, [sp, #320]
	lsls	r6, r6, #4
	orr	r6, r6, r7, lsr #28
	lsl	lr, r3, #4
	bic	r3, r7, #-268435456
	orr	r3, r3, r6, lsl #28
	str	r3, [sp, #320]
	ldr	r3, [sp, #328]
	ldr	r7, [sp, #364]
	lsls	r1, r1, #4
	orr	r1, r1, r3, lsr #28
	bic	r3, r3, #-268435456
	orr	r3, r3, r1, lsl #28
	lsrs	r1, r1, #4
	str	r1, [sp, #332]
	ldr	r1, [sp, #336]
	str	r3, [sp, #328]
	orr	r2, r2, r1, lsr #28
	bic	r1, r1, #-268435456
	orr	r1, r1, r2, lsl #28
	lsrs	r2, r2, #4
	str	r2, [sp, #340]
	ldr	r2, [sp, #344]
	str	r1, [sp, #336]
	orr	ip, ip, r2, lsr #28
	lsr	r1, ip, #4
	str	r1, [sp, #348]
	ldr	r1, [sp, #352]
	ldr	r3, [sp, #372]
	orr	lr, lr, r1, lsr #28
	bic	r2, r2, #-268435456
	bic	r1, r1, #-268435456
	orr	r2, r2, ip, lsl #28
	orr	r1, r1, lr, lsl #28
	str	r2, [sp, #344]
	str	r1, [sp, #352]
	ldr	r2, [sp, #360]
	ldr	r1, [sp, #368]
	lsls	r7, r7, #4
	lsls	r3, r3, #4
	orr	r7, r7, r2, lsr #28
	orr	r3, r3, r1, lsr #28
	bic	r2, r2, #-268435456
	bic	r1, r1, #-268435456
	orr	r2, r2, r7, lsl #28
	orr	r1, r1, r3, lsl #28
	lsrs	r6, r6, #4
	lsr	lr, lr, #4
	lsrs	r7, r7, #4
	str	r6, [sp, #324]
	str	lr, [sp, #356]
	ldr	r6, [sp, #380]
	str	r2, [sp, #360]
	str	r7, [sp, #364]
	ldr	r2, [sp, #376]
	str	r1, [sp, #368]
	ldr	r1, [sp, #388]
	ldr	r7, [sp, #384]
	lsls	r6, r6, #4
	lsls	r1, r1, #4
	orr	r1, r1, r7, lsr #28
	orr	r6, r6, r2, lsr #28
	bic	r7, r7, #-268435456
	bic	r2, r2, #-268435456
	lsr	lr, r1, #4
	orr	r2, r2, r6, lsl #28
	orr	r7, r7, r1, lsl #28
	ldr	r1, [r5]
	str	r2, [sp, #376]
	ldr	r2, [sp, #396]
	str	lr, [sp, #388]
	subs	r0, r1, r0
	lsrs	r3, r3, #4
	ldr	r1, [sp, #392]
	str	r3, [sp, #372]
	lsrs	r6, r6, #4
	ldr	r3, [sp, #404]
	str	r6, [sp, #380]
	lsls	r2, r2, #4
	ldr	r6, [sp, #400]
	str	r7, [sp, #384]
	orr	r2, r2, r1, lsr #28
	bic	r1, r1, #-268435456
	orr	r1, r1, r2, lsl #28
	lsls	r3, r3, #4
	orr	r3, r3, r6, lsr #28
	str	r1, [sp, #392]
	bic	r6, r6, #-268435456
	movw	r1, #:lower16:.LC8
	lsrs	r2, r2, #4
	orr	r6, r6, r3, lsl #28
	movt	r1, #:upper16:.LC8
	lsrs	r3, r3, #4
	str	r2, [sp, #396]
	str	r3, [sp, #404]
	str	r6, [sp, #400]
	bl	send_clock_measurement
	add	r1, sp, #216
	add	r0, sp, #24
	ldr	r6, [r5]
	bl	bm
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC9
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC9
	bl	send_clock_measurement
	add	r0, sp, #35584
	add	r1, sp, #24
	adds	r0, r0, #56
	ldr	r6, [r5]
	bl	fft
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC10
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC10
	bl	send_clock_measurement
	add	r8, sp, #976
	ldr	r6, [r5]
	add	r9, sp, #41728
	add	r5, sp, #35584
	adds	r5, r5, #56
	mov	r7, r8
	add	r9, r9, #56
	b	.L50
.L51:
	.align	2
.L49:
	.word	.LANCHOR0+2048
.L50:
.L34:
	mov	r0, r5
	bl	vec_or
	adds	r5, r5, #96
	mvns	r0, r0
	mvns	r1, r1
	cmp	r5, r9
	strd	r0, [r7, #8]!
	bne	.L34
	movw	r5, #4100
	movt	r5, 57344
	movw	r1, #:lower16:.LC11
	ldr	r0, [r5]
	movt	r1, #:upper16:.LC11
	subs	r0, r0, r6
	bl	send_clock_measurement
	add	r1, sp, #23296
	add	r0, sp, #29440
	add	r2, sp, #984
	adds	r1, r1, #56
	adds	r0, r0, #56
	ldr	r6, [r5]
	bl	scaling_inv
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC12
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC12
	bl	send_clock_measurement
	add	r1, sp, #29440
	adds	r1, r1, #56
	add	r0, sp, #408
	ldr	r6, [r5]
	bl	fft_tr
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC13
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC13
	bl	send_clock_measurement
	ldr	r0, [sp, #508]
	ldr	r10, [sp, #504]
	ldr	r7, [sp, #516]
	ldr	lr, [r5]
	ldr	r6, [sp, #524]
	ldr	r1, [sp, #532]
	ldr	r2, [sp, #540]
	lsl	ip, r0, #4
	ldr	r0, [sp, #548]
	orr	ip, ip, r10, lsr #28
	lsls	r3, r0, #4
	bic	r0, r10, #-268435456
	orr	r0, r0, ip, lsl #28
	lsr	ip, ip, #4
	str	ip, [sp, #508]
	ldr	ip, [sp, #512]
	str	r0, [sp, #504]
	lsls	r7, r7, #4
	orr	r7, r7, ip, lsr #28
	lsr	r10, r7, #4
	bic	ip, ip, #-268435456
	orr	ip, ip, r7, lsl #28
	str	r10, [sp, #516]
	ldr	r7, [sp, #564]
	ldr	r10, [sp, #520]
	str	ip, [sp, #512]
	lsls	r6, r6, #4
	lsl	ip, r7, #4
	orr	r6, r6, r10, lsr #28
	bic	r7, r10, #-268435456
	orr	r7, r7, r6, lsl #28
	lsrs	r6, r6, #4
	str	r6, [sp, #524]
	ldr	r6, [sp, #528]
	ldr	r0, [sp, #556]
	str	r7, [sp, #520]
	lsls	r1, r1, #4
	orr	r1, r1, r6, lsr #28
	bic	r6, r6, #-268435456
	orr	r6, r6, r1, lsl #28
	lsrs	r1, r1, #4
	str	r1, [sp, #532]
	ldr	r1, [sp, #536]
	str	r6, [sp, #528]
	lsls	r2, r2, #4
	orr	r2, r2, r1, lsr #28
	bic	r1, r1, #-268435456
	orr	r1, r1, r2, lsl #28
	lsrs	r2, r2, #4
	ldr	r6, [sp, #544]
	str	r1, [sp, #536]
	str	r2, [sp, #540]
	ldr	r1, [sp, #552]
	ldr	r2, [sp, #560]
	ldr	r7, [sp, #572]
	lsls	r0, r0, #4
	orr	ip, ip, r2, lsr #28
	orr	r3, r3, r6, lsr #28
	orr	r0, r0, r1, lsr #28
	bic	r6, r6, #-268435456
	bic	r1, r1, #-268435456
	bic	r2, r2, #-268435456
	orr	r6, r6, r3, lsl #28
	orr	r1, r1, r0, lsl #28
	orr	r2, r2, ip, lsl #28
	lsrs	r3, r3, #4
	lsrs	r0, r0, #4
	str	r6, [sp, #544]
	str	r3, [sp, #548]
	lsr	r6, ip, #4
	ldr	r3, [sp, #568]
	str	r1, [sp, #552]
	str	r0, [sp, #556]
	str	r2, [sp, #560]
	ldr	r1, [sp, #580]
	str	r6, [sp, #564]
	lsls	r7, r7, #4
	ldr	r6, [sp, #576]
	ldr	r2, [sp, #588]
	ldr	r0, [sp, #584]
	orr	r7, r7, r3, lsr #28
	lsls	r1, r1, #4
	bic	r3, r3, #-268435456
	orr	r3, r3, r7, lsl #28
	orr	r1, r1, r6, lsr #28
	bic	r6, r6, #-268435456
	orr	r6, r6, r1, lsl #28
	str	r3, [sp, #568]
	lsls	r2, r2, #4
	ldr	r3, [sp, #596]
	orr	r2, r2, r0, lsr #28
	bic	ip, r0, #-268435456
	ldr	r0, [r5]
	str	r6, [sp, #576]
	ldr	r6, [sp, #592]
	lsrs	r1, r1, #4
	lsls	r3, r3, #4
	orr	r3, r3, r6, lsr #28
	str	r1, [sp, #580]
	bic	r6, r6, #-268435456
	movw	r1, #:lower16:.LC14
	orr	ip, ip, r2, lsl #28
	rsb	r0, lr, r0
	lsrs	r2, r2, #4
	orr	r6, r6, r3, lsl #28
	lsrs	r7, r7, #4
	lsrs	r3, r3, #4
	movt	r1, #:upper16:.LC14
	str	ip, [sp, #584]
	str	r2, [sp, #588]
	str	r7, [sp, #572]
	str	r6, [sp, #592]
	str	r3, [sp, #596]
	bl	send_clock_measurement
	ldr	r3, [r5]
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC15
	subs	r0, r0, r3
	movt	r1, #:upper16:.LC15
	bl	send_clock_measurement
	add	r1, sp, #5568
	adds	r1, r1, #24
	add	r0, sp, #984
	movs	r2, #0
	ldr	r6, [r5]
	bl	benes_compact
	ldr	r0, [r5]
	movw	r1, #:lower16:.LC5
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC5
	bl	send_clock_measurement
	add	r7, sp, #1488
	ldr	r6, [r5]
	addw	r5, sp, #3032
.L36:
	ldrd	r2, [r8, #8]!
	mov	r0, r5
	bl	store8
	cmp	r8, r7
	add	r5, r5, #8
	bne	.L36
	movw	r7, #4100
	movt	r7, 57344
	movw	r1, #:lower16:.LC16
	ldr	r0, [r7]
	movt	r1, #:upper16:.LC16
	subs	r0, r0, r6
	bl	send_clock_measurement
	add	r0, sp, #984
	ldr	r6, [r7]
	bl	weight
	ldr	r0, [r7]
	movw	r1, #:lower16:.LC17
	subs	r0, r0, r6
	movt	r1, #:upper16:.LC17
	bl	send_clock_measurement
	ldr	r7, [r7]
	add	r2, sp, #11520
	add	r5, sp, #17408
	adds	r2, r2, #56
	adds	r5, r5, #56
	str	r7, [sp, #12]
	sub	r6, r2, #104
.L38:
	mov	r0, r5
	bl	load8
	adds	r5, r5, #8
	cmp	r4, r5
	strd	r0, [r6, #8]!
	bne	.L38
	addw	r1, sp, #3544
	addw	r0, sp, #2520
	bl	preprocess
	add	r1, sp, #11456
	addw	r0, sp, #2520
	adds	r1, r1, #24
	movs	r2, #1
	add	r8, sp, #47872
	bl	benes_compact
	add	r8, r8, #56
	add	r2, sp, #17280
	addw	r3, sp, #2520
	adds	r2, r2, #88
	mov	r0, r8
	mov	r1, r9
	bl	scaling
	add	r0, sp, #600
	mov	r1, r8
	bl	fft_tr
	ldr	r7, [sp, #700]
	ldr	lr, [sp, #696]
	ldr	r6, [sp, #708]
	ldr	r5, [sp, #716]
	ldr	r4, [sp, #724]
	ldr	r0, [sp, #732]
	ldr	r3, [sp, #756]
	ldr	r1, [sp, #740]
	ldr	r2, [sp, #748]
	lsls	r7, r7, #4
	orr	r7, r7, lr, lsr #28
	bic	lr, lr, #-268435456
	orr	lr, lr, r7, lsl #28
	str	lr, [sp, #696]
	ldr	lr, [sp, #704]
	lsls	r6, r6, #4
	orr	r6, r6, lr, lsr #28
	bic	lr, lr, #-268435456
	orr	lr, lr, r6, lsl #28
	str	lr, [sp, #704]
	ldr	lr, [sp, #712]
	lsls	r5, r5, #4
	orr	r5, r5, lr, lsr #28
	lsrs	r6, r6, #4
	bic	lr, lr, #-268435456
	orr	lr, lr, r5, lsl #28
	str	r6, [sp, #708]
	lsrs	r5, r5, #4
	ldr	r6, [sp, #720]
	str	r5, [sp, #716]
	lsls	r4, r4, #4
	ldr	r5, [sp, #728]
	str	lr, [sp, #712]
	orr	r4, r4, r6, lsr #28
	lsls	r0, r0, #4
	bic	r6, r6, #-268435456
	orr	r6, r6, r4, lsl #28
	orr	r0, r0, r5, lsr #28
	lsl	ip, r3, #4
	lsrs	r4, r4, #4
	lsrs	r3, r7, #4
	bic	lr, r5, #-268435456
	orr	lr, lr, r0, lsl #28
	ldr	r5, [sp, #744]
	str	r3, [sp, #700]
	str	r6, [sp, #720]
	ldr	r3, [sp, #764]
	ldr	r6, [sp, #736]
	str	r4, [sp, #724]
	lsrs	r0, r0, #4
	ldr	r4, [sp, #752]
	str	r0, [sp, #732]
	lsls	r1, r1, #4
	ldr	r0, [sp, #760]
	str	lr, [sp, #728]
	lsls	r2, r2, #4
	orr	ip, ip, r4, lsr #28
	orr	r1, r1, r6, lsr #28
	orr	r2, r2, r5, lsr #28
	lsls	r7, r3, #4
	bic	r6, r6, #-268435456
	bic	r5, r5, #-268435456
	bic	r4, r4, #-268435456
	orr	r4, r4, ip, lsl #28
	lsr	r3, ip, #4
	orr	r6, r6, r1, lsl #28
	orr	r5, r5, r2, lsl #28
	orr	r7, r7, r0, lsr #28
	lsrs	r1, r1, #4
	lsrs	r2, r2, #4
	bic	r0, r0, #-268435456
	orr	r0, r0, r7, lsl #28
	str	r6, [sp, #736]
	str	r1, [sp, #740]
	str	r5, [sp, #744]
	str	r2, [sp, #748]
	str	r4, [sp, #752]
	str	r3, [sp, #756]
	ldr	r1, [sp, #772]
	ldr	r2, [sp, #780]
	ldr	r3, [sp, #788]
	str	r0, [sp, #760]
	ldr	r0, [sp, #768]
	ldr	r5, [sp, #776]
	ldr	r4, [sp, #784]
	lsls	r1, r1, #4
	orr	r1, r1, r0, lsr #28
	lsls	r2, r2, #4
	lsls	r3, r3, #4
	bic	r0, r0, #-268435456
	orr	r2, r2, r5, lsr #28
	orr	r3, r3, r4, lsr #28
	orr	r0, r0, r1, lsl #28
	bic	r5, r5, #-268435456
	bic	r4, r4, #-268435456
	lsrs	r6, r1, #4
	orr	r5, r5, r2, lsl #28
	orr	r4, r4, r3, lsl #28
	lsrs	r2, r2, #4
	lsrs	r3, r3, #4
	str	r0, [sp, #768]
	add	r1, sp, #600
	add	r0, sp, #120
	lsrs	r7, r7, #4
	str	r6, [sp, #772]
	str	r5, [sp, #776]
	str	r2, [sp, #780]
	str	r4, [sp, #784]
	str	r3, [sp, #788]
	str	r7, [sp, #764]
	bl	bm
	add	r0, sp, #54016
	add	r1, sp, #120
	adds	r0, r0, #56
	add	r6, sp, #2000
	add	r5, sp, #54016
	add	r4, sp, #60160
	bl	fft
	adds	r5, r5, #56
	str	r6, [sp, #8]
	adds	r4, r4, #56
.L40:
	mov	r0, r5
	bl	vec_or
	adds	r5, r5, #96
	mvns	r0, r0
	mvns	r1, r1
	cmp	r5, r4
	strd	r0, [r6, #8]!
	bne	.L40
	add	r2, sp, #2008
	mov	r0, r8
	mov	r1, r9
	bl	scaling_inv
	add	r0, sp, #792
	mov	r1, r8
	bl	fft_tr
	ldr	r5, [sp, #892]
	ldr	r6, [sp, #888]
	ldr	r4, [sp, #900]
	ldr	r0, [sp, #908]
	ldr	r1, [sp, #916]
	ldr	r2, [sp, #924]
	ldr	r3, [sp, #932]
	lsls	r5, r5, #4
	orr	r5, r5, r6, lsr #28
	bic	r6, r6, #-268435456
	orr	r6, r6, r5, lsl #28
	lsrs	r5, r5, #4
	str	r5, [sp, #892]
	ldr	r5, [sp, #896]
	str	r6, [sp, #888]
	lsls	r4, r4, #4
	orr	r4, r4, r5, lsr #28
	bic	r5, r5, #-268435456
	orr	r5, r5, r4, lsl #28
	lsrs	r4, r4, #4
	str	r4, [sp, #900]
	ldr	r4, [sp, #904]
	ldr	r6, [sp, #940]
	str	r5, [sp, #896]
	lsls	r0, r0, #4
	orr	r0, r0, r4, lsr #28
	bic	r4, r4, #-268435456
	orr	r4, r4, r0, lsl #28
	str	r4, [sp, #904]
	ldr	r4, [sp, #912]
	ldr	r5, [sp, #948]
	lsls	r1, r1, #4
	orr	r1, r1, r4, lsr #28
	bic	r4, r4, #-268435456
	orr	r4, r4, r1, lsl #28
	lsrs	r1, r1, #4
	str	r4, [sp, #912]
	str	r1, [sp, #916]
	ldr	r4, [sp, #928]
	ldr	r1, [sp, #920]
	lsls	r2, r2, #4
	lsls	r3, r3, #4
	orr	r2, r2, r1, lsr #28
	orr	r3, r3, r4, lsr #28
	bic	r1, r1, #-268435456
	bic	r4, r4, #-268435456
	orr	r1, r1, r2, lsl #28
	orr	r4, r4, r3, lsl #28
	lsrs	r7, r0, #4
	lsrs	r2, r2, #4
	ldr	r0, [sp, #956]
	str	r1, [sp, #920]
	lsrs	r3, r3, #4
	ldr	r1, [sp, #936]
	str	r2, [sp, #924]
	str	r3, [sp, #932]
	ldr	r2, [sp, #944]
	ldr	r3, [sp, #952]
	str	r4, [sp, #928]
	lsls	r6, r6, #4
	lsls	r5, r5, #4
	lsls	r0, r0, #4
	orr	r6, r6, r1, lsr #28
	orr	r5, r5, r2, lsr #28
	orr	r0, r0, r3, lsr #28
	bic	r1, r1, #-268435456
	bic	r2, r2, #-268435456
	bic	r3, r3, #-268435456
	orr	r1, r1, r6, lsl #28
	orr	r2, r2, r5, lsl #28
	orr	r3, r3, r0, lsl #28
	lsrs	r6, r6, #4
	lsrs	r5, r5, #4
	str	r1, [sp, #936]
	str	r6, [sp, #940]
	str	r2, [sp, #944]
	lsrs	r0, r0, #4
	str	r7, [sp, #908]
	str	r5, [sp, #948]
	ldr	r1, [sp, #964]
	ldr	r2, [sp, #972]
	str	r3, [sp, #952]
	ldr	r3, [sp, #980]
	ldr	r6, [sp, #960]
	ldr	r4, [sp, #968]
	str	r0, [sp, #956]
	ldr	r0, [sp, #976]
	lsls	r1, r1, #4
	lsls	r2, r2, #4
	lsls	r3, r3, #4
	orr	r1, r1, r6, lsr #28
	orr	r2, r2, r4, lsr #28
	orr	r3, r3, r0, lsr #28
	bic	r6, r6, #-268435456
	bic	r4, r4, #-268435456
	bic	r0, r0, #-268435456
	orr	r4, r4, r2, lsl #28
	orr	r6, r6, r1, lsl #28
	orr	r0, r0, r3, lsl #28
	lsrs	r1, r1, #4
	lsrs	r2, r2, #4
	lsrs	r3, r3, #4
	str	r4, [sp, #968]
	add	r5, sp, #600
	str	r6, [sp, #960]
	str	r1, [sp, #964]
	str	r2, [sp, #972]
	str	r0, [sp, #976]
	str	r3, [sp, #980]
	add	r4, sp, #792
	mov	r10, #0
	mov	fp, #0
	mov	lr, #0
.L42:
	ldrd	r2, [r5, #8]
	ldrd	r0, [r4, #8]
	ldrd	r6, [r4]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r5]
	eors	r6, r6, r2
	eors	r7, r7, r3
	orrs	r0, r0, r6
	ldrd	r2, [r4, #16]
	orrs	r1, r1, r7
	ldrd	r6, [r5, #16]
	eors	r6, r6, r2
	eors	r7, r7, r3
	orrs	r0, r0, r6
	ldrd	r2, [r5, #24]
	orrs	r1, r1, r7
	ldrd	r6, [r4, #24]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r4, #32]
	orrs	r1, r1, r3
	ldrd	r2, [r5, #32]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #40]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #40]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #48]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #56]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #56]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #64]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #72]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #72]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #80]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #80]
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r0, r0, r2
	ldrd	r6, [r5, #88]
	orrs	r1, r1, r3
	ldrd	r2, [r4, #88]
	add	lr, lr, #1
	eors	r2, r2, r6
	eors	r3, r3, r7
	orrs	r2, r2, r0
	orrs	r3, r3, r1
	cmp	lr, #2
	add	r4, r4, #96
	orr	r10, r10, r2
	orr	fp, fp, r3
	add	r5, r5, #96
	bne	.L42
	movs	r3, #0
	orr	r6, fp, r10
	orr	r7, r3, fp
	lsrs	r0, r6, #16
	orr	r0, r0, r7, lsl #16
	orrs	r6, r6, r0
	lsrs	r1, r7, #16
	orrs	r7, r7, r1
	lsrs	r4, r6, #8
	add	r1, sp, #11456
	orr	r4, r4, r7, lsl #24
	adds	r1, r1, #24
	mov	r2, r3
	add	r0, sp, #2008
	orrs	r4, r4, r6
	bl	benes_compact
	ldr	r10, [sp, #8]
	uxtb	r4, r4
	movs	r5, #0
	add	r6, sp, #2512
	addw	r7, sp, #3032
.L44:
	ldrd	r2, [r10, #8]!
	mov	r0, r7
	bl	store8
	cmp	r10, r6
	add	r7, r7, #8
	bne	.L44
	add	r0, sp, #2008
	bl	weight
	movw	r3, #4100
	movt	r3, 57344
	eor	r0, r0, #62
	ldr	r3, [r3]
	ldr	r6, [sp, #12]
	orrs	r4, r4, r0
	movw	r1, #:lower16:.LC18
	adds	r4, r4, #-1
	orr	r5, r5, r0, asr #31
	movt	r1, #:upper16:.LC18
	rsb	r0, r6, r3
	adc	r5, r5, #-1
	bl	send_clock_measurement
	addw	r1, sp, #3032
	mov	r2, #512
	movs	r3, #0
	mov	r0, r8
	bl	keccack_1024_hash
	addw	r6, sp, #3637
	add	r3, r8, #32
	addw	r7, sp, #3640
	mov	r1, r6
	str	r3, [sp]
	movw	r2, #1939
	movs	r3, #0
	add	r0, r7, #1936
	bl	poly1315_auth_verify
	mov	r4, r0
	add	r0, sp, #16
	stmia	sp, {r0, r8}
	add	r0, sp, #54016
	movw	r2, #1939
	movs	r3, #0
	mov	r1, r6
	adds	r0, r0, #56
	bl	salsa20_xor
	lsrs	r3, r5, #31
	subs	r3, r3, #1
	orrs	r2, r3, r4
	beq	.L45
	movw	r1, #:lower16:.LC19
	movt	r1, #:upper16:.LC19
	mov	r0, r9
	bl	sprintf
	mov	r0, r9
	bl	send_USART_str
.L45:
	movs	r0, #0
	add	sp, sp, #60160
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	20
	.byte	-50
	.byte	64
	.byte	75
	.byte	-49
	.byte	-22
	.byte	-13
	.byte	88
	.byte	57
	.byte	-93
	.byte	-65
	.byte	122
	.byte	53
	.byte	36
	.byte	35
	.byte	67
	.byte	-89
	.byte	47
	.byte	-71
	.byte	-10
	.byte	-22
	.byte	44
	.byte	54
	.byte	-84
	.byte	43
	.byte	-67
	.byte	96
	.byte	-86
	.byte	77
	.byte	-117
	.byte	12
	.byte	-63
	.byte	8
	.byte	97
	.byte	105
	.byte	-15
	.byte	-4
	.byte	124
	.byte	39
	.byte	-3
	.byte	-95
	.byte	-26
	.byte	66
	.byte	-30
	.byte	-2
	.byte	104
	.byte	-26
	.byte	-66
	.byte	-31
	.byte	8
	.byte	57
	.byte	59
	.byte	122
	.byte	-26
	.byte	42
	.byte	-78
	.byte	-97
	.byte	-103
	.byte	114
	.byte	103
	.byte	-76
	.byte	-8
	.byte	-79
	.byte	17
	.byte	-111
	.byte	-56
	.byte	-8
	.byte	14
	.byte	15
	.byte	40
	.byte	-85
	.byte	-83
	.byte	73
	.byte	-50
	.byte	102
	.byte	-32
	.byte	16
	.byte	-64
	.byte	85
	.byte	4
	.byte	51
	.byte	-43
	.byte	-12
	.byte	118
	.byte	29
	.byte	75
	.byte	4
	.byte	69
	.byte	39
	.byte	88
	.byte	-61
	.byte	-40
	.byte	124
	.byte	-88
	.byte	25
	.byte	-115
	.byte	66
	.byte	24
	.byte	86
	.byte	51
	.byte	73
	.byte	37
	.byte	-126
	.byte	-78
	.byte	21
	.byte	79
	.byte	108
	.byte	-97
	.byte	31
	.byte	-115
	.byte	-78
	.byte	120
	.byte	-12
	.byte	126
	.byte	5
	.byte	-77
	.byte	92
	.byte	38
	.byte	-121
	.byte	91
	.byte	78
	.byte	119
	.byte	41
	.byte	-39
	.byte	-31
	.byte	-126
	.byte	80
	.byte	-115
	.byte	104
	.byte	-119
	.byte	-122
	.byte	48
	.byte	36
	.byte	30
	.byte	-123
	.byte	18
	.byte	15
	.byte	28
	.byte	-123
	.byte	74
	.byte	84
	.byte	36
	.byte	50
	.byte	115
	.byte	-51
	.byte	25
	.byte	-64
	.byte	7
	.byte	-29
	.byte	60
	.byte	-36
	.byte	-29
	.byte	103
	.byte	-15
	.byte	-55
	.byte	27
	.byte	-4
	.byte	-108
	.byte	-125
	.byte	84
	.byte	-20
	.byte	46
	.byte	68
	.byte	87
	.byte	-94
	.byte	126
	.byte	-92
	.byte	25
	.byte	-61
	.byte	126
	.byte	-59
	.byte	-25
	.byte	48
	.byte	86
	.byte	72
	.byte	127
	.byte	104
	.byte	80
	.byte	6
	.byte	-74
	.byte	-98
	.byte	-24
	.byte	127
	.byte	2
	.byte	-84
	.byte	108
	.byte	47
	.byte	98
	.byte	-106
	.byte	-60
	.byte	97
	.byte	-115
	.byte	35
	.byte	-71
	.byte	-77
	.byte	107
	.byte	-75
	.byte	69
	.byte	68
	.byte	34
	.byte	65
	.byte	-63
	.byte	-122
	.byte	108
	.byte	-93
	.byte	59
	.byte	-29
	.byte	55
	.byte	89
	.byte	36
	.byte	-125
	.byte	-71
	.byte	73
	.byte	10
	.byte	64
	.byte	-106
	.byte	-51
	.byte	-46
	.byte	-84
	.byte	34
	.byte	123
	.byte	83
	.byte	-92
	.byte	22
	.byte	117
	.byte	-45
	.byte	-68
	.byte	-99
	.byte	-83
	.byte	-54
	.byte	-121
	.byte	41
	.byte	-99
	.byte	-106
	.byte	-95
	.byte	-123
	.byte	-105
	.byte	-105
	.byte	50
	.byte	77
	.byte	-36
	.byte	73
	.byte	66
	.byte	-23
	.byte	53
	.byte	39
	.byte	-79
	.byte	34
	.byte	28
	.byte	-88
	.byte	-66
	.byte	-17
	.byte	68
	.byte	-50
	.byte	47
	.byte	-10
	.byte	-97
	.byte	26
	.byte	43
	.byte	-48
	.byte	99
	.byte	-98
	.byte	-121
	.byte	-50
	.byte	10
	.byte	-60
	.byte	-49
	.byte	22
	.byte	123
	.byte	96
	.byte	-116
	.byte	111
	.byte	14
	.byte	77
	.byte	116
	.byte	14
	.byte	-80
	.byte	-104
	.byte	-15
	.byte	64
	.byte	-97
	.byte	122
	.byte	-73
	.byte	-2
	.byte	-38
	.byte	121
	.byte	-4
	.byte	-80
	.byte	-35
	.byte	124
	.byte	-60
	.byte	118
	.byte	-71
	.byte	-93
	.byte	69
	.byte	-44
	.byte	-116
	.byte	-121
	.byte	33
	.byte	-53
	.byte	-125
	.byte	-105
	.byte	52
	.byte	-94
	.byte	102
	.byte	0
	.byte	-47
	.byte	52
	.byte	78
	.byte	90
	.byte	-96
	.byte	-25
	.byte	-116
	.byte	56
	.byte	-66
	.byte	-96
	.byte	-45
	.byte	-28
	.byte	73
	.byte	-87
	.byte	65
	.byte	59
	.byte	65
	.byte	-54
	.byte	-128
	.byte	-70
	.byte	111
	.byte	-7
	.byte	-100
	.byte	-26
	.byte	65
	.byte	-63
	.byte	99
	.byte	90
	.byte	31
	.byte	-53
	.byte	-92
	.byte	-87
	.byte	-93
	.byte	-15
	.byte	105
	.byte	-101
	.byte	-30
	.byte	107
	.byte	-126
	.byte	46
	.byte	-91
	.byte	103
	.byte	-62
	.byte	101
	.byte	45
	.byte	87
	.byte	-111
	.byte	31
	.byte	121
	.byte	108
	.byte	-85
	.byte	-75
	.byte	-6
	.byte	-43
	.byte	29
	.byte	96
	.byte	-99
	.byte	-25
	.byte	-109
	.byte	-78
	.byte	101
	.byte	-33
	.byte	46
	.byte	31
	.byte	83
	.byte	-80
	.byte	-33
	.byte	-2
	.byte	40
	.byte	-123
	.byte	-38
	.byte	-95
	.byte	-80
	.byte	83
	.byte	-10
	.byte	60
	.byte	29
	.byte	-113
	.byte	27
	.byte	-95
	.byte	-103
	.byte	108
	.byte	-56
	.byte	24
	.byte	-96
	.byte	-114
	.byte	-123
	.byte	-48
	.byte	101
	.byte	124
	.byte	110
	.byte	-85
	.byte	38
	.byte	-64
	.byte	-76
	.byte	-4
	.byte	-34
	.byte	119
	.byte	-116
	.byte	-30
	.byte	-114
	.byte	72
	.byte	-92
	.byte	-9
	.byte	-104
	.byte	65
	.byte	54
	.byte	-104
	.byte	-71
	.byte	-76
	.byte	-125
	.byte	59
	.byte	-32
	.byte	-81
	.byte	126
	.byte	90
	.byte	-48
	.byte	76
	.byte	82
	.byte	100
	.byte	-60
	.byte	12
	.byte	66
	.byte	13
	.byte	-7
	.byte	16
	.byte	11
	.byte	-51
	.byte	16
	.byte	15
	.byte	-7
	.byte	-2
	.byte	30
	.byte	-58
	.byte	72
	.byte	-3
	.byte	-88
	.byte	114
	.byte	-43
	.byte	15
	.byte	32
	.byte	84
	.byte	-37
	.byte	79
	.byte	4
	.byte	-36
	.byte	20
	.byte	10
	.byte	35
	.byte	-5
	.byte	-61
	.byte	-102
	.byte	56
	.byte	10
	.byte	26
	.byte	-6
	.byte	55
	.byte	-18
	.byte	-57
	.byte	3
	.byte	99
	.byte	96
	.byte	1
	.byte	76
	.byte	-128
	.byte	68
	.byte	45
	.byte	14
	.byte	-103
	.byte	21
	.byte	1
	.byte	50
	.byte	-58
	.byte	31
	.byte	-116
	.byte	21
	.byte	28
	.byte	8
	.byte	-57
	.byte	-6
	.byte	94
	.byte	-75
	.byte	93
	.byte	-21
	.byte	-120
	.byte	114
	.byte	40
	.byte	49
	.byte	65
	.byte	14
	.byte	22
	.byte	62
	.byte	-76
	.byte	31
	.byte	-67
	.byte	-96
	.byte	-74
	.byte	30
	.byte	-82
	.byte	-78
	.byte	-37
	.byte	29
	.byte	-70
	.byte	11
	.byte	-47
	.byte	124
	.byte	124
	.byte	117
	.byte	-23
	.byte	-26
	.byte	12
	.byte	-33
	.byte	83
	.byte	116
	.byte	-34
	.byte	-29
	.byte	-114
	.byte	52
	.byte	19
	.byte	-117
	.byte	93
	.byte	-22
	.byte	28
	.byte	-39
	.byte	-33
	.byte	-50
	.byte	84
	.byte	22
	.byte	-124
	.byte	-46
	.byte	-73
	.byte	-73
	.byte	86
	.byte	-15
	.byte	51
	.byte	-45
	.byte	-95
	.byte	82
	.byte	-104
	.byte	113
	.byte	-17
	.byte	107
	.byte	-69
	.byte	-3
	.byte	105
	.byte	-59
	.byte	8
	.byte	14
	.byte	-17
	.byte	82
	.byte	-92
	.byte	100
	.byte	40
	.byte	-6
	.byte	-117
	.byte	-28
	.byte	68
	.byte	64
	.byte	64
	.byte	-36
	.byte	-88
	.byte	-128
	.byte	-30
	.byte	54
	.byte	-108
	.byte	-79
	.byte	-73
	.byte	-110
	.byte	-11
	.byte	-63
	.byte	7
	.byte	89
	.byte	30
	.byte	-63
	.byte	-17
	.byte	37
	.byte	72
	.byte	-36
	.byte	116
	.byte	-10
	.byte	54
	.byte	32
	.byte	-62
	.byte	91
	.byte	37
	.byte	-125
	.byte	80
	.byte	-97
	.byte	119
	.byte	-19
	.byte	-60
	.byte	-46
	.byte	-36
	.byte	81
	.byte	-110
	.byte	43
	.byte	-61
	.byte	-31
	.byte	48
	.byte	-43
	.byte	73
	.byte	78
	.byte	124
	.byte	120
	.byte	45
	.byte	90
	.byte	-103
	.byte	58
	.byte	-112
	.byte	-78
	.byte	35
	.byte	29
	.byte	-33
	.byte	5
	.byte	84
	.byte	124
	.byte	-106
	.byte	78
	.byte	-35
	.byte	-121
	.byte	-58
	.byte	31
	.byte	103
	.byte	93
	.byte	23
	.byte	-126
	.byte	111
	.byte	-84
	.byte	-19
	.byte	-50
	.byte	64
	.byte	21
	.byte	-25
	.byte	75
	.byte	-48
	.byte	120
	.byte	-111
	.byte	113
	.byte	-7
	.byte	80
	.byte	39
	.byte	57
	.byte	-82
	.byte	35
	.byte	45
	.byte	35
	.byte	-12
	.byte	-8
	.byte	91
	.byte	11
	.byte	63
	.byte	68
	.byte	102
	.byte	-41
	.byte	54
	.byte	-39
	.byte	3
	.byte	57
	.byte	74
	.byte	115
	.byte	116
	.byte	-24
	.byte	-99
	.byte	103
	.byte	-61
	.byte	-15
	.byte	105
	.byte	125
	.byte	-12
	.byte	-44
	.byte	-92
	.byte	54
	.byte	17
	.byte	-73
	.byte	17
	.byte	-87
	.byte	-89
	.byte	-54
	.byte	40
	.byte	-87
	.byte	51
	.byte	48
	.byte	-94
	.byte	9
	.byte	51
	.byte	15
	.byte	-18
	.byte	116
	.byte	-115
	.byte	64
	.byte	-53
	.byte	-12
	.byte	125
	.byte	-102
	.byte	36
	.byte	-116
	.byte	-120
	.byte	91
	.byte	119
	.byte	-19
	.byte	-126
	.byte	-74
	.byte	0
	.byte	-84
	.byte	5
	.byte	70
	.byte	-117
	.byte	-83
	.byte	61
	.byte	-125
	.byte	-124
	.byte	8
	.byte	-38
	.byte	-39
	.byte	124
	.byte	123
	.byte	-102
	.byte	8
	.byte	-74
	.byte	-51
	.byte	120
	.byte	69
	.byte	-117
	.byte	-85
	.byte	-13
	.byte	-46
	.byte	60
	.byte	-52
	.byte	90
	.byte	9
	.byte	-50
	.byte	7
	.byte	115
	.byte	27
	.byte	21
	.byte	115
	.byte	-9
	.byte	-96
	.byte	79
	.byte	11
	.byte	-39
	.byte	101
	.byte	47
	.byte	18
	.byte	47
	.byte	101
	.byte	-3
	.byte	51
	.byte	110
	.byte	-107
	.byte	78
	.byte	52
	.byte	-12
	.byte	-53
	.byte	-12
	.byte	-106
	.byte	111
	.byte	-43
	.byte	-15
	.byte	-103
	.byte	9
	.byte	-15
	.byte	-96
	.byte	-59
	.byte	-38
	.byte	-29
	.byte	25
	.byte	40
	.byte	-20
	.byte	21
	.byte	66
	.byte	-34
	.byte	70
	.byte	71
	.byte	-72
	.byte	51
	.byte	97
	.byte	-20
	.byte	92
	.byte	-43
	.byte	124
	.byte	-115
	.byte	65
	.byte	40
	.byte	-2
	.byte	97
	.byte	-113
	.byte	-116
	.byte	81
	.byte	-25
	.byte	-123
	.byte	24
	.byte	-22
	.byte	34
	.byte	-30
	.byte	-20
	.byte	-81
	.byte	91
	.byte	74
	.byte	-103
	.byte	-13
	.byte	100
	.byte	26
	.byte	-75
	.byte	-102
	.byte	35
	.byte	-119
	.byte	-93
	.byte	-35
	.byte	-124
	.byte	-114
	.byte	54
	.byte	-128
	.byte	-47
	.byte	-22
	.byte	21
	.byte	98
	.byte	27
	.byte	-53
	.byte	-30
	.byte	111
	.byte	41
	.byte	-9
	.byte	15
	.byte	3
	.byte	34
	.byte	-63
	.byte	15
	.byte	14
	.byte	20
	.byte	125
	.byte	-37
	.byte	-58
	.byte	10
	.byte	-99
	.byte	-30
	.byte	48
	.byte	-15
	.byte	-125
	.byte	82
	.byte	-68
	.byte	59
	.byte	70
	.byte	19
	.byte	-47
	.byte	-77
	.byte	59
	.byte	112
	.byte	-25
	.byte	-121
	.byte	28
	.byte	120
	.byte	94
	.byte	41
	.byte	15
	.byte	69
	.byte	77
	.byte	23
	.byte	-6
	.byte	-79
	.byte	57
	.byte	-96
	.byte	123
	.byte	-17
	.byte	27
	.byte	2
	.byte	83
	.byte	-72
	.byte	-48
	.byte	118
	.byte	108
	.byte	119
	.byte	49
	.byte	41
	.byte	-105
	.byte	106
	.byte	18
	.byte	-6
	.byte	55
	.byte	-37
	.byte	23
	.byte	-16
	.byte	-112
	.byte	106
	.byte	106
	.byte	57
	.byte	47
	.byte	124
	.byte	111
	.byte	-55
	.byte	57
	.byte	56
	.byte	-61
	.byte	-56
	.byte	-32
	.byte	71
	.byte	55
	.byte	52
	.byte	-63
	.byte	-27
	.byte	32
	.byte	-5
	.byte	-115
	.byte	-26
	.byte	98
	.byte	43
	.byte	-64
	.byte	-70
	.byte	-62
	.byte	-90
	.byte	-98
	.byte	-63
	.byte	105
	.byte	34
	.byte	-92
	.byte	-60
	.byte	11
	.byte	62
	.byte	-47
	.byte	40
	.byte	77
	.byte	55
	.byte	18
	.byte	-97
	.byte	50
	.byte	104
	.byte	118
	.byte	-127
	.byte	-33
	.byte	42
	.byte	-96
	.byte	113
	.byte	87
	.byte	-39
	.byte	115
	.byte	98
	.byte	-114
	.byte	-58
	.byte	-10
	.byte	99
	.byte	118
	.byte	0
	.byte	40
	.byte	122
	.byte	-72
	.byte	-120
	.byte	95
	.byte	-108
	.byte	101
	.byte	-103
	.byte	-77
	.byte	-67
	.byte	-27
	.byte	1
	.byte	2
	.byte	52
	.byte	-101
	.byte	-98
	.byte	-95
	.byte	58
	.byte	-100
	.byte	45
	.byte	-90
	.byte	75
	.byte	16
	.byte	-125
	.byte	46
	.byte	-68
	.byte	96
	.byte	41
	.byte	121
	.byte	113
	.byte	98
	.byte	35
	.byte	-20
	.byte	63
	.byte	3
	.byte	-73
	.byte	84
	.byte	89
	.byte	-52
	.byte	102
	.byte	54
	.byte	14
	.byte	46
	.byte	-8
	.byte	-53
	.byte	25
	.byte	-125
	.byte	119
	.byte	-86
	.byte	77
	.byte	79
	.byte	-43
	.byte	104
	.byte	-43
	.byte	-118
	.byte	-62
	.byte	-29
	.byte	25
	.byte	-47
	.byte	-69
	.byte	-14
	.byte	-107
	.byte	-8
	.byte	-74
	.byte	-4
	.byte	-23
	.byte	-78
	.byte	-22
	.byte	-63
	.byte	19
	.byte	94
	.byte	58
	.byte	67
	.byte	48
	.byte	38
	.byte	37
	.byte	-81
	.byte	-94
	.byte	21
	.byte	-24
	.byte	-1
	.byte	91
	.byte	23
	.byte	-54
	.byte	120
	.byte	-92
	.byte	-29
	.byte	-102
	.byte	-1
	.byte	50
	.byte	-51
	.byte	30
	.byte	99
	.byte	-118
	.byte	-15
	.byte	-42
	.byte	-83
	.byte	124
	.byte	-1
	.byte	-69
	.byte	-61
	.byte	117
	.byte	-22
	.byte	-72
	.byte	-98
	.byte	-46
	.byte	-46
	.byte	-103
	.byte	84
	.byte	58
	.byte	3
	.byte	43
	.byte	-27
	.byte	81
	.byte	-116
	.byte	79
	.byte	-120
	.byte	26
	.byte	-43
	.byte	60
	.byte	38
	.byte	31
	.byte	-38
	.byte	-1
	.byte	-22
	.byte	-16
	.byte	-115
	.byte	-34
	.byte	-90
	.byte	-80
	.byte	-82
	.byte	32
	.byte	21
	.byte	-19
	.byte	-123
	.byte	92
	.byte	-91
	.byte	-7
	.byte	21
	.byte	100
	.byte	72
	.byte	-123
	.byte	3
	.byte	-108
	.byte	18
	.byte	-6
	.byte	28
	.byte	98
	.byte	-75
	.byte	64
	.byte	-109
	.byte	72
	.byte	114
	.byte	95
	.byte	-1
	.byte	19
	.byte	-82
	.byte	124
	.byte	-50
	.byte	-120
	.byte	-72
	.byte	-24
	.byte	-56
	.byte	30
	.byte	76
	.byte	101
	.byte	-85
	.byte	90
	.byte	84
	.byte	80
	.byte	64
	.byte	-45
	.byte	24
	.byte	-67
	.byte	21
	.byte	106
	.byte	-14
	.byte	-110
	.byte	60
	.byte	-109
	.byte	-40
	.byte	51
	.byte	-116
	.byte	127
	.byte	-124
	.byte	94
	.byte	-98
	.byte	-6
	.byte	-59
	.byte	77
	.byte	71
	.byte	15
	.byte	101
	.byte	-10
	.byte	29
	.byte	-4
	.byte	6
	.byte	47
	.byte	-98
	.byte	-62
	.byte	107
	.byte	-47
	.byte	39
	.byte	-77
	.byte	-60
	.byte	31
	.byte	-55
	.byte	-67
	.byte	-10
	.byte	40
	.byte	50
	.byte	59
	.byte	-28
	.byte	-73
	.byte	-1
	.byte	95
	.byte	-56
	.byte	-39
	.byte	-65
	.byte	84
	.byte	103
	.byte	-45
	.byte	-70
	.byte	-22
	.byte	46
	.byte	36
	.byte	0
	.byte	-52
	.byte	-82
	.byte	5
	.byte	87
	.byte	96
	.byte	47
	.byte	-127
	.byte	-55
	.byte	-126
	.byte	-54
	.byte	-79
	.byte	21
	.byte	30
	.byte	69
	.byte	-125
	.byte	-42
	.byte	49
	.byte	-127
	.byte	82
	.byte	63
	.byte	93
	.byte	-32
	.byte	-127
	.byte	-2
	.byte	-26
	.byte	121
	.byte	-96
	.byte	-54
	.byte	101
	.byte	-101
	.byte	-20
	.byte	-69
	.byte	5
	.byte	112
	.byte	-73
	.byte	91
	.byte	-7
	.byte	-90
	.byte	-57
	.byte	-51
	.byte	30
	.byte	-33
	.byte	-83
	.byte	-47
	.byte	20
	.byte	-35
	.byte	9
	.byte	-24
	.byte	23
	.byte	44
	.byte	29
	.byte	-33
	.byte	-42
	.byte	-100
	.byte	-39
	.byte	-72
	.byte	-105
	.byte	-127
	.byte	51
	.byte	-32
	.byte	-92
	.byte	-94
	.byte	-52
	.byte	-50
	.byte	-111
	.byte	-75
	.byte	106
	.byte	127
	.byte	6
	.byte	30
	.byte	126
	.byte	78
	.byte	-111
	.byte	70
	.byte	-97
	.byte	-17
	.byte	107
	.byte	12
	.byte	54
	.byte	92
	.byte	-38
	.byte	39
	.byte	24
	.byte	-71
	.byte	-45
	.byte	37
	.byte	19
	.byte	104
	.byte	-116
	.byte	3
	.byte	105
	.byte	-77
	.byte	2
	.byte	108
	.byte	62
	.byte	-108
	.byte	-102
	.byte	-59
	.byte	-75
	.byte	113
	.byte	-108
	.byte	115
	.byte	-14
	.byte	122
	.byte	126
	.byte	35
	.byte	65
	.byte	-52
	.byte	-36
	.byte	52
	.byte	-81
	.byte	119
	.byte	-47
	.byte	28
	.byte	117
	.byte	-25
	.byte	53
	.byte	-5
	.byte	-124
	.byte	-48
	.byte	-69
	.byte	-84
	.byte	-71
	.byte	71
	.byte	80
	.byte	41
	.byte	122
	.byte	-42
	.byte	35
	.byte	23
	.byte	127
	.byte	-127
	.byte	9
	.byte	38
	.byte	-28
	.byte	29
	.byte	-84
	.byte	-102
	.byte	82
	.byte	8
	.byte	-112
	.byte	-106
	.byte	107
	.byte	-44
	.byte	-101
	.byte	57
	.byte	-113
	.byte	-32
	.byte	120
	.byte	94
	.byte	-101
	.byte	112
	.byte	-87
	.byte	-58
	.byte	-72
	.byte	67
	.byte	98
	.byte	-51
	.byte	65
	.byte	-107
	.byte	-122
	.byte	-27
	.byte	-128
	.byte	-108
	.byte	-128
	.byte	-18
	.byte	-110
	.byte	-61
	.byte	-51
	.byte	67
	.byte	50
	.byte	118
	.byte	109
	.byte	10
	.byte	-39
	.byte	-22
	.byte	-108
	.byte	-34
	.byte	-86
	.byte	22
	.byte	2
	.byte	56
	.byte	77
	.byte	38
	.byte	38
	.byte	99
	.byte	30
	.byte	-22
	.byte	-64
	.byte	-34
	.byte	53
	.byte	93
	.byte	-76
	.byte	-79
	.byte	-88
	.byte	-50
	.byte	42
	.byte	19
	.byte	-89
	.byte	-78
	.byte	-105
	.byte	-126
	.byte	-57
	.byte	45
	.byte	27
	.byte	80
	.byte	-14
	.byte	-41
	.byte	54
	.byte	-16
	.byte	23
	.byte	-1
	.byte	-14
	.byte	14
	.byte	-103
	.byte	-62
	.byte	20
	.byte	-4
	.byte	117
	.byte	-109
	.byte	34
	.byte	54
	.byte	88
	.byte	6
	.byte	-28
	.byte	-120
	.byte	63
	.byte	38
	.byte	-62
	.byte	109
	.byte	39
	.byte	64
	.byte	17
	.byte	91
	.byte	-92
	.byte	97
	.byte	114
	.byte	32
	.byte	78
	.byte	50
	.byte	7
	.byte	-63
	.byte	-103
	.byte	-70
	.byte	-34
	.byte	-96
	.byte	115
	.byte	111
	.byte	66
	.byte	-116
	.byte	-14
	.byte	7
	.byte	-80
	.byte	-9
	.byte	-9
	.byte	112
	.byte	105
	.byte	-69
	.byte	-124
	.byte	73
	.byte	117
	.byte	90
	.byte	107
	.byte	8
	.byte	94
	.byte	65
	.byte	78
	.byte	74
	.byte	-78
	.byte	58
	.byte	67
	.byte	25
	.byte	45
	.byte	-38
	.byte	70
	.byte	-73
	.byte	69
	.byte	-48
	.byte	-70
	.byte	103
	.byte	-30
	.byte	13
	.byte	10
	.byte	54
	.byte	-41
	.byte	-92
	.byte	26
	.byte	123
	.byte	58
	.byte	38
	.byte	11
	.byte	77
	.byte	-73
	.byte	-112
	.byte	-46
	.byte	41
	.byte	14
	.byte	-35
	.byte	106
	.byte	94
	.byte	-68
	.byte	25
	.byte	-108
	.byte	113
	.byte	0
	.byte	-9
	.byte	57
	.byte	6
	.byte	-73
	.byte	-101
	.byte	116
	.byte	-13
	.byte	-38
	.byte	-15
	.byte	-60
	.byte	125
	.byte	34
	.byte	-9
	.byte	17
	.byte	17
	.byte	100
	.byte	-21
	.byte	-32
	.byte	86
	.byte	51
	.byte	-40
	.byte	95
	.byte	88
	.byte	-47
	.byte	33
	.byte	-115
	.byte	-34
	.byte	116
	.byte	-5
	.byte	-18
	.byte	94
	.byte	108
	.byte	78
	.byte	69
	.byte	-79
	.byte	9
	.byte	-85
	.byte	-46
	.byte	101
	.byte	65
	.byte	-78
	.byte	-69
	.byte	118
	.byte	127
	.byte	86
	.byte	-62
	.byte	78
	.byte	83
	.byte	105
	.byte	-17
	.byte	52
	.byte	119
	.byte	24
	.byte	-90
	.byte	-26
	.byte	22
	.byte	30
	.byte	27
	.byte	96
	.byte	101
	.byte	126
	.byte	48
	.byte	-87
	.byte	-7
	.byte	34
	.byte	95
	.byte	-25
	.byte	66
	.byte	-74
	.byte	-105
	.byte	45
	.byte	107
	.byte	75
	.byte	10
	.byte	-77
	.byte	41
	.byte	84
	.byte	-76
	.byte	-116
	.byte	-33
	.byte	-71
	.byte	-5
	.byte	-28
	.byte	86
	.byte	-89
	.byte	-2
	.byte	48
	.byte	17
	.byte	103
	.byte	-15
	.byte	4
	.byte	15
	.byte	-107
	.byte	103
	.byte	-34
	.byte	-92
	.byte	105
	.byte	45
	.byte	-10
	.byte	-29
	.byte	-112
	.byte	117
	.byte	47
	.byte	14
	.byte	-88
	.byte	62
	.byte	-13
	.byte	62
	.byte	-15
	.byte	35
	.byte	-24
	.byte	-29
	.byte	-40
	.byte	-50
	.byte	-25
	.byte	-46
	.byte	-123
	.byte	-38
	.byte	124
	.byte	-31
	.byte	-86
	.byte	45
	.byte	47
	.byte	98
	.byte	8
	.byte	60
	.byte	88
	.byte	-63
	.byte	117
	.byte	-61
	.byte	122
	.byte	-121
	.byte	77
	.byte	-43
	.byte	95
	.byte	116
	.byte	-122
	.byte	-61
	.byte	81
	.byte	118
	.byte	0
	.byte	-113
	.byte	4
	.byte	32
	.byte	-31
	.byte	-35
	.byte	4
	.byte	37
	.byte	-61
	.byte	125
	.byte	69
	.byte	-23
	.byte	61
	.byte	45
	.byte	-92
	.byte	-104
	.byte	115
	.byte	3
	.byte	16
	.byte	-76
	.byte	-55
	.byte	-119
	.byte	-96
	.byte	-69
	.byte	66
	.byte	-39
	.byte	-22
	.byte	80
	.byte	119
	.byte	-77
	.byte	-69
	.byte	47
	.byte	-95
	.byte	-17
	.byte	13
	.byte	-109
	.byte	44
	.byte	-116
	.byte	-59
	.byte	-40
	.byte	-80
	.byte	56
	.byte	11
	.byte	-4
	.byte	16
	.byte	-77
	.byte	-100
	.byte	126
	.byte	-50
	.byte	-44
	.byte	104
	.byte	-9
	.byte	-7
	.byte	20
	.byte	-109
	.byte	-85
	.byte	-86
	.byte	64
	.byte	25
	.byte	-99
	.byte	46
	.byte	8
	.byte	-91
	.byte	-49
	.byte	-57
	.byte	-2
	.byte	125
	.byte	99
	.byte	-36
	.byte	-127
	.byte	-25
	.byte	11
	.byte	-39
	.byte	-126
	.byte	120
	.byte	-26
	.byte	126
	.byte	-89
	.byte	-87
	.byte	-39
	.byte	-118
	.byte	-30
	.byte	-112
	.byte	-82
	.byte	27
	.byte	71
	.byte	81
	.byte	59
	.byte	-97
	.byte	40
	.byte	-90
	.byte	124
	.byte	73
	.byte	86
	.byte	-121
	.byte	58
	.byte	-46
	.byte	-58
	.byte	-112
	.byte	-90
	.byte	-98
	.byte	-82
	.byte	71
	.byte	-19
	.byte	31
	.byte	65
	.byte	-75
	.byte	-29
	.byte	102
	.byte	-42
	.byte	65
	.byte	2
	.byte	115
	.byte	-25
	.byte	54
	.byte	77
	.byte	126
	.byte	-12
	.byte	114
	.byte	-17
	.byte	45
	.byte	-11
	.byte	-9
	.byte	-52
	.byte	114
	.byte	-33
	.byte	-95
	.byte	8
	.byte	1
	.byte	-9
	.byte	-120
	.byte	124
	.byte	-43
	.byte	63
	.byte	-116
	.byte	-99
	.byte	86
	.byte	81
	.byte	-97
	.byte	-67
	.byte	21
	.byte	-4
	.byte	-76
	.byte	94
	.byte	-31
	.byte	-122
	.byte	42
	.byte	-20
	.byte	-21
	.byte	91
	.byte	61
	.byte	-121
	.byte	14
	.byte	6
	.byte	-57
	.byte	93
	.byte	21
	.byte	-44
	.byte	75
	.byte	34
	.byte	16
	.byte	-44
	.byte	78
	.byte	121
	.byte	-58
	.byte	-23
	.byte	24
	.byte	-83
	.byte	102
	.byte	84
	.byte	119
	.byte	121
	.byte	52
	.byte	95
	.byte	36
	.byte	67
	.byte	-128
	.byte	-43
	.byte	50
	.byte	65
	.byte	-66
	.byte	-116
	.byte	83
	.byte	-36
	.byte	-8
	.byte	30
	.byte	-20
	.byte	-9
	.byte	96
	.byte	60
	.byte	94
	.byte	-98
	.byte	102
	.byte	117
	.byte	23
	.byte	14
	.byte	1
	.byte	-86
	.byte	-76
	.byte	-23
	.byte	-87
	.byte	0
	.byte	16
	.byte	44
	.byte	-27
	.byte	-79
	.byte	5
	.byte	35
	.byte	-38
	.byte	52
	.byte	-23
	.byte	-81
	.byte	-16
	.byte	37
	.byte	120
	.byte	58
	.byte	-25
	.byte	117
	.byte	94
	.byte	-69
	.byte	-38
	.byte	52
	.byte	-113
	.byte	-27
	.byte	91
	.byte	-128
	.byte	108
	.byte	-12
	.byte	113
	.byte	105
	.byte	-73
	.byte	-16
	.byte	69
	.byte	-30
	.byte	-81
	.byte	13
	.byte	31
	.byte	58
	.byte	-31
	.byte	-8
	.byte	-63
	.byte	-126
	.byte	-21
	.byte	0
	.byte	0
	.byte	66
	.byte	90
	.byte	-49
	.byte	-104
	.byte	71
	.byte	-40
	.byte	17
	.byte	29
	.byte	-70
	.byte	-12
	.byte	43
	.byte	0
	.byte	-124
	.byte	88
	.byte	-61
	.byte	-89
	.byte	-79
	.byte	-113
	.byte	51
	.byte	-57
	.byte	-96
	.byte	-107
	.byte	-60
	.byte	92
	.byte	56
	.byte	-69
	.byte	62
	.byte	-32
	.byte	-104
	.byte	122
	.byte	14
	.byte	-111
	.byte	-95
	.byte	42
	.byte	85
	.byte	-24
	.byte	-9
	.byte	-53
	.byte	-128
	.byte	-11
	.byte	79
	.byte	92
	.byte	79
	.byte	-78
	.byte	-105
	.byte	74
	.byte	-92
	.byte	12
	.byte	-23
	.byte	-22
	.byte	-93
	.byte	-85
	.byte	-111
	.byte	113
	.byte	25
	.byte	-92
	.byte	111
	.byte	-115
	.byte	80
	.byte	51
	.byte	-54
	.byte	-106
	.byte	-27
	.byte	-40
	.byte	-96
	.byte	-47
	.byte	-25
	.byte	5
	.byte	94
	.byte	67
	.byte	-66
	.byte	82
	.byte	-42
	.byte	40
	.byte	-77
	.byte	-60
	.byte	2
	.byte	-90
	.byte	58
	.byte	46
	.byte	-127
	.byte	101
	.byte	27
	.byte	64
	.byte	58
	.byte	24
	.byte	-126
	.byte	29
	.byte	-122
	.byte	75
	.byte	-120
	.byte	-40
	.byte	14
	.byte	32
	.byte	80
	.byte	96
	.byte	46
	.byte	80
	.byte	62
	.byte	-93
	.byte	87
	.byte	-12
	.byte	-2
	.byte	28
	.byte	-27
	.byte	60
	.byte	-79
	.byte	-70
	.byte	-55
	.byte	47
	.byte	10
	.byte	-5
	.byte	72
	.byte	-74
	.byte	90
	.byte	-123
	.byte	-95
	.byte	-109
	.byte	80
	.byte	45
	.byte	18
	.byte	91
	.byte	-93
	.byte	74
	.byte	92
	.byte	37
	.byte	16
	.byte	-96
	.byte	-50
	.byte	17
	.byte	117
	.byte	59
	.byte	-118
	.byte	83
	.byte	78
	.byte	36
	.byte	13
	.byte	82
	.byte	106
	.byte	-38
	.byte	98
	.byte	99
	.byte	-25
	.byte	110
	.byte	58
	.byte	106
	.byte	84
	.byte	-73
	.byte	-49
	.byte	22
	.byte	114
	.byte	106
	.byte	-20
	.byte	43
	.byte	61
	.byte	-25
	.byte	-56
	.byte	116
	.byte	26
	.byte	-98
	.byte	99
	.byte	24
	.byte	116
	.byte	-14
	.byte	-44
	.byte	-93
	.byte	90
	.byte	-85
	.byte	118
	.byte	-114
	.byte	-98
	.byte	-116
	.byte	101
	.byte	109
	.byte	74
	.byte	-38
	.byte	-82
	.byte	41
	.byte	-16
	.byte	88
	.byte	-98
	.byte	84
	.byte	-87
.LC1:
	.byte	52
	.byte	97
	.byte	-23
	.byte	17
	.byte	-33
	.byte	-90
	.byte	117
	.byte	87
	.byte	-50
	.byte	-24
	.byte	106
	.byte	-59
	.byte	78
	.byte	56
	.byte	-107
	.byte	32
	.byte	-61
	.byte	-58
	.byte	-11
	.byte	-49
	.byte	50
	.byte	-119
	.byte	107
	.byte	62
	.byte	-32
	.byte	99
	.byte	79
	.byte	-14
	.byte	-23
	.byte	-9
	.byte	-16
	.byte	25
	.byte	61
	.byte	-117
	.byte	-126
	.byte	74
	.byte	-102
	.byte	-119
	.byte	76
	.byte	21
	.byte	-115
	.byte	-43
	.byte	-67
	.byte	0
	.byte	99
	.byte	-58
	.byte	103
	.byte	11
	.byte	-112
	.byte	120
	.byte	17
	.byte	-22
	.byte	2
	.byte	77
	.byte	70
	.byte	25
	.byte	-73
	.byte	-54
	.byte	43
	.byte	28
	.byte	115
	.byte	112
	.byte	-123
	.byte	0
	.byte	-45
	.byte	103
	.byte	42
	.byte	32
	.byte	-108
	.byte	-20
	.byte	-108
	.byte	46
	.byte	49
	.byte	5
	.byte	67
	.byte	-104
	.byte	-42
	.byte	-27
	.byte	64
	.byte	53
	.byte	-45
	.byte	67
	.byte	50
	.byte	-100
	.byte	-98
	.byte	17
	.byte	23
	.byte	7
	.byte	17
	.byte	-86
	.byte	-78
	.byte	-32
	.byte	127
	.byte	77
	.byte	-21
	.byte	39
	.byte	-5
	.byte	-5
	.byte	-95
	.byte	117
	.byte	109
	.byte	-105
	.byte	-81
	.byte	19
	.byte	70
	.byte	-84
	.byte	5
	.byte	-109
	.byte	48
	.byte	103
	.byte	-91
	.byte	71
	.byte	-65
	.byte	66
	.byte	-22
	.byte	-63
	.byte	94
	.byte	-34
	.byte	-5
	.byte	-126
	.byte	89
	.byte	53
	.byte	-82
	.byte	91
	.byte	111
	.byte	46
	.byte	-128
	.byte	-116
	.byte	88
	.byte	-30
	.byte	-28
	.byte	105
	.byte	-90
	.byte	104
	.byte	-63
	.byte	-38
	.byte	125
	.byte	16
	.byte	104
	.byte	-32
	.byte	35
	.byte	29
	.byte	4
	.byte	-45
	.byte	104
	.byte	40
	.byte	-32
	.byte	-127
	.byte	90
	.byte	-122
	.byte	105
	.byte	81
	.byte	72
	.byte	91
	.byte	-107
	.byte	61
	.byte	77
	.byte	103
	.byte	-28
	.byte	44
	.byte	-60
	.byte	44
	.byte	33
	.byte	123
	.byte	-1
	.byte	-82
	.byte	-45
	.byte	-48
	.byte	-86
	.byte	17
	.byte	80
	.byte	-86
	.byte	72
	.byte	-108
	.byte	-35
	.byte	-108
	.byte	-108
	.byte	39
	.byte	-84
	.byte	48
	.byte	62
	.byte	55
	.byte	-90
	.byte	-34
	.byte	120
	.byte	5
	.byte	95
	.byte	99
	.byte	-29
	.byte	-14
	.byte	-78
	.byte	81
	.byte	-28
	.byte	-47
	.byte	-105
	.byte	-95
	.byte	-105
	.byte	94
	.byte	-124
	.byte	56
	.byte	-8
	.byte	-95
	.byte	12
	.byte	-102
	.byte	114
	.byte	-13
	.byte	-74
	.byte	-98
	.byte	-37
	.byte	5
	.byte	-80
	.byte	105
	.byte	56
	.byte	-101
	.byte	83
	.byte	-96
	.byte	5
	.byte	-35
	.byte	45
	.byte	36
	.byte	-126
	.byte	-67
	.byte	92
	.byte	-86
	.byte	90
	.byte	7
	.byte	-51
	.byte	-86
	.byte	-124
	.byte	51
	.byte	36
	.byte	66
	.byte	-19
	.byte	-95
	.byte	-121
	.byte	-20
	.byte	78
	.byte	51
	.byte	75
	.byte	-27
	.byte	-20
	.byte	-44
	.byte	-52
	.byte	-38
	.byte	126
	.byte	-75
	.byte	-71
	.byte	-16
	.byte	63
	.byte	-57
	.byte	21
	.byte	62
	.byte	-16
	.byte	96
	.byte	-72
	.byte	19
	.byte	0
	.byte	41
	.byte	24
	.byte	-64
	.byte	83
	.byte	102
	.byte	32
	.byte	-73
	.byte	-11
	.byte	-33
	.byte	14
	.byte	125
	.byte	-80
	.byte	-55
	.byte	-17
	.byte	-127
	.byte	-127
	.byte	4
	.byte	-23
	.byte	55
	.byte	92
	.byte	74
	.byte	94
	.byte	-127
	.byte	-98
	.byte	-67
	.byte	74
	.byte	26
	.byte	-104
	.byte	-109
	.byte	119
	.byte	-98
	.byte	24
	.byte	-24
	.byte	-55
	.byte	-58
	.byte	-114
	.byte	-120
	.byte	21
	.byte	-105
	.byte	-57
	.byte	-38
	.byte	101
	.byte	-57
	.byte	-28
	.byte	26
	.byte	-87
	.byte	-1
	.byte	31
	.byte	-124
	.byte	-48
	.byte	104
	.byte	-12
	.byte	-95
	.byte	6
	.byte	54
	.byte	-65
	.byte	-100
	.byte	23
	.byte	-123
	.byte	-17
	.byte	43
	.byte	112
	.byte	-90
	.byte	-20
	.byte	-109
	.byte	87
	.byte	-14
	.byte	-17
	.byte	27
	.byte	7
	.byte	-116
	.byte	90
	.byte	30
	.byte	109
	.byte	123
	.byte	2
	.byte	2
	.byte	122
	.byte	23
	.byte	41
	.byte	-67
	.byte	-12
	.byte	0
	.byte	8
	.byte	-2
	.byte	32
	.byte	-115
	.byte	-73
	.byte	-100
	.byte	-82
	.byte	-103
	.byte	37
	.byte	-64
	.byte	69
	.byte	-19
	.byte	32
	.byte	20
	.byte	40
	.byte	-109
	.byte	43
	.byte	67
	.byte	85
	.byte	-82
	.byte	63
	.byte	76
	.byte	33
	.byte	120
	.byte	-41
	.byte	-19
	.byte	1
	.byte	3
	.byte	-50
	.byte	109
	.byte	-66
	.byte	39
	.byte	71
	.byte	-84
	.byte	113
	.byte	41
	.byte	10
	.byte	66
	.byte	-111
	.byte	-99
	.byte	4
	.byte	7
	.byte	109
	.byte	-2
	.byte	-102
	.byte	-85
	.byte	-31
	.byte	73
	.byte	-67
	.byte	86
	.byte	57
	.byte	-42
	.byte	106
	.byte	-96
	.byte	99
	.byte	109
	.byte	80
	.byte	-91
	.byte	-91
	.byte	-110
	.byte	54
	.byte	73
	.byte	-16
	.byte	121
	.byte	-50
	.byte	47
	.byte	-33
	.byte	118
	.byte	-36
	.byte	65
	.byte	-54
	.byte	82
	.byte	-15
	.byte	-43
	.byte	23
	.byte	-19
	.byte	-83
	.byte	68
	.byte	10
	.byte	8
	.byte	14
	.byte	62
	.byte	99
	.byte	65
	.byte	65
	.byte	-102
	.byte	99
	.byte	-90
	.byte	-75
	.byte	33
	.byte	-116
	.byte	74
	.byte	-93
	.byte	57
	.byte	35
	.byte	98
	.byte	-62
	.byte	-46
	.byte	44
	.byte	-69
	.byte	67
	.byte	-109
	.byte	18
	.byte	-124
	.byte	-52
	.byte	48
	.byte	-2
	.byte	-72
	.byte	-95
	.byte	72
	.byte	-44
	.byte	-6
	.byte	36
	.byte	-85
	.byte	37
	.byte	108
	.byte	54
	.byte	84
	.byte	-94
	.byte	124
	.byte	-119
	.byte	-86
	.byte	-66
	.byte	-62
	.byte	-92
	.byte	69
	.byte	-46
	.byte	74
	.byte	-21
	.byte	39
	.byte	-35
	.byte	-63
	.byte	-48
	.byte	-48
	.byte	16
	.byte	66
	.byte	6
	.byte	37
	.byte	-75
	.byte	-30
	.byte	59
	.byte	-28
	.byte	79
	.byte	-49
	.byte	39
	.byte	-17
	.byte	17
	.byte	-111
	.byte	15
	.byte	-78
	.byte	-35
	.byte	-80
	.byte	-87
	.byte	3
	.byte	28
	.byte	28
	.byte	-81
	.byte	105
	.byte	-114
	.byte	-24
	.byte	26
	.byte	-44
	.byte	37
	.byte	-52
	.byte	-113
	.byte	28
	.byte	12
	.byte	89
	.byte	-76
	.byte	-88
	.byte	75
	.byte	4
	.byte	-31
	.byte	87
	.byte	55
	.byte	69
	.byte	44
	.byte	13
	.byte	111
	.byte	100
	.byte	25
	.byte	-94
	.byte	-13
	.byte	-26
	.byte	23
	.byte	-63
	.byte	-124
	.byte	90
	.byte	126
	.byte	-69
	.byte	30
	.byte	-64
	.byte	-62
	.byte	-128
	.byte	115
	.byte	3
	.byte	-124
	.byte	-72
	.byte	-2
	.byte	5
	.byte	-88
	.byte	-51
	.byte	-123
	.byte	-7
	.byte	-71
	.byte	-3
	.byte	49
	.byte	23
	.byte	119
	.byte	-4
	.byte	-100
	.byte	120
	.byte	69
	.byte	78
	.byte	-125
	.byte	113
	.byte	-72
	.byte	-75
	.byte	89
	.byte	-74
	.byte	13
	.byte	8
	.byte	24
	.byte	-14
	.byte	-116
	.byte	-127
	.byte	-40
	.byte	-72
	.byte	-109
	.byte	-42
	.byte	30
	.byte	-48
	.byte	17
	.byte	-69
	.byte	47
	.byte	108
	.byte	-123
	.byte	68
	.byte	16
	.byte	-76
	.byte	39
	.byte	-57
	.byte	-44
	.byte	-79
	.byte	-110
	.byte	15
	.byte	-125
	.byte	27
	.byte	66
	.byte	112
	.byte	-74
	.byte	57
	.byte	-28
	.byte	10
	.byte	84
	.byte	76
	.byte	-105
	.byte	98
	.byte	-86
	.byte	63
	.byte	-9
	.byte	-102
	.byte	21
	.byte	88
	.byte	68
	.byte	-47
	.byte	-6
	.byte	79
	.byte	-22
	.byte	-61
	.byte	-118
	.byte	92
	.byte	-9
	.byte	50
	.byte	121
	.byte	98
	.byte	51
	.byte	17
	.byte	7
	.byte	73
	.byte	-64
	.byte	106
	.byte	-52
	.byte	-6
	.byte	109
	.byte	-45
	.byte	25
	.byte	109
	.byte	119
	.byte	88
	.byte	103
	.byte	-105
	.byte	-2
	.byte	-57
	.byte	19
	.byte	-58
	.byte	77
	.byte	-101
	.byte	28
	.byte	-12
	.byte	-108
	.byte	-22
	.byte	-82
	.byte	35
	.byte	-43
	.byte	-45
	.byte	-102
	.byte	14
	.byte	-32
	.byte	-104
	.byte	14
	.byte	-69
	.byte	71
	.byte	34
	.byte	26
	.byte	95
	.byte	-22
	.byte	92
	.byte	33
	.byte	-51
	.byte	86
	.byte	-66
	.byte	-79
	.byte	-10
	.byte	-43
	.byte	47
	.byte	11
	.byte	-78
	.byte	44
	.byte	32
	.byte	20
	.byte	56
	.byte	13
	.byte	5
	.byte	32
	.byte	89
	.byte	-7
	.byte	6
	.byte	-24
	.byte	60
	.byte	-88
	.byte	14
	.byte	-56
	.byte	-71
	.byte	-60
	.byte	69
	.byte	70
	.byte	-90
	.byte	-2
	.byte	-49
	.byte	61
	.byte	9
	.byte	101
	.byte	60
	.byte	-3
	.byte	67
	.byte	127
	.byte	-94
	.byte	0
	.byte	-102
	.byte	112
	.byte	71
	.byte	121
	.byte	-10
	.byte	-117
	.byte	122
	.byte	-110
	.byte	-111
	.byte	81
	.byte	-41
	.byte	-29
	.byte	-91
	.byte	88
	.byte	-39
	.byte	101
	.byte	-99
	.byte	118
	.byte	19
	.byte	5
	.byte	-125
	.byte	-39
	.byte	118
	.byte	-1
	.byte	-6
	.byte	74
	.byte	-32
	.byte	-110
	.byte	109
	.byte	-118
	.byte	-70
	.byte	-109
	.byte	45
	.byte	-32
	.byte	-31
	.byte	40
	.byte	96
	.byte	-82
	.byte	-54
	.byte	50
	.byte	101
	.byte	-9
	.byte	-44
	.byte	115
	.byte	15
	.byte	22
	.byte	34
	.byte	39
	.byte	-112
	.byte	118
	.byte	-72
	.byte	35
	.byte	-120
	.byte	-79
	.byte	-92
	.byte	31
	.byte	-44
	.byte	4
	.byte	-49
	.byte	116
	.byte	111
	.byte	-107
	.byte	118
	.byte	50
	.byte	47
	.byte	75
	.byte	-80
	.byte	-70
	.byte	-32
	.byte	124
	.byte	-21
	.byte	37
	.byte	68
	.byte	-57
	.byte	-79
	.byte	-100
	.byte	-115
	.byte	4
	.byte	-113
	.byte	-54
	.byte	-106
	.byte	-57
	.byte	-119
	.byte	22
	.byte	-101
	.byte	114
	.byte	62
	.byte	2
	.byte	-84
	.byte	120
	.byte	104
	.byte	51
	.byte	-111
	.byte	-55
	.byte	-65
	.byte	38
	.byte	-17
	.byte	61
	.byte	-2
	.byte	-106
	.byte	20
	.byte	-53
	.byte	-107
	.byte	-6
	.byte	-5
	.byte	-38
	.byte	-22
	.byte	1
	.byte	65
	.byte	107
	.byte	45
	.byte	73
	.byte	106
	.byte	-13
	.byte	-111
	.byte	-27
	.byte	57
	.byte	-13
	.byte	-30
	.byte	83
	.byte	50
	.byte	-48
	.byte	-47
	.byte	-120
	.byte	117
	.byte	-106
	.byte	65
	.byte	3
	.byte	-89
	.byte	120
	.byte	74
	.byte	23
	.byte	-62
	.byte	-27
	.byte	122
	.byte	97
	.byte	6
	.byte	-28
	.byte	22
	.byte	-34
	.byte	-124
	.byte	34
	.byte	-6
	.byte	59
	.byte	-21
	.byte	-29
	.byte	-71
	.byte	114
	.byte	-46
	.byte	36
	.byte	121
	.byte	-22
	.byte	-103
	.byte	-113
	.byte	24
	.byte	-102
	.byte	79
	.byte	15
	.byte	75
	.byte	-82
	.byte	108
	.byte	126
	.byte	-109
	.byte	-126
	.byte	-89
	.byte	105
	.byte	-63
	.byte	-90
	.byte	-73
	.byte	69
	.byte	-105
	.byte	56
	.byte	-62
	.byte	102
	.byte	-59
	.byte	116
	.byte	-40
	.byte	-3
	.byte	58
	.byte	21
	.byte	-54
	.byte	103
	.byte	36
	.byte	-49
	.byte	74
	.byte	-89
	.byte	108
	.byte	123
	.byte	103
	.byte	-15
	.byte	-100
	.byte	60
	.byte	-114
	.byte	-116
	.byte	-94
	.byte	-47
	.byte	-113
	.byte	52
	.byte	50
	.byte	-40
	.byte	-27
	.byte	125
	.byte	-2
	.byte	126
	.byte	-121
	.byte	-82
	.byte	111
	.byte	43
	.byte	121
	.byte	13
	.byte	80
	.byte	9
	.byte	71
	.byte	123
	.byte	-36
	.byte	-118
	.byte	109
	.byte	51
	.byte	38
	.byte	-7
	.byte	103
	.byte	-37
	.byte	116
	.byte	52
	.byte	-94
	.byte	-12
	.byte	-52
	.byte	-2
	.byte	-72
	.byte	58
	.byte	48
	.byte	124
	.byte	-78
	.byte	-112
	.byte	-23
	.byte	-71
	.byte	95
	.byte	-77
	.byte	86
	.byte	-86
	.byte	67
	.byte	45
	.byte	95
	.byte	-96
	.byte	-59
	.byte	-112
	.byte	86
	.byte	-5
	.byte	10
	.byte	-88
	.byte	-49
	.byte	37
	.byte	-95
	.byte	-24
	.byte	56
	.byte	-28
	.byte	-91
	.byte	94
	.byte	-54
	.byte	-32
	.byte	-33
	.byte	-51
	.byte	25
	.byte	-5
	.byte	-108
	.byte	94
	.byte	22
	.byte	98
	.byte	-59
	.byte	46
	.byte	108
	.byte	86
	.byte	99
	.byte	-100
	.byte	-59
	.byte	-84
	.byte	-27
	.byte	-41
	.byte	15
	.byte	-65
	.byte	106
	.byte	57
	.byte	82
	.byte	-112
	.byte	-104
	.byte	-111
	.byte	3
	.byte	110
	.byte	-38
	.byte	49
	.byte	13
	.byte	-83
	.byte	73
	.byte	13
	.byte	33
	.byte	-78
	.byte	-27
	.byte	125
	.byte	-75
	.byte	-102
	.byte	-18
	.byte	118
	.byte	48
	.byte	-96
	.byte	-112
	.byte	-58
	.byte	55
	.byte	68
	.byte	-76
	.byte	-78
	.byte	81
	.byte	27
	.byte	-92
	.byte	-44
	.byte	26
	.byte	-95
	.byte	47
	.byte	18
	.byte	85
	.byte	-12
	.byte	-93
	.byte	82
	.byte	-8
	.byte	113
	.byte	25
	.byte	-45
	.byte	-111
	.byte	-104
	.byte	102
	.byte	11
	.byte	125
	.byte	-74
	.byte	-9
	.byte	-106
	.byte	62
	.byte	-78
	.byte	-54
	.byte	-127
	.byte	74
	.byte	109
	.byte	19
	.byte	118
	.byte	-113
	.byte	14
	.byte	19
	.byte	45
	.byte	90
	.byte	31
	.byte	109
	.byte	23
	.byte	-33
	.byte	86
	.byte	-121
	.byte	45
	.byte	2
	.byte	-67
	.byte	44
	.byte	30
	.byte	-34
	.byte	-8
	.byte	40
	.byte	5
	.byte	-60
	.byte	-122
	.byte	89
	.byte	58
	.byte	-105
	.byte	92
	.byte	-83
	.byte	-94
	.byte	97
	.byte	0
	.byte	-76
	.byte	-24
	.byte	110
	.byte	-44
	.byte	124
	.byte	-11
	.byte	-44
	.byte	109
	.byte	-19
	.byte	60
	.byte	-44
	.byte	64
	.byte	29
	.byte	115
	.byte	68
	.byte	51
	.byte	-90
	.byte	117
	.byte	-103
	.byte	21
	.byte	-91
	.byte	-116
	.byte	-4
	.byte	96
	.byte	76
	.byte	-77
	.byte	-21
	.byte	50
	.byte	-97
	.byte	-51
	.byte	-63
	.byte	-96
	.byte	-69
	.byte	18
	.byte	-124
	.byte	81
	.byte	27
	.byte	50
	.byte	0
	.byte	18
	.byte	103
	.byte	90
	.byte	-19
	.byte	97
	.byte	-100
	.byte	-85
	.byte	31
	.byte	-91
	.byte	17
	.byte	47
	.byte	53
	.byte	-11
	.byte	-112
	.byte	-45
	.byte	71
	.byte	-34
	.byte	30
	.byte	53
	.byte	-27
	.byte	87
	.byte	7
	.byte	-53
	.byte	109
	.byte	-99
	.byte	-4
	.byte	-25
	.byte	66
	.byte	-70
	.byte	92
	.byte	82
	.byte	-94
	.byte	-69
	.byte	-94
	.byte	1
	.byte	-128
	.byte	-122
	.byte	85
	.byte	106
	.byte	-18
	.byte	-116
	.byte	-117
	.byte	-108
	.byte	83
	.byte	-115
	.byte	-36
	.byte	30
	.byte	-6
	.byte	-116
	.byte	85
	.byte	-79
	.byte	-26
	.byte	79
	.byte	60
	.byte	-23
	.byte	18
	.byte	-77
	.byte	-89
	.byte	18
	.byte	-102
	.byte	-85
	.byte	-36
	.byte	53
	.byte	60
	.byte	-28
	.byte	25
	.byte	127
	.byte	-99
	.byte	84
	.byte	35
	.byte	78
	.byte	96
	.byte	-99
	.byte	125
	.byte	-77
	.byte	-57
	.byte	3
	.byte	64
	.byte	-6
	.byte	77
	.byte	-81
	.byte	-56
	.byte	119
	.byte	-63
	.byte	-91
	.byte	111
	.byte	-64
	.byte	-56
	.byte	96
	.byte	-87
	.byte	-67
	.byte	87
	.byte	-47
	.byte	-26
	.byte	-56
	.byte	88
	.byte	114
	.byte	-39
	.byte	-44
	.byte	117
	.byte	5
	.byte	54
	.byte	10
	.byte	-37
	.byte	49
	.byte	-9
	.byte	-74
	.byte	90
	.byte	85
	.byte	-34
	.byte	-107
	.byte	-41
	.byte	86
	.byte	-14
	.byte	-69
	.byte	35
	.byte	20
	.byte	-51
	.byte	-110
	.byte	-10
	.byte	-31
	.byte	-17
	.byte	-76
	.byte	4
	.byte	-81
	.byte	-87
	.byte	71
	.byte	-120
	.byte	113
	.byte	-67
	.byte	-124
	.byte	-128
	.byte	-85
	.byte	49
	.byte	30
	.byte	6
	.byte	-68
	.byte	28
	.byte	36
	.byte	39
	.byte	99
	.byte	-90
	.byte	-81
	.byte	-113
	.byte	6
	.byte	-59
	.byte	121
	.byte	-52
	.byte	74
	.byte	-103
	.byte	-72
	.byte	-87
	.byte	-13
	.byte	85
	.byte	27
	.byte	67
	.byte	-85
	.byte	-106
	.byte	32
	.byte	80
	.byte	-93
	.byte	-18
	.byte	-45
	.byte	78
	.byte	2
	.byte	122
	.byte	-4
	.byte	112
	.byte	-104
	.byte	3
	.byte	-5
	.byte	122
	.byte	69
	.byte	-81
	.byte	-13
	.byte	-35
	.byte	9
	.byte	-10
	.byte	36
	.byte	-45
	.byte	49
	.byte	-119
	.byte	-122
	.byte	-124
	.byte	52
	.byte	13
	.byte	111
	.byte	-19
	.byte	103
	.byte	82
	.byte	3
	.byte	9
	.byte	-113
	.byte	79
	.byte	-109
	.byte	9
	.byte	-83
	.byte	-67
	.byte	-68
	.byte	30
	.byte	-85
	.byte	37
	.byte	-26
	.byte	77
	.byte	-26
	.byte	-83
	.byte	-43
	.byte	-2
	.byte	104
	.byte	99
	.byte	-20
	.byte	-16
	.byte	21
	.byte	39
	.byte	-92
	.byte	-41
	.byte	-90
	.byte	30
	.byte	78
	.byte	-53
	.byte	-60
	.byte	80
	.byte	-45
	.byte	0
	.byte	-55
	.byte	-117
	.byte	-77
	.byte	100
	.byte	77
	.byte	33
	.byte	-33
	.byte	110
	.byte	-43
	.byte	-107
	.byte	60
	.byte	-64
	.byte	98
	.byte	24
	.byte	122
	.byte	-126
	.byte	24
	.byte	-81
	.byte	-6
	.byte	21
	.byte	-84
	.byte	12
	.byte	-46
	.byte	104
	.byte	93
	.byte	124
	.byte	17
	.byte	-16
	.byte	-126
	.byte	3
	.byte	-126
	.byte	-74
	.byte	-63
	.byte	7
	.byte	10
	.byte	25
	.byte	34
	.byte	-125
	.byte	7
	.byte	-27
	.byte	-30
	.byte	72
	.byte	-5
	.byte	124
	.byte	71
	.byte	-116
	.byte	100
	.byte	91
	.byte	118
	.byte	95
	.byte	-35
	.byte	-97
	.byte	119
	.byte	-99
	.byte	111
	.byte	-67
	.byte	19
	.byte	-20
	.byte	28
	.byte	-104
	.byte	-105
	.byte	-65
	.byte	-28
	.byte	-41
	.byte	3
	.byte	2
	.byte	-29
	.byte	-94
	.byte	-103
	.byte	-69
	.byte	52
	.byte	-37
	.byte	-112
	.byte	-52
	.byte	-122
	.byte	-111
	.byte	-86
	.byte	-93
	.byte	-40
	.byte	68
	.byte	67
	.byte	22
	.byte	-85
	.byte	-75
	.byte	36
	.byte	79
	.byte	117
	.byte	-33
	.byte	104
	.byte	-60
	.byte	80
	.byte	-100
	.byte	61
	.byte	47
	.byte	0
	.byte	-80
	.byte	-14
	.byte	-42
	.byte	-35
	.byte	114
	.byte	57
	.byte	108
	.byte	95
	.byte	94
	.byte	120
	.byte	-19
	.byte	45
	.byte	-62
	.byte	32
	.byte	-54
	.byte	123
	.byte	-69
	.byte	24
	.byte	34
	.byte	67
	.byte	52
	.byte	-52
	.byte	-128
	.byte	45
	.byte	-76
	.byte	113
	.byte	-29
	.byte	75
	.byte	-40
	.byte	-128
	.byte	98
	.byte	-107
	.byte	-15
	.byte	118
	.byte	-95
	.byte	-94
	.byte	34
	.byte	-42
	.byte	102
	.byte	92
	.byte	59
	.byte	-49
	.byte	80
	.byte	-68
	.byte	-104
	.byte	-101
	.byte	104
	.byte	96
	.byte	-57
	.byte	43
	.byte	-41
	.byte	-24
	.byte	43
	.byte	38
	.byte	112
	.byte	-77
	.byte	49
	.byte	32
	.byte	-30
	.byte	-97
	.byte	-12
	.byte	7
	.byte	-128
	.byte	117
	.byte	-116
	.byte	36
	.byte	-96
	.byte	4
	.byte	-84
	.byte	48
	.byte	63
	.byte	21
	.byte	70
	.byte	60
	.byte	-107
	.byte	-69
	.byte	82
	.byte	-41
	.byte	-84
	.byte	-100
	.byte	122
	.byte	95
	.byte	-82
	.byte	-89
	.byte	-9
	.byte	27
	.byte	-114
	.byte	127
	.byte	32
	.byte	-83
	.byte	-29
	.byte	53
	.byte	1
	.byte	68
	.byte	14
	.byte	89
	.byte	67
	.byte	-12
	.byte	94
	.byte	-63
	.byte	-105
	.byte	-12
	.byte	-48
	.byte	87
	.byte	-69
	.byte	7
	.byte	-66
	.byte	-39
	.byte	126
	.byte	-55
	.byte	-9
	.byte	28
	.byte	-20
	.byte	94
	.byte	59
	.byte	-27
	.byte	-42
	.byte	-112
	.byte	116
	.byte	-72
	.byte	20
	.byte	-57
	.byte	97
	.byte	19
	.byte	106
	.byte	-18
	.byte	96
	.byte	-28
	.byte	-124
	.byte	-104
	.byte	84
	.byte	-86
	.byte	2
	.byte	-74
	.byte	-72
	.byte	-95
	.byte	-62
	.byte	52
	.byte	126
	.byte	-34
	.byte	-93
	.byte	-45
	.byte	-116
	.byte	81
	.byte	-28
	.byte	-46
	.byte	13
	.byte	118
	.byte	30
	.byte	-75
	.byte	-67
	.byte	40
	.byte	16
	.byte	115
	.byte	77
	.byte	33
	.byte	81
	.byte	-126
	.byte	106
	.byte	97
	.byte	30
	.byte	-102
	.byte	113
	.byte	-34
	.byte	45
	.byte	-88
	.byte	61
	.byte	-85
	.byte	123
	.byte	-19
	.byte	-49
	.byte	-25
	.byte	-61
	.byte	107
	.byte	93
	.byte	-88
	.byte	-59
	.byte	74
	.byte	18
	.byte	94
	.byte	-123
	.byte	-115
	.byte	-73
	.byte	112
	.byte	41
	.byte	-88
	.byte	15
	.byte	-71
	.byte	-61
	.byte	-68
	.byte	-128
	.byte	2
	.byte	-117
	.byte	64
	.byte	-121
	.byte	52
	.byte	-109
	.byte	39
	.byte	34
	.byte	26
	.byte	37
	.byte	-103
	.byte	-77
	.byte	-88
	.byte	113
	.byte	90
	.byte	120
	.byte	-115
	.byte	-29
	.byte	-37
	.byte	52
	.byte	-17
	.byte	-103
	.byte	30
	.byte	125
	.byte	-8
	.byte	-84
	.byte	101
	.byte	31
	.byte	43
	.byte	25
	.byte	94
	.byte	49
	.byte	-89
	.byte	-79
	.byte	-77
	.byte	-57
	.byte	-123
	.byte	85
	.byte	27
	.byte	-89
	.byte	-61
	.byte	4
	.byte	61
	.byte	7
	.byte	-47
	.byte	-17
	.byte	-55
	.byte	91
	.byte	20
	.byte	65
	.byte	123
	.byte	-110
	.byte	91
	.byte	-86
	.byte	-25
	.byte	76
	.byte	113
	.byte	109
	.byte	-71
	.byte	118
	.byte	41
	.byte	9
	.byte	-91
	.byte	115
	.byte	-43
	.byte	-86
	.byte	-40
	.byte	-83
	.byte	109
	.byte	-101
	.byte	-86
	.byte	-105
	.byte	-41
	.byte	62
	.byte	79
	.byte	-26
	.byte	0
	.byte	-72
	.byte	13
	.byte	4
	.byte	90
	.byte	30
	.byte	22
	.byte	-117
	.byte	47
	.byte	3
	.byte	-27
	.byte	114
	.byte	118
	.byte	-110
	.byte	123
	.byte	-34
	.byte	-25
	.byte	2
	.byte	-85
	.byte	51
	.byte	18
	.byte	47
	.byte	94
	.byte	1
	.byte	9
	.byte	-72
	.byte	-126
	.byte	100
	.byte	-84
	.byte	-35
	.byte	74
	.byte	60
	.byte	-122
	.byte	69
	.byte	-10
	.byte	49
	.byte	35
	.byte	39
	.byte	-39
	.byte	111
	.byte	92
	.byte	72
	.byte	-107
	.byte	-85
	.byte	78
	.byte	-123
	.byte	25
	.byte	100
	.byte	109
	.byte	-30
	.byte	-49
	.byte	-112
	.byte	-87
	.byte	-64
	.byte	-18
	.byte	85
	.byte	70
	.byte	26
	.byte	-11
	.byte	-44
	.byte	26
	.byte	-30
	.byte	81
	.byte	121
	.byte	-71
	.byte	10
	.byte	124
	.byte	-41
	.byte	93
	.byte	58
	.byte	-99
	.byte	-92
	.byte	118
	.byte	-73
	.byte	-91
	.byte	-116
	.byte	-59
	.byte	118
	.byte	98
	.byte	-96
	.byte	102
	.byte	90
	.byte	-112
	.byte	62
	.byte	-63
	.byte	63
	.byte	-21
	.byte	-20
	.byte	-91
	.byte	74
	.byte	96
	.byte	-41
	.byte	18
	.byte	-97
	.byte	-48
	.byte	-29
	.byte	75
	.byte	89
	.byte	102
	.byte	79
	.byte	97
	.byte	-13
	.byte	71
	.byte	-42
	.byte	-117
	.byte	11
	.byte	-91
	.byte	-102
	.byte	93
	.byte	13
	.byte	64
	.byte	40
	.byte	-42
	.byte	92
	.byte	-98
	.byte	12
	.byte	87
	.byte	-100
	.byte	-74
	.byte	-25
	.byte	123
	.byte	-30
	.byte	117
	.byte	-30
	.byte	50
	.byte	10
	.byte	107
	.byte	4
	.byte	-53
	.byte	-58
	.byte	94
	.byte	-110
	.byte	32
	.byte	42
	.byte	68
	.byte	90
	.byte	23
	.byte	112
	.byte	-54
	.byte	74
	.byte	98
	.byte	-30
	.byte	69
	.byte	83
	.byte	41
	.byte	-69
	.byte	35
	.byte	-26
	.byte	53
	.byte	-22
	.byte	58
	.byte	-49
	.byte	67
	.byte	98
	.byte	108
	.byte	120
	.byte	-91
	.byte	93
	.byte	2
	.byte	-128
	.byte	-3
	.byte	88
	.byte	74
	.byte	114
	.byte	-119
	.byte	48
	.byte	-47
	.byte	-58
	.byte	126
	.byte	-34
	.byte	-3
	.byte	83
	.byte	61
	.byte	41
	.byte	83
	.byte	-58
	.byte	-53
	.byte	-66
	.byte	64
	.byte	98
	.byte	69
	.byte	-37
	.byte	34
	.byte	-29
	.byte	66
	.byte	-83
	.byte	-31
	.byte	89
	.byte	-90
	.byte	78
	.byte	-32
	.byte	-80
	.byte	115
	.byte	-105
	.byte	-115
	.byte	-26
	.byte	-121
	.byte	98
	.byte	-86
	.byte	48
	.byte	-61
	.byte	66
	.byte	75
	.byte	-123
	.byte	-86
	.byte	-8
	.byte	112
	.byte	-4
	.byte	86
	.byte	37
	.byte	73
	.byte	47
	.byte	115
	.byte	70
	.byte	0
	.byte	-70
	.byte	-50
	.byte	46
	.byte	127
	.byte	45
	.byte	-117
	.byte	-36
	.byte	-57
	.byte	-126
	.byte	-54
	.byte	-105
	.byte	-36
	.byte	123
	.byte	-66
	.byte	89
	.byte	-20
	.byte	-34
	.byte	-7
	.byte	57
	.byte	23
	.byte	98
	.byte	-51
	.byte	-113
	.byte	-29
	.byte	-116
	.byte	-13
	.byte	16
	.byte	-15
	.byte	-127
	.byte	-98
	.byte	-19
	.byte	-88
	.byte	75
	.byte	32
	.byte	118
	.byte	124
	.byte	89
	.byte	60
	.byte	-13
	.byte	-118
	.byte	43
	.byte	79
	.byte	15
	.byte	-100
	.byte	69
	.byte	-71
	.byte	-110
	.byte	-5
	.byte	96
	.byte	-20
	.byte	-29
	.byte	68
	.byte	-95
	.byte	-46
	.byte	127
	.byte	-34
	.byte	-53
	.byte	-94
	.byte	36
	.byte	-85
	.byte	-31
	.byte	45
	.byte	114
	.byte	-24
	.byte	-103
	.byte	62
	.byte	72
	.byte	127
	.byte	-33
	.byte	-101
	.byte	3
	.byte	89
	.byte	-1
	.byte	-3
	.byte	28
	.byte	37
	.byte	104
	.byte	53
	.byte	101
	.byte	-124
	.byte	-15
	.byte	81
	.byte	25
	.byte	-57
	.byte	-56
	.byte	1
	.byte	73
	.byte	-35
	.byte	-26
	.byte	21
	.byte	98
	.byte	-93
	.byte	124
	.byte	-47
	.byte	-17
	.byte	-4
	.byte	-89
	.byte	-24
	.byte	63
	.byte	62
	.byte	-51
	.byte	4
	.byte	109
	.byte	110
	.byte	-52
	.byte	-111
	.byte	-41
	.byte	4
	.byte	35
	.byte	-113
	.byte	50
	.byte	-99
	.byte	-100
	.byte	44
	.byte	-68
	.byte	65
	.byte	14
	.byte	-14
	.byte	-6
	.byte	-59
	.byte	70
	.byte	-86
	.byte	-37
	.byte	11
	.byte	76
	.byte	-12
	.byte	-81
	.byte	33
	.byte	58
	.byte	-16
	.byte	-39
	.byte	-111
	.byte	9
	.byte	-74
	.byte	83
	.byte	8
	.byte	27
	.byte	-108
	.byte	110
	.byte	24
	.byte	-99
	.byte	-92
	.byte	74
	.byte	107
	.byte	66
	.byte	-98
	.byte	-60
	.byte	-117
	.byte	-102
	.byte	7
	.byte	76
	.byte	-35
	.byte	-69
	.byte	0
	.byte	11
	.byte	57
	.byte	40
	.byte	-94
	.byte	118
	.byte	-78
	.byte	54
	.byte	127
	.byte	-126
	.byte	-86
	.byte	19
	.byte	104
	.byte	-30
	.byte	39
	.byte	-67
	.byte	3
	.byte	119
	.byte	55
	.byte	31
	.byte	-51
	.byte	-15
	.byte	-75
	.byte	-91
	.byte	-107
	.byte	-3
	.byte	92
	.byte	41
	.byte	106
	.byte	-114
	.byte	57
	.byte	-67
	.byte	45
	.byte	65
	.byte	6
	.byte	-126
	.byte	-62
	.byte	-126
	.byte	-66
	.byte	21
	.byte	-51
	.byte	103
	.byte	120
	.byte	-11
	.byte	125
	.byte	-44
	.byte	102
	.byte	81
	.byte	-121
	.byte	75
	.byte	3
	.byte	-28
	.byte	3
	.byte	48
	.byte	101
	.byte	87
	.byte	46
	.byte	79
	.byte	-107
	.byte	24
	.byte	7
	.byte	-106
	.byte	90
	.byte	68
	.byte	60
	.byte	61
	.byte	-55
	.byte	-117
	.byte	107
	.byte	94
	.byte	-15
	.byte	68
	.byte	-51
	.byte	58
	.byte	17
	.byte	105
	.byte	-61
	.byte	-128
	.byte	-52
	.byte	70
	.byte	94
	.byte	-120
	.byte	18
	.byte	123
	.byte	-29
	.byte	-44
	.byte	-28
	.byte	-67
	.byte	100
	.byte	-34
	.byte	-83
	.byte	-76
	.byte	-83
	.byte	-35
	.byte	-104
	.byte	101
	.byte	-55
	.byte	69
	.byte	100
	.byte	-94
	.byte	-46
	.byte	62
	.byte	-83
	.byte	123
	.byte	-99
	.byte	82
	.byte	78
	.byte	-49
	.byte	-67
	.byte	50
	.byte	-62
	.byte	46
	.byte	91
	.byte	34
	.byte	-59
	.byte	12
	.byte	-124
	.byte	6
	.byte	36
	.byte	76
	.byte	1
	.byte	-33
	.byte	-14
	.byte	-48
	.byte	-103
	.byte	106
	.byte	-68
	.byte	14
	.byte	126
	.byte	-14
	.byte	-13
	.byte	37
	.byte	-71
	.byte	-77
	.byte	-53
	.byte	24
	.byte	-111
	.byte	-96
	.byte	-15
	.byte	-16
	.byte	-55
	.byte	-49
	.byte	-29
	.byte	87
	.byte	126
	.byte	88
	.byte	29
	.byte	-115
	.byte	-31
	.byte	-119
	.byte	21
	.byte	46
	.byte	52
	.byte	-120
	.byte	45
	.byte	69
	.byte	-16
	.byte	-27
	.byte	46
	.byte	-13
	.byte	91
	.byte	-117
	.byte	113
	.byte	77
	.byte	6
	.byte	-122
	.byte	31
	.byte	-91
	.byte	47
	.byte	-65
	.byte	82
	.byte	34
	.byte	-60
	.byte	-126
	.byte	-63
	.byte	10
	.byte	-36
	.byte	-25
	.byte	64
	.byte	-117
	.byte	8
	.byte	-44
	.byte	-30
	.byte	-29
	.byte	-102
	.byte	-69
	.byte	-98
	.byte	123
	.byte	127
	.byte	-115
	.byte	97
	.byte	51
	.byte	-48
	.byte	118
	.byte	-112
	.byte	32
	.byte	9
	.byte	-91
	.byte	63
	.byte	-25
	.byte	-76
	.byte	96
	.byte	74
	.byte	-51
	.byte	22
	.byte	-83
	.byte	-104
	.byte	50
	.byte	40
	.byte	-39
	.byte	45
	.byte	100
	.byte	56
	.byte	8
	.byte	121
	.byte	67
	.byte	-77
	.byte	-5
	.byte	-78
	.byte	55
	.byte	-36
	.byte	-85
	.byte	91
	.byte	-98
	.byte	76
	.byte	-100
	.byte	45
	.byte	51
	.byte	70
	.byte	-113
	.byte	12
	.byte	-69
	.byte	-21
	.byte	67
	.byte	23
	.byte	42
	.byte	31
	.byte	44
	.byte	-83
	.byte	-15
	.byte	123
	.byte	100
	.byte	90
	.byte	-1
	.byte	97
	.byte	109
	.byte	-56
	.byte	-24
	.byte	123
	.byte	-7
	.byte	100
	.byte	-31
	.byte	115
	.byte	-110
	.byte	28
	.byte	24
	.byte	-79
	.byte	9
	.byte	24
	.byte	61
	.byte	1
	.byte	-49
	.byte	-116
	.byte	61
	.byte	-96
	.byte	121
	.byte	-79
	.byte	74
	.byte	-15
	.byte	20
	.byte	-65
	.byte	-44
	.byte	70
	.byte	-16
	.byte	-22
	.byte	28
	.byte	18
	.byte	67
	.byte	-66
	.byte	-19
	.byte	87
	.byte	118
	.byte	-62
	.byte	-54
	.byte	-67
	.byte	82
	.byte	87
	.byte	109
	.byte	-85
	.byte	-71
	.byte	37
	.byte	17
	.byte	12
	.byte	-72
	.byte	71
	.byte	-27
	.byte	-103
	.byte	99
	.byte	56
	.byte	-22
	.byte	56
	.byte	-39
	.byte	66
	.byte	-6
	.byte	50
	.byte	-30
	.byte	16
	.byte	-19
	.byte	72
	.byte	44
	.byte	56
	.byte	-126
	.byte	106
	.byte	-128
	.byte	-72
	.byte	-75
	.byte	-15
	.byte	110
	.byte	47
	.byte	75
	.byte	78
	.byte	-2
	.byte	-118
	.byte	2
	.byte	-33
	.byte	83
	.byte	78
	.byte	-84
	.byte	75
	.byte	-95
	.byte	-48
	.byte	-17
	.byte	18
	.byte	-127
	.byte	27
	.byte	-63
	.byte	-33
	.byte	-56
	.byte	126
	.byte	-88
	.byte	-64
	.byte	-87
	.byte	-32
	.byte	86
	.byte	-45
	.byte	-118
	.byte	72
	.byte	95
	.byte	-115
	.byte	24
	.byte	-73
	.byte	119
	.byte	65
	.byte	-17
	.byte	-44
	.byte	34
	.byte	-80
	.byte	-122
	.byte	-96
	.byte	7
	.byte	15
	.byte	126
	.byte	-76
	.byte	95
	.byte	-72
	.byte	82
	.byte	90
	.byte	87
	.byte	114
	.byte	-46
	.byte	-125
	.byte	71
	.byte	89
	.byte	-98
	.byte	126
	.byte	-22
	.byte	21
	.byte	71
	.byte	-4
	.byte	119
	.byte	-54
	.byte	7
	.byte	52
	.byte	-33
	.byte	17
	.byte	5
	.byte	-128
	.byte	-82
	.byte	40
	.byte	-56
	.byte	45
	.byte	-49
	.byte	38
	.byte	-101
	.byte	-69
	.byte	84
	.byte	39
	.byte	57
	.byte	-10
	.byte	39
	.byte	-58
	.byte	44
	.byte	-29
	.byte	53
	.byte	-117
	.byte	-85
	.byte	-9
	.byte	32
	.byte	-119
	.byte	4
	.byte	57
	.byte	-1
	.byte	68
	.byte	-18
	.byte	-24
	.byte	34
	.byte	64
	.byte	-11
	.byte	-84
	.byte	-68
	.byte	47
	.byte	-107
	.byte	66
	.byte	58
	.byte	16
	.byte	44
	.byte	-40
	.byte	78
	.byte	-72
	.byte	-89
	.byte	-121
	.byte	70
	.byte	13
	.byte	102
	.byte	120
	.byte	26
	.byte	51
	.byte	44
	.byte	111
	.byte	-45
	.byte	-37
	.byte	-42
	.byte	-46
	.byte	-81
	.byte	-93
	.byte	-90
	.byte	18
	.byte	-70
	.byte	-116
	.byte	-102
	.byte	-76
	.byte	2
	.byte	-12
	.byte	24
	.byte	-31
	.byte	125
	.byte	34
	.byte	95
	.byte	5
	.byte	105
	.byte	75
	.byte	30
	.byte	-106
	.byte	61
	.byte	-3
	.byte	-101
	.byte	40
	.byte	-92
	.byte	-40
	.byte	95
	.byte	97
	.byte	85
	.byte	90
	.byte	86
	.byte	8
	.byte	38
	.byte	-79
	.byte	-30
	.byte	-1
	.byte	-33
	.byte	126
	.byte	-97
	.byte	-108
	.byte	52
	.byte	121
	.byte	-71
	.byte	74
	.byte	-59
	.byte	84
	.byte	74
	.byte	2
	.byte	-32
	.byte	11
	.byte	-77
	.byte	-74
	.byte	-118
	.byte	-18
	.byte	120
	.byte	-86
	.byte	97
	.byte	-79
	.byte	-54
	.byte	-62
	.byte	-30
	.byte	-97
	.byte	-68
	.byte	-6
	.byte	-108
	.byte	102
	.byte	-72
	.byte	14
	.byte	-124
	.byte	52
	.byte	101
	.byte	-3
	.byte	-42
	.byte	-27
	.byte	106
	.byte	-104
	.byte	66
	.byte	127
	.byte	-89
	.byte	75
	.byte	42
	.byte	-21
	.byte	-6
	.byte	27
	.byte	-33
	.byte	-76
	.byte	26
	.byte	110
	.byte	-108
	.byte	-115
	.byte	-2
	.byte	116
	.byte	-85
	.byte	-21
	.byte	7
	.byte	-90
	.byte	-86
	.byte	43
	.byte	-114
	.byte	-12
	.byte	-35
	.byte	5
	.byte	11
	.byte	-59
	.byte	-69
	.byte	-84
	.byte	-83
	.byte	-22
	.byte	-104
	.byte	-61
	.byte	-97
	.byte	122
	.byte	107
	.byte	-3
	.byte	88
	.byte	37
	.byte	-91
	.byte	55
	.byte	-65
	.byte	25
	.byte	15
	.byte	-50
	.byte	33
	.byte	26
	.byte	-25
	.byte	-76
	.byte	-82
	.byte	-17
	.byte	-72
	.byte	53
	.byte	111
	.byte	47
	.byte	8
	.byte	65
	.byte	-42
	.byte	52
	.byte	112
	.byte	46
	.byte	-111
	.byte	-44
	.byte	25
	.byte	-110
	.byte	-128
	.byte	55
	.byte	-117
	.byte	99
	.byte	46
	.byte	-11
	.byte	117
	.byte	42
	.byte	-86
	.byte	-123
	.byte	-91
	.byte	10
	.byte	31
	.byte	-48
	.byte	40
	.byte	97
	.byte	-14
	.byte	45
	.byte	97
	.byte	109
	.byte	-48
	.byte	118
	.byte	93
	.byte	30
	.byte	-28
	.byte	-126
	.byte	-120
	.byte	-89
	.byte	-50
	.byte	-111
	.byte	-58
	.byte	-108
	.byte	55
	.byte	22
	.byte	79
	.byte	-65
	.byte	-108
	.byte	54
	.byte	63
	.byte	-63
	.byte	-85
	.byte	-103
	.byte	-106
	.byte	-28
	.byte	-56
	.byte	-31
	.byte	-1
	.byte	97
	.byte	92
	.byte	-41
	.byte	-38
	.byte	-78
	.byte	14
	.byte	55
	.byte	-84
	.byte	127
	.byte	69
	.byte	-68
	.byte	-49
	.byte	25
	.byte	-38
	.byte	-123
	.byte	-90
	.byte	109
	.byte	-58
	.byte	-109
	.byte	111
	.byte	-12
	.byte	-50
	.byte	-85
	.byte	-107
	.byte	0
	.byte	-19
	.byte	-102
	.byte	30
	.byte	49
	.byte	51
	.byte	-87
	.byte	-119
	.byte	23
	.byte	-49
	.byte	124
	.byte	108
	.byte	16
	.byte	-39
	.byte	56
	.byte	110
	.byte	59
	.byte	-101
	.byte	-22
	.byte	-82
	.byte	-21
	.byte	-45
	.byte	28
	.byte	-100
	.byte	111
	.byte	105
	.byte	20
	.byte	26
	.byte	59
	.byte	8
	.byte	-38
	.byte	89
	.byte	-65
	.byte	-38
	.byte	118
	.byte	19
	.byte	-74
	.byte	-80
	.byte	-46
	.byte	33
	.byte	-88
	.byte	111
	.byte	40
	.byte	80
	.byte	3
	.byte	-38
	.byte	-119
	.byte	-12
	.byte	71
	.byte	11
	.byte	-87
	.byte	-20
	.byte	-32
	.byte	85
	.byte	-4
	.byte	42
	.byte	98
	.byte	-8
	.byte	74
	.byte	-75
	.byte	-80
	.byte	118
	.byte	-44
	.byte	66
	.byte	40
	.byte	75
	.byte	3
	.byte	-5
	.byte	19
	.byte	88
	.byte	-127
	.byte	-73
	.byte	-125
	.byte	61
	.byte	21
	.byte	59
	.byte	-37
	.byte	122
	.byte	-33
	.byte	-56
	.byte	-52
	.byte	-25
	.byte	26
	.byte	22
	.byte	48
	.byte	-4
	.byte	-45
	.byte	-41
	.byte	-125
	.byte	-84
	.byte	-85
	.byte	96
	.byte	38
	.byte	-127
	.byte	57
	.byte	37
	.byte	94
	.byte	66
	.byte	95
	.byte	36
	.byte	48
	.byte	64
	.byte	110
	.byte	-30
	.byte	-32
	.byte	98
	.byte	-29
	.byte	78
	.byte	82
	.byte	117
	.byte	59
	.byte	88
	.byte	-10
	.byte	-21
	.byte	-121
	.byte	82
	.byte	14
	.byte	38
	.byte	-82
	.byte	-77
	.byte	-48
	.byte	52
	.byte	-30
	.byte	63
	.byte	95
	.byte	73
	.byte	-104
	.byte	84
	.byte	8
	.byte	-3
	.byte	-29
	.byte	-80
	.byte	-97
	.byte	3
	.byte	69
	.byte	-43
	.byte	58
	.byte	53
	.byte	-127
	.byte	-77
	.byte	-53
	.byte	-113
	.byte	117
	.byte	-39
	.byte	-93
	.byte	23
	.byte	31
	.byte	-8
	.byte	65
	.byte	-83
	.byte	118
	.byte	90
	.byte	110
	.byte	72
	.byte	-50
	.byte	67
	.byte	16
	.byte	85
	.byte	107
	.byte	2
	.byte	68
	.byte	-49
	.byte	38
	.byte	31
	.byte	98
	.byte	-38
	.byte	-19
	.byte	-118
	.byte	57
	.byte	-122
	.byte	75
	.byte	-117
	.byte	91
	.byte	54
	.byte	73
	.byte	36
	.byte	71
	.byte	-122
	.byte	-58
	.byte	89
	.byte	99
	.byte	-19
	.byte	-83
	.byte	16
	.byte	36
	.byte	-56
	.byte	-111
	.byte	87
	.byte	-108
	.byte	120
	.byte	68
	.byte	-76
	.byte	-98
	.byte	-22
	.byte	-71
	.byte	-25
	.byte	-67
	.byte	39
	.byte	121
	.byte	40
	.byte	106
	.byte	-38
	.byte	-97
	.byte	-47
	.byte	122
	.byte	-65
	.byte	75
	.byte	25
	.byte	-17
	.byte	85
	.byte	25
	.byte	-22
	.byte	64
	.byte	85
	.byte	-24
	.byte	2
	.byte	-52
	.byte	90
	.byte	-53
	.byte	-64
	.byte	-53
	.byte	22
	.byte	103
	.byte	-8
	.byte	-4
	.byte	-75
	.byte	11
	.byte	-12
	.byte	-44
	.byte	113
	.byte	-9
	.byte	-81
	.byte	18
	.byte	80
	.byte	73
	.byte	75
	.byte	44
	.byte	106
	.byte	47
	.byte	-2
	.byte	14
	.byte	-7
	.byte	15
	.byte	44
	.byte	125
	.byte	6
	.byte	12
	.byte	-116
	.byte	110
	.byte	6
	.byte	57
	.byte	-34
	.byte	-26
	.byte	28
	.byte	-12
	.byte	-90
	.byte	-9
	.byte	-117
	.byte	-76
	.byte	-9
	.byte	-18
	.byte	69
	.byte	20
	.byte	106
	.byte	0
	.byte	-68
	.byte	-30
	.byte	-38
	.byte	-93
	.byte	0
	.byte	74
	.byte	99
	.byte	-66
	.byte	-26
	.byte	-105
	.byte	93
	.byte	111
	.byte	75
	.byte	102
	.byte	-64
	.byte	125
	.byte	-117
	.byte	-107
	.byte	-50
	.byte	-96
	.byte	-21
	.byte	-55
	.byte	32
	.byte	32
	.byte	44
	.byte	-112
	.byte	-101
	.byte	82
	.byte	-81
	.byte	68
	.byte	104
	.byte	119
	.byte	-50
	.byte	-110
	.byte	-20
	.byte	-91
	.byte	-15
	.byte	-39
	.byte	-83
	.byte	81
	.byte	37
	.byte	87
	.byte	-95
	.byte	127
	.byte	4
	.byte	-120
	.byte	46
	.byte	65
	.byte	-8
	.byte	-56
	.byte	-6
	.byte	15
	.byte	74
	.byte	-102
	.byte	51
	.byte	104
	.byte	-59
	.byte	4
	.byte	67
	.byte	-1
	.byte	-104
	.byte	93
	.byte	64
	.byte	-49
	.byte	26
	.byte	-39
	.byte	68
	.byte	-22
	.byte	-77
	.byte	-110
	.byte	-88
	.byte	59
	.byte	-103
	.byte	-82
	.byte	-99
	.byte	-92
	.byte	-62
	.byte	-100
	.byte	32
	.byte	-26
	.byte	71
	.byte	102
	.byte	-63
	.byte	16
	.byte	39
	.byte	121
	.byte	-2
	.byte	-40
	.byte	29
	.byte	-103
	.byte	-92
	.byte	34
	.byte	-74
	.byte	-8
	.byte	8
	.byte	92
	.byte	127
	.byte	42
	.byte	-127
	.byte	127
	.byte	107
	.byte	0
	.byte	-94
	.byte	-21
	.byte	46
	.byte	-114
	.byte	71
	.byte	87
	.byte	58
	.byte	-37
	.byte	-100
	.byte	98
	.byte	99
	.byte	-108
	.byte	123
	.byte	60
	.byte	89
	.byte	6
	.byte	-123
	.byte	-118
	.byte	89
	.byte	48
	.byte	45
	.byte	101
	.byte	-25
	.byte	10
	.byte	-4
	.byte	-41
	.byte	-98
	.byte	9
	.byte	51
	.byte	44
	.byte	69
	.byte	-53
	.byte	-104
	.byte	-110
	.byte	6
	.byte	-10
	.byte	-24
	.byte	-44
	.byte	-54
	.byte	-17
	.byte	-23
	.byte	-39
	.byte	-115
	.byte	-78
	.byte	-93
	.byte	-67
	.byte	-57
	.byte	61
	.byte	-87
	.byte	125
	.byte	95
	.byte	31
	.byte	-63
	.byte	19
	.byte	-40
	.byte	-48
	.byte	-1
	.byte	-68
	.byte	81
	.byte	72
	.byte	-113
	.byte	-26
	.byte	-50
	.byte	105
	.byte	122
	.byte	-46
	.byte	58
	.byte	-6
	.byte	23
	.byte	71
	.byte	-100
	.byte	-111
	.byte	-77
	.byte	-11
	.byte	122
	.byte	-101
	.byte	-27
	.byte	1
	.byte	-114
	.byte	85
	.byte	38
	.byte	35
	.byte	23
	.byte	24
	.byte	70
	.byte	-75
	.byte	-8
	.byte	65
	.byte	-110
	.byte	60
	.byte	-105
	.byte	-2
	.byte	-95
	.byte	4
	.byte	109
	.byte	-35
	.byte	-12
	.byte	28
	.byte	-100
	.byte	118
	.byte	-125
	.byte	-69
	.byte	-16
	.byte	-14
	.byte	-37
	.byte	-27
	.byte	19
	.byte	-58
	.byte	107
	.byte	-35
	.byte	106
	.byte	79
	.byte	-106
	.byte	32
	.byte	35
	.byte	36
	.byte	-97
	.byte	-120
	.byte	101
	.byte	-89
	.byte	0
	.byte	-26
	.byte	17
	.byte	-92
	.byte	35
	.byte	-113
	.byte	57
	.byte	-11
	.byte	-40
	.byte	-70
	.byte	-47
	.byte	55
	.byte	-113
	.byte	-89
	.byte	73
	.byte	119
	.byte	-97
	.byte	-51
	.byte	-118
	.byte	41
	.byte	-19
	.byte	-111
	.byte	118
	.byte	-104
	.byte	-49
	.byte	40
	.byte	33
	.byte	47
	.byte	-116
	.byte	-127
	.byte	72
	.byte	28
	.byte	102
	.byte	33
	.byte	112
	.byte	-128
	.byte	22
	.byte	-14
	.byte	-21
	.byte	46
	.byte	-71
	.byte	-100
	.byte	-79
	.byte	72
	.byte	-32
	.byte	106
	.byte	103
	.byte	-54
	.byte	-114
	.byte	-71
	.byte	-92
	.byte	-105
	.byte	108
	.byte	15
	.byte	58
	.byte	-47
	.byte	14
	.byte	57
	.byte	51
	.byte	-68
	.byte	73
	.byte	77
	.byte	-31
	.byte	-5
	.byte	-21
	.byte	-34
	.byte	-26
	.byte	34
	.byte	-31
	.byte	-107
	.byte	-64
	.byte	-79
	.byte	26
	.byte	93
	.byte	-1
	.byte	-87
	.byte	-115
	.byte	-4
	.byte	-61
	.byte	-96
	.byte	7
	.byte	-15
	.byte	-103
	.byte	73
	.byte	38
	.byte	-67
	.byte	105
	.byte	98
	.byte	-79
	.byte	121
	.byte	109
	.byte	-94
	.byte	-68
	.byte	30
	.byte	69
	.byte	113
	.byte	-98
	.byte	-81
	.byte	-32
	.byte	-56
	.byte	-107
	.byte	14
	.byte	-12
	.byte	27
	.byte	116
	.byte	-77
	.byte	94
	.byte	82
	.byte	-81
	.byte	73
	.byte	-97
	.byte	-62
	.byte	-61
	.byte	-4
	.byte	86
	.byte	-99
	.byte	91
	.byte	85
	.byte	80
	.byte	4
	.byte	-43
	.byte	58
	.byte	-2
	.byte	56
	.byte	115
	.byte	114
	.byte	-62
	.byte	-61
	.byte	50
	.byte	16
	.byte	110
	.byte	80
	.byte	-113
	.byte	103
	.byte	60
	.byte	-43
	.byte	-96
	.byte	31
	.byte	-59
	.byte	-38
	.byte	-65
	.byte	57
	.byte	-36
	.byte	65
	.byte	-64
	.byte	-36
	.byte	109
	.byte	110
	.byte	-103
	.byte	1
	.byte	-96
	.byte	-10
	.byte	36
	.byte	30
	.byte	1
	.byte	8
	.byte	54
	.byte	27
	.byte	-29
	.byte	-19
	.byte	-87
	.byte	-4
	.byte	49
	.byte	119
	.byte	11
	.byte	32
	.byte	-18
	.byte	-8
	.byte	65
	.byte	94
	.byte	57
	.byte	-22
	.byte	-2
	.byte	123
	.byte	-10
	.byte	13
	.byte	78
	.byte	24
	.byte	63
	.byte	-15
	.byte	-90
	.byte	-108
	.byte	-76
	.byte	-73
	.byte	110
	.byte	92
	.byte	-115
	.byte	-89
	.byte	66
	.byte	73
	.byte	-28
	.byte	31
	.byte	59
	.byte	13
	.byte	-23
	.byte	-13
	.byte	-24
	.byte	57
	.byte	-13
	.byte	90
	.byte	23
	.byte	-49
	.byte	-34
	.byte	70
	.byte	-109
	.byte	61
	.byte	-17
	.byte	-50
	.byte	92
	.byte	52
	.byte	-106
	.byte	46
	.byte	40
	.byte	-65
	.byte	62
	.byte	-40
	.byte	21
	.byte	-73
	.byte	-21
	.byte	50
	.byte	-40
	.byte	87
	.byte	-115
	.byte	106
	.byte	-1
	.byte	14
	.byte	-9
	.byte	-62
	.byte	-111
	.byte	-1
	.byte	70
	.byte	-91
	.byte	-49
	.byte	116
	.byte	114
	.byte	-128
	.byte	-78
	.byte	47
	.byte	26
	.byte	-63
	.byte	50
	.byte	40
	.byte	70
	.byte	43
	.byte	78
	.byte	91
	.byte	72
	.byte	-83
	.byte	117
	.byte	-5
	.byte	-3
	.byte	62
	.byte	-36
	.byte	-106
	.byte	-25
	.byte	23
	.byte	83
	.byte	96
	.byte	-122
	.byte	30
	.byte	126
	.byte	31
	.byte	-3
	.byte	-40
	.byte	84
	.byte	42
	.byte	-9
	.byte	-43
	.byte	-10
	.byte	-29
	.byte	60
	.byte	79
	.byte	112
	.byte	-54
	.byte	-103
	.byte	-112
	.byte	-26
	.byte	-76
	.byte	15
	.byte	120
	.byte	-12
	.byte	36
	.byte	102
	.byte	-23
	.byte	-103
	.byte	70
	.byte	54
	.byte	3
	.byte	-42
	.byte	-93
	.byte	-21
	.byte	-124
	.byte	16
	.byte	-82
	.byte	-25
	.byte	-86
	.byte	28
	.byte	3
	.byte	41
	.byte	-122
	.byte	-114
	.byte	-40
	.byte	74
	.byte	-25
	.byte	18
	.byte	-122
	.byte	103
	.byte	70
	.byte	83
	.byte	-66
	.byte	57
	.byte	-91
	.byte	-49
	.byte	23
	.byte	-59
	.byte	-112
	.byte	28
	.byte	-13
	.byte	-109
	.byte	53
	.byte	-70
	.byte	85
	.byte	108
	.byte	-112
	.byte	-80
	.byte	15
	.byte	45
	.byte	-123
	.byte	-62
	.byte	89
	.byte	-122
	.byte	0
	.byte	65
	.byte	-98
	.byte	76
	.byte	-30
	.byte	-22
	.byte	-107
	.byte	-21
	.byte	-24
	.byte	89
	.byte	100
	.byte	33
	.byte	43
	.byte	-83
	.byte	-91
	.byte	62
	.byte	113
	.byte	-43
	.byte	-85
	.byte	-106
	.byte	63
	.byte	-22
	.byte	7
	.byte	94
	.byte	-69
	.byte	19
	.byte	-77
	.byte	74
	.byte	-110
	.byte	-76
	.byte	103
	.byte	-115
	.byte	-20
	.byte	-120
	.byte	-44
	.byte	61
	.byte	-116
	.byte	-9
	.byte	-111
	.byte	14
	.byte	121
	.byte	-103
	.byte	50
	.byte	97
	.byte	-125
	.byte	-94
	.byte	-59
	.byte	-61
	.byte	41
	.byte	-126
	.byte	28
	.byte	-106
	.byte	76
	.byte	-90
	.byte	-5
	.byte	-41
	.byte	-110
	.byte	8
	.byte	-18
	.byte	34
	.byte	13
	.byte	-118
	.byte	-55
	.byte	4
	.byte	-117
	.byte	127
	.byte	38
	.byte	59
	.byte	55
	.byte	-75
	.byte	15
	.byte	114
	.byte	-30
	.byte	86
	.byte	-111
	.byte	115
	.byte	-125
	.byte	94
	.byte	39
	.byte	126
	.byte	12
	.byte	121
	.byte	2
	.byte	119
	.byte	75
	.byte	67
	.byte	82
	.byte	-79
	.byte	-127
	.byte	-105
	.byte	55
	.byte	39
	.byte	-59
	.byte	11
	.byte	79
	.byte	-124
	.byte	11
	.byte	-52
	.byte	-125
	.byte	-78
	.byte	61
	.byte	120
	.byte	-44
	.byte	-39
	.byte	55
	.byte	26
	.byte	-41
	.byte	-74
	.byte	-60
	.byte	-118
	.byte	13
	.byte	70
	.byte	16
	.byte	-64
	.byte	55
	.byte	44
	.byte	-37
	.byte	-113
	.byte	-16
	.byte	-95
	.byte	114
	.byte	-109
	.byte	-14
	.byte	93
	.byte	-29
	.byte	101
	.byte	-84
	.byte	-65
	.byte	65
	.byte	28
	.byte	-9
	.byte	32
	.byte	14
	.byte	-106
	.byte	-45
	.byte	-100
	.byte	-75
	.byte	-30
	.byte	99
	.byte	91
	.byte	5
	.byte	40
	.byte	-87
	.byte	-15
	.byte	66
	.byte	64
	.byte	112
	.byte	-57
	.byte	6
	.byte	79
	.byte	-126
	.byte	-123
	.byte	-67
	.byte	-8
	.byte	-13
	.byte	18
	.byte	-69
	.byte	-54
	.byte	-31
	.byte	18
	.byte	-27
	.byte	7
	.byte	92
	.byte	127
	.byte	24
	.byte	109
	.byte	114
	.byte	11
	.byte	101
	.byte	92
	.byte	37
	.byte	73
	.byte	112
	.byte	-83
	.byte	-29
	.byte	46
	.byte	13
	.byte	-93
	.byte	-44
	.byte	-32
	.byte	-104
	.byte	62
	.byte	8
	.byte	-118
	.byte	-70
	.byte	46
	.byte	-122
	.byte	100
	.byte	-19
	.byte	-59
	.byte	-94
	.byte	-51
	.byte	-119
	.byte	30
	.byte	-63
	.byte	42
	.byte	123
	.byte	-120
	.byte	-99
	.byte	56
	.byte	50
	.byte	-25
	.byte	-94
	.byte	-8
	.byte	-116
	.byte	49
	.byte	-102
	.byte	-124
	.byte	-124
	.byte	42
	.byte	-40
	.byte	-87
	.byte	41
	.byte	22
	.byte	-91
	.byte	99
	.byte	-11
	.byte	24
	.byte	-106
	.byte	-118
	.byte	121
	.byte	-72
	.byte	52
	.byte	82
	.byte	-33
	.byte	53
	.byte	8
	.byte	54
	.byte	-65
	.byte	109
	.byte	-126
	.byte	23
	.byte	85
	.byte	-84
	.byte	-75
	.byte	97
	.byte	-22
	.byte	126
	.byte	-77
	.byte	-11
	.byte	-117
	.byte	26
	.byte	28
	.byte	25
	.byte	-85
	.byte	22
	.byte	-29
	.byte	76
	.byte	-115
	.byte	67
	.byte	29
	.byte	113
	.byte	-59
	.byte	-90
	.byte	70
	.byte	-10
	.byte	-57
	.byte	-29
	.byte	-95
	.byte	45
	.byte	-112
	.byte	105
	.byte	86
	.byte	35
	.byte	-61
	.byte	-61
	.byte	-82
	.byte	125
	.byte	-9
	.byte	-91
	.byte	-51
	.byte	-63
	.byte	-35
	.byte	15
	.byte	30
	.byte	74
	.byte	-109
	.byte	25
	.byte	-36
	.byte	61
	.byte	-98
	.byte	-52
	.byte	-97
	.byte	-2
	.byte	-85
	.byte	14
	.byte	63
	.byte	14
	.byte	-2
	.byte	-54
	.byte	20
	.byte	-70
	.byte	9
	.byte	18
	.byte	51
	.byte	34
	.byte	106
	.byte	-102
	.byte	96
	.byte	90
	.byte	-75
	.byte	38
	.byte	-64
	.byte	-21
	.byte	103
	.byte	74
	.byte	-110
	.byte	45
	.byte	-16
	.byte	97
	.byte	111
	.byte	28
	.byte	40
	.byte	1
	.byte	14
	.byte	115
	.byte	51
	.byte	41
	.byte	34
	.byte	109
	.byte	25
	.byte	-20
	.byte	117
	.byte	-7
	.byte	54
	.byte	-113
	.byte	37
	.byte	-32
	.byte	84
	.byte	-61
	.byte	89
	.byte	13
	.byte	-114
	.byte	-97
	.byte	118
	.byte	-12
	.byte	105
	.byte	-119
	.byte	106
	.byte	-32
	.byte	40
	.byte	58
	.byte	-99
	.byte	49
	.byte	22
	.byte	-43
	.byte	-115
	.byte	-96
	.byte	123
	.byte	-83
	.byte	-49
	.byte	74
	.byte	-82
	.byte	-128
	.byte	-6
	.byte	-113
	.byte	29
	.byte	-47
	.byte	110
	.byte	112
	.byte	-102
	.byte	102
	.byte	-110
	.byte	97
	.byte	86
	.byte	-104
	.byte	99
	.byte	86
	.byte	111
	.byte	-66
	.byte	93
	.byte	-112
	.byte	71
	.byte	-96
	.byte	-5
	.byte	-35
	.byte	-116
	.byte	-25
	.byte	44
	.byte	102
	.byte	10
	.byte	111
	.byte	-10
	.byte	1
	.byte	-71
	.byte	108
	.byte	-70
	.byte	55
	.byte	-94
	.byte	-31
	.byte	-123
	.byte	63
	.byte	116
	.byte	42
	.byte	99
	.byte	40
	.byte	-52
	.byte	5
	.byte	-116
	.byte	9
	.byte	-33
	.byte	20
	.byte	-53
	.byte	124
	.byte	93
	.byte	87
	.byte	-74
	.byte	117
	.byte	80
	.byte	56
	.byte	70
	.byte	11
	.byte	-53
	.byte	92
	.byte	2
	.byte	111
	.byte	86
	.byte	-57
	.byte	11
	.byte	-36
	.byte	126
	.byte	93
	.byte	-29
	.byte	-9
	.byte	22
	.byte	119
	.byte	6
	.byte	123
	.byte	104
	.byte	48
	.byte	-57
	.byte	90
	.byte	86
	.byte	34
	.byte	-98
	.byte	42
	.byte	3
	.byte	-94
	.byte	23
	.byte	-112
	.byte	18
	.byte	31
	.byte	86
	.byte	117
	.byte	0
	.byte	55
	.byte	90
	.byte	-65
	.byte	-85
	.byte	-121
	.byte	22
	.byte	48
	.byte	53
	.byte	35
	.byte	34
	.byte	69
	.byte	93
	.byte	-89
	.byte	121
	.byte	50
	.byte	55
	.byte	36
	.byte	0
	.byte	-102
	.byte	120
	.byte	97
	.byte	6
	.byte	-108
	.byte	-61
	.byte	120
	.byte	-89
	.byte	-7
	.byte	-70
	.byte	72
	.byte	14
	.byte	11
	.byte	-21
	.byte	-46
	.byte	-91
	.byte	-87
	.byte	91
	.byte	45
	.byte	13
	.byte	-14
	.byte	11
	.byte	17
	.byte	75
	.byte	-46
	.byte	43
	.byte	-18
	.byte	111
	.byte	67
	.byte	-117
	.byte	109
	.byte	-42
	.byte	-27
	.byte	-82
	.byte	-123
	.byte	-90
	.byte	-105
	.byte	73
	.byte	42
	.byte	12
	.byte	76
	.byte	36
	.byte	-25
	.byte	-89
	.byte	58
	.byte	63
	.byte	104
	.byte	77
	.byte	118
	.byte	-106
	.byte	-69
	.byte	-97
	.byte	21
	.byte	-123
	.byte	-31
	.byte	104
	.byte	-44
	.byte	58
	.byte	-115
	.byte	3
	.byte	100
	.byte	-87
	.byte	44
	.byte	-26
	.byte	64
	.byte	-11
	.byte	22
	.byte	-95
	.byte	-120
	.byte	-77
	.byte	-69
	.byte	-3
	.byte	49
	.byte	5
	.byte	56
	.byte	4
	.byte	-57
	.byte	28
	.byte	-25
	.byte	-81
	.byte	-19
	.byte	72
	.byte	108
	.byte	-112
	.byte	61
	.byte	-120
	.byte	4
	.byte	43
	.byte	-48
	.byte	108
	.byte	121
	.byte	-63
	.byte	14
	.byte	78
	.byte	-112
	.byte	46
	.byte	-40
	.byte	60
	.byte	-109
	.byte	-124
	.byte	-27
	.byte	40
	.byte	62
	.byte	54
	.byte	88
	.byte	-77
	.byte	2
	.byte	-113
	.byte	-97
	.byte	-114
	.byte	-122
	.byte	83
	.byte	-24
	.byte	91
	.byte	-101
	.byte	104
	.byte	-40
	.byte	114
	.byte	111
	.byte	64
	.byte	-97
	.byte	-103
	.byte	84
	.byte	-42
	.byte	-100
	.byte	-78
	.byte	110
	.byte	80
	.byte	108
	.byte	-59
	.byte	93
	.byte	15
	.byte	23
	.byte	-33
	.byte	13
	.byte	120
	.byte	-95
	.byte	-81
	.byte	77
	.byte	57
	.byte	48
	.byte	-63
	.byte	-93
	.byte	55
	.byte	121
	.byte	16
	.byte	1
	.byte	100
	.byte	-127
	.byte	-107
	.byte	47
	.byte	91
	.byte	120
	.byte	47
	.byte	-113
	.byte	-92
	.byte	23
	.byte	67
	.byte	40
	.byte	-126
	.byte	44
	.byte	38
	.byte	-30
	.byte	33
	.byte	-55
	.byte	-118
	.byte	-37
	.byte	-24
	.byte	-4
	.byte	120
	.byte	33
	.byte	-35
	.byte	11
	.byte	10
	.byte	-39
	.byte	78
	.byte	-125
	.byte	111
	.byte	96
	.byte	-72
	.byte	-112
	.byte	106
	.byte	-112
	.byte	114
	.byte	-84
	.byte	-6
	.byte	35
	.byte	-75
	.byte	7
	.byte	-113
	.byte	87
	.byte	-46
	.byte	67
	.byte	-120
	.byte	43
	.byte	126
	.byte	-36
	.byte	65
	.byte	17
	.byte	-56
	.byte	115
	.byte	-122
	.byte	-107
	.byte	-108
	.byte	-63
	.byte	-79
	.byte	85
	.byte	-5
	.byte	-73
	.byte	78
	.byte	77
	.byte	45
	.byte	16
	.byte	-31
	.byte	-110
	.byte	89
	.byte	43
	.byte	117
	.byte	-53
	.byte	92
	.byte	125
	.byte	106
	.byte	-77
	.byte	-23
	.byte	108
	.byte	-16
	.byte	105
	.byte	14
	.byte	-16
	.byte	81
	.byte	-41
	.byte	-50
	.byte	47
	.byte	116
	.byte	-3
	.byte	31
	.byte	112
	.byte	-46
	.byte	-105
	.byte	-5
	.byte	90
	.byte	-127
	.byte	-13
	.byte	-53
	.byte	88
	.byte	-70
	.byte	-8
	.byte	-123
	.byte	104
	.byte	-79
	.byte	-75
	.byte	57
	.byte	-15
	.byte	10
	.byte	-109
	.byte	-16
	.byte	-18
	.byte	2
	.byte	64
	.byte	-48
	.byte	-93
	.byte	-104
	.byte	57
	.byte	117
	.byte	71
	.byte	80
	.byte	52
	.byte	-69
	.byte	86
	.byte	-126
	.byte	31
	.byte	36
	.byte	79
	.byte	10
	.byte	48
	.byte	21
	.byte	-110
	.byte	-127
	.byte	-85
	.byte	17
	.byte	-63
	.byte	81
	.byte	-54
	.byte	67
	.byte	-64
	.byte	-84
	.byte	46
	.byte	29
	.byte	84
	.byte	109
	.byte	-53
	.byte	-78
	.byte	27
	.byte	107
	.byte	-92
	.byte	-63
	.byte	88
	.byte	-25
	.byte	-69
	.byte	45
	.byte	-99
	.byte	-117
	.byte	1
	.byte	-62
	.byte	88
	.byte	78
	.byte	43
	.byte	-65
	.byte	48
	.byte	83
	.byte	27
	.byte	55
	.byte	-83
	.byte	31
	.byte	111
	.byte	2
	.byte	-9
	.byte	-120
	.byte	74
	.byte	-4
	.byte	-47
	.byte	-71
	.byte	45
	.byte	-128
	.byte	119
	.byte	120
	.byte	123
	.byte	104
	.byte	-84
	.byte	-27
	.byte	104
	.byte	105
	.byte	-94
	.byte	-55
	.byte	106
	.byte	-96
	.byte	-46
	.byte	86
	.byte	-115
	.byte	89
	.byte	63
	.byte	16
	.byte	-18
	.byte	89
	.byte	-122
	.byte	-123
	.byte	-28
	.byte	9
	.byte	-118
	.byte	6
	.byte	88
	.byte	98
	.byte	-47
	.byte	-117
	.byte	91
	.byte	93
	.byte	1
	.byte	39
	.byte	9
	.byte	-79
	.byte	50
	.byte	10
	.byte	22
	.byte	-99
	.byte	55
	.byte	51
	.byte	74
	.byte	-97
	.byte	41
	.byte	60
	.byte	95
	.byte	119
	.byte	112
	.byte	24
	.byte	22
	.byte	-116
	.byte	101
	.byte	-88
	.byte	116
	.byte	-109
	.byte	-32
	.byte	-13
	.byte	-53
	.byte	7
	.byte	24
	.byte	-27
	.byte	9
	.byte	48
	.byte	3
	.byte	-95
	.byte	-3
	.byte	21
	.byte	87
	.byte	-114
	.byte	-36
	.byte	87
	.byte	83
	.byte	96
	.byte	65
	.byte	19
	.byte	95
	.byte	27
	.byte	65
	.byte	-106
	.byte	12
	.byte	73
	.byte	-59
	.byte	-24
	.byte	110
	.byte	74
	.byte	-41
	.byte	-38
	.byte	121
	.byte	114
	.byte	-104
	.byte	59
	.byte	-57
	.byte	-68
	.byte	-81
	.byte	108
	.byte	0
	.byte	-81
	.byte	-128
	.byte	-41
	.byte	-84
	.byte	-108
	.byte	70
	.byte	-98
	.byte	5
	.byte	-44
	.byte	119
	.byte	-17
	.byte	-73
	.byte	122
	.byte	83
	.byte	51
	.byte	99
	.byte	-103
	.byte	-38
	.byte	-112
	.byte	-97
	.byte	-55
	.byte	0
	.byte	72
	.byte	119
	.byte	-109
	.byte	-90
	.byte	-7
	.byte	47
	.byte	67
	.byte	89
	.byte	-75
	.byte	-32
	.byte	120
	.byte	-90
	.byte	29
	.byte	56
	.byte	76
	.byte	-116
	.byte	-17
	.byte	-115
	.byte	-82
	.byte	41
	.byte	-123
	.byte	53
	.byte	-51
	.byte	-64
	.byte	-1
	.byte	32
	.byte	-81
	.byte	-105
	.byte	-93
	.byte	124
	.byte	79
	.byte	57
	.byte	123
	.byte	52
	.byte	-67
	.byte	-39
	.byte	-98
	.byte	-22
	.byte	21
	.byte	37
	.byte	-110
	.byte	62
	.byte	12
	.byte	51
	.byte	24
	.byte	-13
	.byte	-35
	.byte	-39
	.byte	-16
	.byte	-83
	.byte	27
	.byte	-40
	.byte	-128
	.byte	48
	.byte	80
	.byte	-98
	.byte	96
	.byte	-8
	.byte	68
	.byte	-7
	.byte	106
	.byte	-52
	.byte	20
	.byte	107
	.byte	-93
	.byte	-27
	.byte	-86
	.byte	96
	.byte	67
	.byte	85
	.byte	115
	.byte	-94
	.byte	-19
	.byte	68
	.byte	-46
	.byte	2
	.byte	-30
	.byte	72
	.byte	-25
	.byte	111
	.byte	82
	.byte	-60
	.byte	116
	.byte	-100
	.byte	4
	.byte	112
	.byte	-20
	.byte	-119
	.byte	-7
	.byte	-89
	.byte	119
	.byte	-29
	.byte	31
	.byte	11
	.byte	18
	.byte	-109
	.byte	-56
	.byte	-120
	.byte	-14
	.byte	-92
	.byte	127
	.byte	-76
	.byte	-89
	.byte	-54
	.byte	99
	.byte	-29
	.byte	-119
	.byte	5
	.byte	-23
	.byte	11
	.byte	-104
	.byte	61
	.byte	-41
	.byte	4
	.byte	127
	.byte	7
	.byte	-10
	.byte	14
	.byte	57
	.byte	-22
	.byte	-61
	.byte	122
	.byte	71
	.byte	105
	.byte	102
	.byte	96
	.byte	7
	.byte	58
	.byte	55
	.byte	-28
	.byte	-27
	.byte	88
	.byte	-111
	.byte	-42
	.byte	-74
	.byte	30
	.byte	-90
	.byte	120
	.byte	-115
	.byte	61
	.byte	-55
	.byte	-47
	.byte	100
	.byte	106
	.byte	46
	.byte	-8
	.byte	116
	.byte	39
	.byte	-39
	.byte	-17
	.byte	-7
	.byte	99
	.byte	-98
	.byte	12
	.byte	-81
	.byte	12
	.byte	34
	.byte	72
	.byte	-20
	.byte	43
	.byte	-27
	.byte	61
	.byte	96
	.byte	15
	.byte	56
	.byte	64
	.byte	-51
	.byte	-91
	.byte	-72
	.byte	49
	.byte	-93
	.byte	-107
	.byte	-58
	.byte	57
	.byte	99
	.byte	113
	.byte	35
	.byte	-92
	.byte	-118
	.byte	107
	.byte	27
	.byte	-32
	.byte	-54
	.byte	59
	.byte	-99
	.byte	-10
	.byte	-62
	.byte	9
	.byte	-62
	.byte	-121
	.byte	-100
	.byte	67
	.byte	-10
	.byte	55
	.byte	10
	.byte	-12
	.byte	112
	.byte	25
	.byte	-22
	.byte	-126
	.byte	-83
	.byte	95
	.byte	87
	.byte	39
	.byte	-54
	.byte	-78
	.byte	-5
	.byte	95
	.byte	-45
	.byte	93
	.byte	24
	.byte	20
	.byte	87
	.byte	10
	.byte	65
	.byte	35
	.byte	-111
	.byte	22
	.byte	-94
	.byte	-96
	.byte	-57
	.byte	110
	.byte	67
	.byte	-20
	.byte	-37
	.byte	17
	.byte	-103
	.byte	-113
	.byte	-116
	.byte	-122
	.byte	-20
	.byte	55
	.byte	31
	.byte	7
	.byte	17
	.byte	37
	.byte	-43
	.byte	-75
	.byte	123
	.byte	31
	.byte	-83
	.byte	-27
	.byte	73
	.byte	104
	.byte	41
	.byte	-12
	.byte	-10
	.byte	-4
	.byte	-106
	.byte	-8
	.byte	-30
	.byte	-99
	.byte	-120
	.byte	72
	.byte	-22
	.byte	29
	.byte	-45
	.byte	8
	.byte	-43
	.byte	71
	.byte	-85
	.byte	-91
	.byte	41
	.byte	-110
	.byte	-3
	.byte	-57
	.byte	81
	.byte	49
	.byte	-26
	.byte	4
	.byte	16
	.byte	-73
	.byte	95
	.byte	34
	.byte	-23
	.byte	-30
	.byte	6
	.byte	41
	.byte	-90
	.byte	77
	.byte	112
	.byte	71
	.byte	-115
	.byte	-60
	.byte	34
	.byte	13
	.byte	106
	.byte	107
	.byte	25
	.byte	-20
	.byte	81
	.byte	-78
	.byte	-109
	.byte	-123
	.byte	44
	.byte	-114
	.byte	-80
	.byte	59
	.byte	97
	.byte	49
	.byte	-107
	.byte	69
	.byte	-96
	.byte	-124
	.byte	-20
	.byte	29
	.byte	-42
	.byte	-11
	.byte	61
	.byte	-108
	.byte	-74
	.byte	-23
	.byte	-10
	.byte	-78
	.byte	-28
	.byte	29
	.byte	-124
	.byte	59
	.byte	-97
	.byte	-65
	.byte	81
	.byte	-64
	.byte	-33
	.byte	24
	.byte	64
	.byte	-40
	.byte	-13
	.byte	51
	.byte	-61
	.byte	-21
	.byte	-102
	.byte	48
	.byte	-19
	.byte	64
	.byte	-67
	.byte	76
	.byte	125
	.byte	-55
	.byte	45
	.byte	84
	.byte	7
	.byte	-127
	.byte	-97
	.byte	34
	.byte	78
	.byte	-3
	.byte	-92
	.byte	-48
	.byte	121
	.byte	106
	.byte	1
	.byte	121
	.byte	119
	.byte	121
	.byte	38
	.byte	-46
	.byte	-110
	.byte	-49
	.byte	-109
	.byte	79
	.byte	-15
	.byte	60
	.byte	88
	.byte	-74
	.byte	-13
	.byte	-78
	.byte	107
	.byte	-11
	.byte	-80
	.byte	-93
	.byte	-126
	.byte	55
	.byte	50
	.byte	2
	.byte	62
	.byte	-5
	.byte	117
	.byte	-23
	.byte	122
	.byte	97
	.byte	75
	.byte	2
	.byte	41
	.byte	-77
	.byte	5
	.byte	-26
	.byte	-47
	.byte	-72
	.byte	85
	.byte	-58
	.byte	5
	.byte	41
	.byte	116
	.byte	23
	.byte	-114
	.byte	-73
	.byte	-4
	.byte	-113
	.byte	-4
	.byte	42
	.byte	-108
	.byte	6
	.byte	-52
	.byte	91
	.byte	-93
	.byte	24
	.byte	40
	.byte	75
	.byte	-26
	.byte	20
	.byte	-28
	.byte	-98
	.byte	122
	.byte	-92
	.byte	85
	.byte	56
	.byte	59
	.byte	-92
	.byte	-97
	.byte	58
	.byte	-112
	.byte	-11
	.byte	-19
	.byte	-12
	.byte	53
	.byte	4
	.byte	80
	.byte	37
	.byte	-49
	.byte	35
	.byte	-30
	.byte	82
	.byte	118
	.byte	-21
	.byte	85
	.byte	-85
	.byte	-119
	.byte	57
	.byte	94
	.byte	-128
	.byte	33
	.byte	-4
	.byte	-86
	.byte	-99
	.byte	70
	.byte	49
	.byte	-29
	.byte	-11
	.byte	98
	.byte	91
	.byte	116
	.byte	-63
	.byte	-128
	.byte	104
	.byte	57
	.byte	-86
	.byte	0
	.byte	43
	.byte	-77
	.byte	48
	.byte	-45
	.byte	118
	.byte	127
	.byte	35
	.byte	35
	.byte	-96
	.byte	2
	.byte	-58
	.byte	8
	.byte	107
	.byte	104
	.byte	121
	.byte	-5
	.byte	63
	.byte	-8
	.byte	73
	.byte	-2
	.byte	-124
	.byte	-125
	.byte	67
	.byte	0
	.byte	108
	.byte	-92
	.byte	19
	.byte	-99
	.byte	-40
	.byte	41
	.byte	75
	.byte	-79
	.byte	-53
	.byte	-14
	.byte	-120
	.byte	64
	.byte	-38
	.byte	-96
	.byte	-50
	.byte	-34
	.byte	-12
	.byte	110
	.byte	-102
	.byte	-60
	.byte	116
	.byte	76
	.byte	67
	.byte	-84
	.byte	-94
	.byte	-69
	.byte	25
	.byte	105
	.byte	-113
	.byte	-102
	.byte	114
	.byte	79
	.byte	74
	.byte	26
	.byte	63
	.byte	2
	.byte	-106
	.byte	4
	.byte	110
	.byte	13
	.byte	31
	.byte	33
	.byte	-50
	.byte	22
	.byte	-65
	.byte	-40
	.byte	62
	.byte	54
	.byte	-96
	.byte	64
	.byte	-66
	.byte	-127
	.byte	62
	.byte	97
	.byte	48
	.byte	-19
	.byte	-8
	.byte	-60
	.byte	-119
	.byte	-85
	.byte	119
	.byte	15
	.byte	-68
	.byte	122
	.byte	-25
	.byte	33
	.byte	-33
	.byte	68
	.byte	-103
	.byte	102
	.byte	92
	.byte	16
	.byte	-53
	.byte	-29
	.byte	113
	.byte	-20
	.byte	-75
	.byte	-64
	.byte	-8
	.byte	-50
	.byte	-39
	.byte	-30
	.byte	-81
	.byte	81
	.byte	-39
	.byte	61
	.byte	85
	.byte	64
	.byte	-115
	.byte	124
	.byte	-92
	.byte	-114
	.byte	-4
	.byte	0
	.byte	-121
	.byte	-38
	.byte	-110
	.byte	-5
	.byte	-35
	.byte	-111
	.byte	27
	.byte	90
	.byte	-20
	.byte	-15
	.byte	19
	.byte	116
	.byte	105
	.byte	47
	.byte	-77
	.byte	67
	.byte	-49
	.byte	-22
	.byte	-27
	.byte	-14
	.byte	72
	.byte	48
	.byte	-52
	.byte	-50
	.byte	102
	.byte	-68
	.byte	-97
	.byte	50
	.byte	-75
	.byte	-64
	.byte	-63
	.byte	-61
	.byte	-4
	.byte	83
	.byte	-9
	.byte	81
	.byte	0
	.byte	-39
	.byte	24
	.byte	90
	.byte	-14
	.byte	-16
	.byte	-82
	.byte	24
	.byte	-1
	.byte	-112
	.byte	-96
	.byte	105
	.byte	22
	.byte	-46
	.byte	108
	.byte	-38
	.byte	-11
	.byte	-98
	.byte	-122
	.byte	-76
	.byte	19
	.byte	-60
	.byte	-48
	.byte	29
	.byte	107
	.byte	-43
	.byte	66
	.byte	-81
	.byte	120
	.byte	67
	.byte	-123
	.byte	28
	.byte	45
	.byte	-49
	.byte	105
	.byte	94
	.byte	-80
	.byte	94
	.byte	-69
	.byte	-125
	.byte	-94
	.byte	102
	.byte	-79
	.byte	68
	.byte	-120
	.byte	37
	.byte	123
	.byte	57
	.byte	-8
	.byte	-127
	.byte	73
	.byte	-1
	.byte	-35
	.byte	118
	.byte	113
	.byte	-75
	.byte	1
	.byte	106
	.byte	64
	.byte	-14
	.byte	30
	.byte	55
	.byte	-8
	.byte	116
	.byte	93
	.byte	69
	.byte	-40
	.byte	63
	.byte	-122
	.byte	23
	.byte	-3
	.byte	-20
	.byte	2
	.byte	55
	.byte	-100
	.byte	42
	.byte	-16
	.byte	17
	.byte	-119
	.byte	6
	.byte	58
	.byte	1
	.byte	-31
	.byte	101
	.byte	82
	.byte	34
	.byte	-74
	.byte	-35
	.byte	20
	.byte	107
	.byte	103
	.byte	-7
	.byte	-55
	.byte	90
	.byte	50
	.byte	105
	.byte	44
	.byte	34
	.byte	71
	.byte	98
	.byte	-32
	.byte	121
	.byte	67
	.byte	-98
	.byte	-48
	.byte	-43
	.byte	-32
	.byte	19
	.byte	-122
	.byte	-30
	.byte	-37
	.byte	-111
	.byte	-100
	.byte	40
	.byte	-49
	.byte	53
	.byte	-33
	.byte	-22
	.byte	-53
	.byte	-77
	.byte	-13
	.byte	123
	.byte	-33
	.byte	101
	.byte	-112
	.byte	-119
	.byte	-81
	.byte	-94
	.byte	-12
	.byte	-2
	.byte	-74
	.byte	12
	.byte	-105
	.byte	-30
	.byte	-6
	.byte	-10
	.byte	86
	.byte	95
	.byte	-75
	.byte	-64
	.byte	79
	.byte	3
	.byte	-16
	.byte	116
	.byte	18
	.byte	-15
	.byte	65
	.byte	-96
	.byte	106
	.byte	-7
	.byte	32
	.byte	74
	.byte	20
	.byte	32
	.byte	-56
	.byte	-35
	.byte	77
	.byte	-70
	.byte	125
	.byte	-61
	.byte	23
	.byte	90
	.byte	-35
	.byte	104
	.byte	-117
	.byte	96
	.byte	-59
	.byte	52
	.byte	127
	.byte	-28
	.byte	-94
	.byte	-12
	.byte	54
	.byte	51
	.byte	35
	.byte	126
	.byte	-7
	.byte	11
	.byte	96
	.byte	-40
	.byte	-120
	.byte	47
	.byte	-64
	.byte	-124
	.byte	53
	.byte	13
	.byte	68
	.byte	104
	.byte	-108
	.byte	-44
	.byte	-116
	.byte	-4
	.byte	-114
	.byte	-125
	.byte	34
	.byte	24
	.byte	-28
	.byte	-111
	.byte	-86
	.byte	-104
	.byte	114
	.byte	123
	.byte	-52
	.byte	48
	.byte	101
	.byte	-85
	.byte	-79
	.byte	102
	.byte	-80
	.byte	-31
	.byte	4
	.byte	14
	.byte	-69
	.byte	-95
	.byte	104
	.byte	-65
	.byte	-47
	.byte	-34
	.byte	-8
	.byte	36
	.byte	28
	.byte	54
	.byte	38
	.byte	31
	.byte	-114
	.byte	53
	.byte	116
	.byte	42
	.byte	-70
	.byte	-23
	.byte	-33
	.byte	39
	.byte	-40
	.byte	-49
	.byte	83
	.byte	79
	.byte	114
	.byte	-94
	.byte	119
	.byte	-17
	.byte	74
	.byte	43
	.byte	-13
	.byte	35
	.byte	-48
	.byte	9
	.byte	7
	.byte	94
	.byte	-107
	.byte	58
	.byte	-91
	.byte	-26
	.byte	37
	.byte	58
	.byte	-33
	.byte	42
	.byte	49
	.byte	51
	.byte	-17
	.byte	-56
	.byte	-8
	.byte	-39
	.byte	-64
	.byte	109
	.byte	125
	.byte	-122
	.byte	69
	.byte	-66
	.byte	1
	.byte	-61
	.byte	57
	.byte	-40
	.byte	-10
	.byte	15
	.byte	39
	.byte	18
	.byte	122
	.byte	-19
	.byte	-75
	.byte	-113
	.byte	44
	.byte	-83
	.byte	-101
	.byte	104
	.byte	-51
	.byte	9
	.byte	79
	.byte	55
	.byte	7
	.byte	-59
	.byte	-106
	.byte	49
	.byte	-66
	.byte	-86
	.byte	50
	.byte	90
	.byte	-124
	.byte	-21
	.byte	-87
	.byte	-8
	.byte	61
	.byte	40
	.byte	-19
	.byte	12
	.byte	-127
	.byte	-41
	.byte	29
	.byte	-76
	.byte	109
	.byte	91
	.byte	-59
	.byte	-79
	.byte	-32
	.byte	120
	.byte	-55
	.byte	72
	.byte	55
	.byte	38
	.byte	-120
	.byte	-24
	.byte	-101
	.byte	-113
	.byte	-13
	.byte	122
	.byte	48
	.byte	-23
	.byte	-31
	.byte	-97
	.byte	97
	.byte	84
	.byte	-12
	.byte	-41
	.byte	-7
	.byte	-57
	.byte	-2
	.byte	92
	.byte	-113
	.byte	25
	.byte	-60
	.byte	57
	.byte	116
	.byte	32
	.byte	-15
	.byte	44
	.byte	32
	.byte	-87
	.byte	123
	.byte	92
	.byte	-28
	.byte	-31
	.byte	49
	.byte	63
	.byte	80
	.byte	15
	.byte	33
	.byte	19
	.byte	117
	.byte	-6
	.byte	22
	.byte	13
	.byte	126
	.byte	-85
	.byte	-77
	.byte	-64
	.byte	-73
	.byte	-93
	.byte	101
	.byte	-17
	.byte	75
	.byte	71
	.byte	-50
	.byte	5
	.byte	105
	.byte	24
	.byte	-52
	.byte	-67
	.byte	-31
	.byte	-125
	.byte	-6
	.byte	46
	.byte	108
	.byte	-118
	.byte	-127
	.byte	-127
	.byte	46
	.byte	81
	.byte	71
	.byte	-81
	.byte	15
	.byte	25
	.byte	72
	.byte	97
	.byte	-66
	.byte	113
	.byte	-106
	.byte	-98
	.byte	45
	.byte	70
	.byte	69
	.byte	127
	.byte	-8
	.byte	79
	.byte	-78
	.byte	-22
	.byte	99
	.byte	-111
	.byte	71
	.byte	3
	.byte	-21
	.byte	60
	.byte	37
	.byte	-73
	.byte	-103
	.byte	27
	.byte	43
	.byte	-126
	.byte	-66
	.byte	113
	.byte	-98
	.byte	39
	.byte	-26
	.byte	18
	.byte	58
	.byte	127
	.byte	-34
	.byte	7
	.byte	-3
	.byte	-14
	.byte	-15
	.byte	-77
	.byte	72
	.byte	-45
	.byte	-54
	.byte	-107
	.byte	-113
	.byte	-19
	.byte	-57
	.byte	-13
	.byte	-123
	.byte	68
	.byte	59
	.byte	-68
	.byte	37
	.byte	-75
	.byte	-67
	.byte	-109
	.byte	-55
	.byte	-1
	.byte	-91
	.byte	127
	.byte	-65
	.byte	-123
	.byte	33
	.byte	61
	.byte	118
	.byte	122
	.byte	18
	.byte	41
	.byte	68
	.byte	74
	.byte	-100
	.byte	17
	.byte	-128
	.byte	50
	.byte	34
	.byte	-118
	.byte	-119
	.byte	-16
	.byte	60
	.byte	79
	.byte	64
	.byte	0
	.byte	96
	.byte	12
	.byte	38
	.byte	-53
	.byte	47
	.byte	110
	.byte	-37
	.byte	-72
	.byte	25
	.byte	39
	.byte	99
	.byte	71
	.byte	30
	.byte	57
	.byte	-52
	.byte	-72
	.byte	-52
	.byte	-68
	.byte	-117
	.byte	-110
	.byte	42
	.byte	-122
	.byte	-67
	.byte	-79
	.byte	-48
	.byte	-65
	.byte	69
	.byte	52
	.byte	71
	.byte	-126
	.byte	121
	.byte	43
	.byte	76
	.byte	-63
	.byte	-74
	.byte	69
	.byte	26
	.byte	-3
	.byte	85
	.byte	-81
	.byte	35
	.byte	26
	.byte	-39
	.byte	-76
	.byte	82
	.byte	-32
	.byte	-87
	.byte	-78
	.byte	-107
	.byte	96
	.byte	121
	.byte	123
	.byte	-55
	.byte	-124
	.byte	-118
	.byte	62
	.byte	-51
	.byte	-49
	.byte	125
	.byte	11
	.byte	-117
	.byte	-84
	.byte	-16
	.byte	-35
	.byte	-70
	.byte	-58
	.byte	37
	.byte	-117
	.byte	85
	.byte	1
	.byte	-109
	.byte	-68
	.byte	-120
	.byte	30
	.byte	21
	.byte	14
	.byte	47
	.byte	7
	.byte	-70
	.byte	-71
	.byte	59
	.byte	-46
	.byte	-122
	.byte	90
	.byte	-89
	.byte	24
	.byte	81
	.byte	-22
	.byte	-12
	.byte	62
	.byte	51
	.byte	-10
	.byte	-100
	.byte	-102
	.byte	39
	.byte	-74
	.byte	16
	.byte	-113
	.byte	-35
	.byte	-39
	.byte	-111
	.byte	-75
	.byte	101
	.byte	-39
	.byte	105
	.byte	-57
	.byte	15
	.byte	-40
	.byte	68
	.byte	-76
	.byte	95
	.byte	-6
	.byte	-120
	.byte	-54
	.byte	-123
	.byte	-99
	.byte	49
	.byte	-69
	.byte	-21
	.byte	-79
	.byte	23
	.byte	39
	.byte	-39
	.byte	-37
	.byte	-109
	.byte	-80
	.byte	-20
	.byte	22
	.byte	46
	.byte	110
	.byte	95
	.byte	109
	.byte	60
	.byte	84
	.byte	60
	.byte	-74
	.byte	98
	.byte	-125
	.byte	-104
	.byte	-59
	.byte	-83
	.byte	-53
	.byte	-70
	.byte	86
	.byte	-56
	.byte	86
	.byte	-19
	.byte	-33
	.byte	-29
	.byte	-10
	.byte	-126
	.byte	8
	.byte	-55
	.byte	-53
	.byte	48
	.byte	12
	.byte	-95
	.byte	120
	.byte	-72
	.byte	-110
	.byte	-28
	.byte	-65
	.byte	56
	.byte	9
	.byte	-11
	.byte	-128
	.byte	56
	.byte	103
	.byte	-103
	.byte	95
	.byte	114
	.byte	-46
	.byte	-63
	.byte	-11
	.byte	92
	.byte	106
	.byte	25
	.byte	-38
	.byte	-47
	.byte	120
	.byte	-110
	.byte	-58
	.byte	123
	.byte	116
	.byte	-99
	.byte	106
	.byte	-39
	.byte	-125
	.byte	40
	.byte	2
	.byte	108
	.byte	28
	.byte	55
	.byte	123
	.byte	-23
	.byte	40
	.byte	-22
	.byte	58
	.byte	-33
	.byte	-23
	.byte	-67
	.byte	-76
	.byte	-9
	.byte	-103
	.byte	-78
	.byte	-114
	.byte	59
	.byte	112
	.byte	-114
	.byte	15
	.byte	23
	.byte	91
	.byte	78
	.byte	37
	.byte	-63
	.byte	18
	.byte	0
	.byte	17
	.byte	81
	.byte	-40
	.byte	-35
	.byte	95
	.byte	37
	.byte	20
	.byte	-46
	.byte	98
	.byte	-57
	.byte	54
	.byte	-52
	.byte	-101
	.byte	-46
	.byte	118
	.byte	-118
	.byte	85
	.byte	108
	.byte	-86
	.byte	81
	.byte	82
	.byte	38
	.byte	80
	.byte	-10
	.byte	-52
	.byte	-64
	.byte	-75
	.byte	107
	.byte	-94
	.byte	-61
	.byte	71
	.byte	-14
	.byte	103
	.byte	112
	.byte	31
	.byte	-48
	.byte	28
	.byte	36
	.byte	28
	.byte	-16
	.byte	38
	.byte	120
	.byte	92
	.byte	58
	.byte	32
	.byte	63
	.byte	-89
	.byte	-50
	.byte	-66
	.byte	-5
	.byte	101
	.byte	19
	.byte	-60
	.byte	-97
	.byte	13
	.byte	11
	.byte	102
	.byte	25
	.byte	78
	.byte	59
	.byte	123
	.byte	59
	.byte	92
	.byte	-45
	.byte	-106
	.byte	43
	.byte	88
	.byte	-33
	.byte	-106
	.byte	-85
	.byte	104
	.byte	-98
	.byte	7
	.byte	-26
	.byte	-30
	.byte	50
	.byte	-17
	.byte	79
	.byte	5
	.byte	-50
	.byte	122
	.byte	-93
	.byte	-96
	.byte	-30
	.byte	26
	.byte	12
	.byte	19
	.byte	110
	.byte	62
	.byte	88
	.byte	91
	.byte	-81
	.byte	-33
	.byte	46
	.byte	72
	.byte	-33
	.byte	120
	.byte	42
	.byte	-38
	.byte	116
	.byte	5
	.byte	-84
	.byte	-71
	.byte	-57
	.byte	-63
	.byte	-59
	.byte	52
	.byte	-17
	.byte	-124
	.byte	87
	.byte	91
	.byte	-30
	.byte	93
	.byte	-63
	.byte	118
	.byte	-73
	.byte	96
	.byte	82
	.byte	74
	.byte	-28
	.byte	-31
	.byte	-47
	.byte	84
	.byte	-87
	.byte	66
	.byte	-117
	.byte	-9
	.byte	-96
	.byte	-108
	.byte	61
	.byte	-44
	.byte	-78
	.byte	-80
	.byte	84
	.byte	66
	.byte	-102
	.byte	88
	.byte	28
	.byte	101
	.byte	86
	.byte	51
	.byte	103
	.byte	121
	.byte	-91
	.byte	-78
	.byte	93
	.byte	-62
	.byte	4
	.byte	65
	.byte	-46
	.byte	38
	.byte	-14
	.byte	-94
	.byte	105
	.byte	-4
	.byte	9
	.byte	60
	.byte	-84
	.byte	-53
	.byte	-5
	.byte	-76
	.byte	14
	.byte	70
	.byte	18
	.byte	-1
	.byte	96
	.byte	-126
	.byte	95
	.byte	122
	.byte	25
	.byte	32
	.byte	1
	.byte	-118
	.byte	2
	.byte	-12
	.byte	76
	.byte	21
	.byte	89
	.byte	94
	.byte	-99
	.byte	58
	.byte	90
	.byte	-13
	.byte	28
	.byte	36
	.byte	3
	.byte	-69
	.byte	127
	.byte	-11
	.byte	48
	.byte	95
	.byte	108
	.byte	-61
	.byte	-38
	.byte	-75
	.byte	-24
	.byte	-18
	.byte	103
	.byte	-109
	.byte	23
	.byte	-35
	.byte	11
	.byte	91
	.byte	115
	.byte	18
	.byte	12
	.byte	-25
	.byte	-39
	.byte	50
	.byte	-50
	.byte	69
	.byte	25
	.byte	124
	.byte	-32
	.byte	54
	.byte	75
	.byte	-11
	.byte	84
	.byte	29
	.byte	79
	.byte	-39
	.byte	-58
	.byte	115
	.byte	39
	.byte	108
	.byte	-71
	.byte	-111
	.byte	105
	.byte	77
	.byte	-85
	.byte	2
	.byte	111
	.byte	93
	.byte	88
	.byte	126
	.byte	61
	.byte	-41
	.byte	-96
	.byte	60
	.byte	-47
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"%7d\011%s\000"
	.space	1
.LC3:
	.ascii	"load\000"
	.space	3
.LC4:
	.ascii	"preprocess\000"
	.space	1
.LC5:
	.ascii	"benes_compact\000"
	.space	2
.LC6:
	.ascii	"scaling\000"
.LC7:
	.ascii	"fft_tr\000"
	.space	1
.LC8:
	.ascii	"syndrome_adjust\000"
.LC9:
	.ascii	"bm\000"
	.space	1
.LC10:
	.ascii	"fft\000"
.LC11:
	.ascii	"error_detection\000"
.LC12:
	.ascii	"r_scaling_inv\000"
	.space	2
.LC13:
	.ascii	"r_fft_tr\000"
	.space	3
.LC14:
	.ascii	"r_syndrome_adjust\000"
	.space	2
.LC15:
	.ascii	"get_t\000"
	.space	2
.LC16:
	.ascii	"store\000"
	.space	2
.LC17:
	.ascii	"weight\000"
	.space	1
.LC18:
	.ascii	"decrypt\012\000"
	.space	3
.LC19:
	.ascii	"Decryption failed! Error code: %d\000"
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
