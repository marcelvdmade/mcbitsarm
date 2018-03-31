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
	.file	"benes.c"
	.text
	.align	2
	.global	benes_compact
	.thumb
	.thumb_func
	.type	benes_compact, %function
benes_compact:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r0, [sp, #28]
	str	r1, [sp, #32]
	cmp	r2, #0
	beq	.L29
	add	r1, r1, #5632
	mvn	r2, #255
	str	r1, [sp, #32]
	str	r2, [sp, #24]
	mov	r3, r1
.L2:
	movs	r1, #1
	str	r1, [sp, #16]
	str	r3, [sp, #20]
.L8:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	movs	r2, #1
	rsb	fp, r1, #6
	lsl	fp, r2, fp
	lsl	r10, r2, r1
	subs	r3, r1, #1
	lsl	r1, fp, #3
	lsl	r3, r2, r3
	str	r1, [sp, #12]
	ldr	r1, [sp, #28]
	str	r3, [sp, #8]
	movs	r2, #0
	lsls	r3, r3, #3
	str	r3, [sp, #4]
	lsl	r10, r10, #3
	str	r2, [sp]
	mov	r4, r1
	mov	r5, r0
.L6:
	ldr	lr, [sp, #4]
	mov	ip, r4
	add	lr, lr, r4
	mov	r9, r5
	mov	r8, #0
.L4:
	ldrd	r6, [ip]
	ldrd	r0, [lr]
	ldrd	r2, [r9], #8
	eors	r0, r0, r6
	eors	r1, r1, r7
	ands	r0, r0, r2
	ands	r1, r1, r3
	eor	r2, r0, r6
	eor	r3, r1, r7
	strd	r2, [ip]
	ldrd	r2, [lr]
	add	r8, r8, #1
	eors	r2, r2, r0
	eors	r3, r3, r1
	cmp	r8, fp
	strd	r2, [lr]
	add	ip, ip, r10
	add	lr, lr, r10
	bne	.L4
	ldr	r3, [sp]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp]
	add	r5, r5, r1
	add	r4, r4, #8
	bne	.L6
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #24]
	adds	r3, r3, #1
	add	r1, r1, r2
	cmp	r3, #7
	str	r3, [sp, #16]
	str	r1, [sp, #20]
	bne	.L8
	add	r3, r2, r2, lsl #1
	ldr	r0, [sp, #28]
	ldr	r2, [sp, #32]
	lsls	r3, r3, #1
	add	r2, r2, r3
	mov	r1, r0
	str	r3, [sp, #36]
	str	r2, [sp, #32]
	bl	transpose_64x64_compact
	ldr	r2, [sp, #32]
	movs	r3, #1
	str	r3, [sp, #16]
	str	r2, [sp, #20]
.L14:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	movs	r2, #1
	rsb	fp, r1, #6
	lsl	fp, r2, fp
	lsl	r10, r2, r1
	subs	r3, r1, #1
	lsl	r1, fp, #3
	lsl	r3, r2, r3
	str	r1, [sp, #12]
	ldr	r1, [sp, #28]
	str	r3, [sp, #8]
	movs	r2, #0
	lsls	r3, r3, #3
	str	r3, [sp, #4]
	lsl	r10, r10, #3
	str	r2, [sp]
	mov	r5, r1
	mov	r4, r0
.L12:
	ldr	lr, [sp, #4]
	mov	ip, r5
	add	lr, lr, r5
	mov	r9, r4
	mov	r8, #0
.L10:
	ldrd	r6, [ip]
	ldrd	r0, [lr]
	ldrd	r2, [r9], #8
	eors	r0, r0, r6
	eors	r1, r1, r7
	ands	r0, r0, r2
	ands	r1, r1, r3
	eor	r2, r0, r6
	eor	r3, r1, r7
	strd	r2, [ip]
	ldrd	r2, [lr]
	add	r8, r8, #1
	eors	r2, r2, r0
	eors	r3, r3, r1
	cmp	r8, fp
	strd	r2, [lr]
	add	ip, ip, r10
	add	lr, lr, r10
	bne	.L10
	ldr	r3, [sp]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp]
	add	r4, r4, r1
	add	r5, r5, #8
	bne	.L12
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #24]
	adds	r3, r3, #1
	add	r1, r1, r2
	cmp	r3, #7
	str	r3, [sp, #16]
	str	r1, [sp, #20]
	bne	.L14
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r3, r2
	str	r3, [sp, #32]
	str	r3, [sp, #20]
	movs	r3, #4
	str	r3, [sp, #16]
	mov	r1, r3
.L21:
	movs	r2, #1
	rsb	fp, r1, #5
	lsl	fp, r2, fp
	lsl	r3, r2, r1
	add	r10, r1, #1
	lsl	r1, fp, #3
	str	r1, [sp, #12]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #28]
	str	r3, [sp, #4]
	lsl	r10, r2, r10
	lsls	r2, r3, #3
	movs	r3, #0
	lsl	r10, r10, #3
	str	r2, [sp, #8]
	str	r3, [sp]
	mov	r4, r1
	mov	r5, r0
.L15:
	ldr	lr, [sp, #8]
	mov	ip, r4
	add	lr, lr, r4
	mov	r9, r5
	mov	r8, #0
.L19:
	ldrd	r6, [ip]
	ldrd	r0, [lr]
	ldrd	r2, [r9], #8
	eors	r0, r0, r6
	eors	r1, r1, r7
	ands	r0, r0, r2
	ands	r1, r1, r3
	eor	r2, r0, r6
	eor	r3, r1, r7
	strd	r2, [ip]
	ldrd	r2, [lr]
	add	r8, r8, #1
	eors	r2, r2, r0
	eors	r3, r3, r1
	cmp	r8, fp
	strd	r2, [lr]
	add	ip, ip, r10
	add	lr, lr, r10
	bne	.L19
	ldr	r1, [sp]
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	adds	r1, r1, #1
	cmp	r1, r3
	str	r1, [sp]
	add	r5, r5, r2
	add	r4, r4, #8
	bne	.L15
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #24]
	subs	r1, r1, #1
	add	r2, r2, r3
	str	r2, [sp, #20]
	adds	r2, r1, #1
	str	r1, [sp, #16]
	bne	.L21
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #28]
	add	r3, r2, r2, lsl #2
	ldr	r2, [sp, #32]
	mov	r1, r0
	add	r2, r2, r3
	str	r2, [sp, #32]
	bl	transpose_64x64_compact
	movs	r3, #5
	str	r3, [sp, #20]
	mov	r1, r3
.L28:
	movs	r2, #1
	rsb	r3, r1, #5
	lsl	r0, r2, r3
	add	r9, r1, #1
	lsl	r3, r2, r1
	lsls	r1, r0, #3
	lsl	r9, r2, r9
	str	r3, [sp, #12]
	lsls	r2, r3, #3
	str	r1, [sp, #16]
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #28]
	str	r2, [sp, #8]
	lsl	r9, r9, #3
	movs	r2, #0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r10, r9
	mov	r5, r1
	mov	r4, r0
.L22:
	ldr	ip, [sp, #8]
	ldr	fp, [sp]
	add	ip, ip, r5
	mov	r8, r5
	mov	r9, #0
.L26:
	ldrd	r6, [r8]
	ldrd	r0, [ip]
	ldrd	r2, [fp], #8
	eors	r0, r0, r6
	eors	r1, r1, r7
	ands	r0, r0, r2
	ands	r1, r1, r3
	eor	r2, r0, r6
	eor	r3, r1, r7
	strd	r2, [r8]
	ldrd	r2, [ip]
	add	r9, r9, #1
	eors	r2, r2, r0
	eors	r3, r3, r1
	cmp	r9, r4
	strd	r2, [ip]
	add	r8, r8, r10
	add	ip, ip, r10
	bne	.L26
	ldr	r3, [sp]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	add	r3, r3, r1
	str	r3, [sp]
	ldr	r3, [sp, #12]
	adds	r2, r2, #1
	cmp	r2, r3
	str	r2, [sp, #4]
	add	r5, r5, #8
	bne	.L22
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #32]
	subs	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #24]
	add	r2, r2, r3
	adds	r3, r1, #1
	str	r2, [sp, #32]
	bne	.L28
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L29:
	mov	r3, #256
	str	r3, [sp, #24]
	ldr	r3, [sp, #32]
	b	.L2
	.size	benes_compact, .-benes_compact
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
