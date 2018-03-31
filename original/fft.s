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
	.file	"fft.c"
	.text
	.align	2
	.thumb
	.thumb_func
	.type	radix_conversions, %function
radix_conversions:
	@ args = 0, pretend = 0, frame = 552
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r1, #:lower16:.LANCHOR0
	sub	sp, sp, #556
	mov	ip, r0
	movt	r1, #:upper16:.LANCHOR0
	add	r0, sp, #72
	mov	r2, #480
	str	ip, [sp, #12]
	str	r0, [sp, #68]
	bl	memcpy
	movs	r3, #0
	ldr	ip, [sp, #12]
	strd	r6, [sp, #16]
	mov	r6, r3
.L2:
	mov	r7, ip
	mov	lr, #0
	str	ip, [sp, #8]
.L7:
	ldrd	r0, [r7]
	movs	r2, #0
	movs	r3, #0
	ands	r2, r2, r0
	movt	r3, 65535
	ands	r3, r3, r1
	lsr	r8, r2, #16
	orr	r8, r8, r3, lsl #16
	eor	r0, r0, r8
	lsr	r9, r3, #16
	movs	r2, #0
	eor	r1, r1, r9
	ands	r2, r2, r0
	movw	r3, #65535
	ands	r3, r3, r1
	lsr	r10, r2, #16
	orr	r10, r10, r3, lsl #16
	lsr	fp, r3, #16
	eor	r2, r10, r0
	eor	r3, fp, r1
	mov	r0, #-16777216
	mov	r1, #-16777216
	cmp	r6, #4
	and	r0, r0, r2
	and	r1, r1, r3
	strd	r2, [r7], #8
	beq	.L5
	lsrs	r4, r0, #8
	orr	r4, r4, r1, lsl #24
	lsrs	r5, r1, #8
	eors	r2, r2, r4
	mov	r0, #16711680
	ands	r0, r0, r2
	eors	r3, r3, r5
	mov	r1, #16711680
	ands	r1, r1, r3
	lsr	ip, r0, #8
	orr	ip, ip, r1, lsl #24
	str	ip, [sp, #16]
	lsr	ip, r1, #8
	str	ip, [sp, #20]
	ldrd	r0, [sp, #16]
	cmp	r6, #3
	eor	r2, r2, r0
	eor	r3, r3, r1
	mov	r0, #-268374016
	mov	r1, #-268374016
	and	r0, r0, r2
	and	r1, r1, r3
	strd	r2, [r7, #-8]
	beq	.L5
	lsr	ip, r0, #4
	orr	ip, ip, r1, lsl #28
	str	ip, [sp, #24]
	lsr	ip, r1, #4
	str	ip, [sp, #28]
	ldrd	r0, [sp, #24]
	eors	r2, r2, r0
	mov	r0, #251662080
	eors	r3, r3, r1
	ands	r0, r0, r2
	mov	r1, #251662080
	ands	r1, r1, r3
	lsr	ip, r0, #4
	orr	ip, ip, r1, lsl #28
	str	ip, [sp, #32]
	lsr	ip, r1, #4
	str	ip, [sp, #36]
	ldrd	r0, [sp, #32]
	cmp	r6, #2
	eor	r2, r2, r0
	eor	r3, r3, r1
	mov	r0, #-1061109568
	mov	r1, #-1061109568
	and	r0, r0, r2
	and	r1, r1, r3
	strd	r2, [r7, #-8]
	beq	.L5
	lsr	ip, r0, #2
	orr	ip, ip, r1, lsl #30
	str	ip, [sp, #40]
	lsr	ip, r1, #2
	str	ip, [sp, #44]
	ldrd	r0, [sp, #40]
	eors	r2, r2, r0
	mov	r0, #808464432
	eors	r3, r3, r1
	ands	r0, r0, r2
	mov	r1, #808464432
	ands	r1, r1, r3
	lsr	ip, r0, #2
	orr	ip, ip, r1, lsl #30
	str	ip, [sp, #48]
	lsr	ip, r1, #2
	str	ip, [sp, #52]
	ldrd	r0, [sp, #48]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r7, #-8]
	ldrd	r2, [r7, #-8]
	mov	r0, #-2004318072
	mov	r1, #-2004318072
	ands	r0, r0, r2
	ands	r1, r1, r3
	movs	r3, r1, lsr #1
	mov	r2, r0, rrx
	ldrd	r0, [r7, #-8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	mov	r2, #1145324612
	mov	r3, #1145324612
	ands	r2, r2, r0
	ands	r3, r3, r1
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #56]
	cbnz	r6, .L5
	strd	r0, [r7, #-8]
.L5:
	add	lr, lr, #1
	cmp	lr, #12
	bne	.L7
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #68]
	str	ip, [sp, #12]
	mov	r0, ip
	mov	r1, ip
	bl	vec_mul
	ldr	r3, [sp, #68]
	ldr	ip, [sp, #12]
	adds	r6, r6, #1
	adds	r3, r3, #96
	cmp	r6, #5
	str	r3, [sp, #68]
	bne	.L2
	add	sp, sp, #556
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	radix_conversions, .-radix_conversions
	.align	2
	.thumb
	.thumb_func
	.type	butterflies, %function
butterflies:
	@ args = 0, pretend = 0, frame = 6352
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #6336
	sub	sp, sp, #20
	ldr	r5, .L31
	str	r0, [sp, #140]
	mov	r4, r1
	add	r0, sp, #304
	ldr	r1, .L31+4
	mov	r2, #6048
	bl	memcpy
	add	r7, sp, #144
	add	ip, r5, #64
.L20:
	ldr	r0, [r5]	@ unaligned
	ldr	r1, [r5, #4]	@ unaligned
	ldr	r2, [r5, #8]	@ unaligned
	ldr	r3, [r5, #12]	@ unaligned
	mov	r6, r7
	stmia	r6!, {r0, r1, r2, r3}
	adds	r5, r5, #16
	cmp	r5, ip
	mov	r7, r6
	bne	.L20
	add	r0, sp, #144
	ldr	r7, [sp, #140]
	add	r1, r0, #63
	add	ip, sp, #143
	str	r1, [sp, #84]
	add	r6, r7, #88
	movs	r2, #1
	movs	r3, #0
	b	.L32
.L33:
	.align	2
.L31:
	.word	.LANCHOR1+2184
	.word	.LANCHOR0+480
.L32:
.L21:
	ldrb	r5, [ip, #1]!	@ zero_extendqisi2
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	lsrs	r1, r1, r5
	str	r1, [sp, #88]
	ldr	r8, [sp, #88]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r8, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #88]
	str	r0, [sp, #92]
	ldrd	r0, [sp, #88]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-88]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	lsrs	r1, r1, r5
	str	r1, [sp, #24]
	ldr	r9, [sp, #24]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r9, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #24]
	str	r0, [sp, #28]
	ldrd	r0, [sp, #24]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-80]
	ldr	r1, [r4, #16]
	ldr	r0, [r4, #20]
	lsrs	r1, r1, r5
	str	r1, [sp, #32]
	ldr	r10, [sp, #32]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r10, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #32]
	str	r0, [sp, #36]
	ldrd	r0, [sp, #32]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-72]
	ldr	r1, [r4, #24]
	ldr	r0, [r4, #28]
	lsrs	r1, r1, r5
	str	r1, [sp, #40]
	ldr	fp, [sp, #40]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, fp, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #40]
	str	r0, [sp, #44]
	ldrd	r0, [sp, #40]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-64]
	ldr	r1, [r4, #32]
	ldr	r0, [r4, #36]
	lsrs	r1, r1, r5
	str	r1, [sp, #48]
	rsb	r7, r5, #32
	ldr	r8, [sp, #48]
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r8, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #48]
	str	r0, [sp, #52]
	ldrd	r0, [sp, #48]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-56]
	ldr	r1, [r4, #40]
	ldr	r0, [r4, #44]
	lsrs	r1, r1, r5
	str	r1, [sp, #72]
	ldr	r9, [sp, #72]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r9, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #72]
	str	r0, [sp, #76]
	ldrd	r0, [sp, #72]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-48]
	ldr	r1, [r4, #48]
	ldr	r0, [r4, #52]
	lsrs	r1, r1, r5
	str	r1, [sp, #56]
	ldr	r10, [sp, #56]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r10, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #56]
	str	r0, [sp, #60]
	ldrd	r0, [sp, #56]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-40]
	ldr	r1, [r4, #56]
	ldr	r0, [r4, #60]
	lsrs	r1, r1, r5
	str	r1, [sp, #64]
	ldr	fp, [sp, #64]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, fp, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #64]
	str	r0, [sp, #68]
	ldrd	r0, [sp, #64]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-32]
	ldr	r1, [r4, #64]
	ldr	r0, [r4, #68]
	lsrs	r1, r1, r5
	str	r1, [sp, #8]
	ldr	r8, [sp, #8]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r8, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldrd	r0, [sp, #8]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-24]
	ldr	r1, [r4, #72]
	ldr	r0, [r4, #76]
	lsrs	r1, r1, r5
	str	r1, [sp, #16]
	ldr	r9, [sp, #16]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	sub	r1, r5, #32
	orr	r7, r9, r7
	lsr	r1, r0, r1
	orrs	r1, r1, r7
	lsrs	r0, r0, r5
	str	r1, [sp, #16]
	str	r0, [sp, #20]
	ldrd	r0, [sp, #16]
	ands	r0, r0, r2
	ands	r1, r1, r3
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-16]
	ldr	r0, [r4, #84]
	ldr	r1, [r4, #80]
	rsb	r7, r5, #32
	lsl	r7, r0, r7
	lsr	r10, r1, r5
	sub	r1, r5, #32
	lsr	r1, r0, r1
	orr	r10, r10, r7
	orr	r10, r10, r1
	lsr	fp, r0, r5
	and	r1, fp, r3
	and	r0, r10, r2
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6, #-8]
	ldr	r0, [r4, #92]
	ldr	r1, [r4, #88]
	rsb	r7, r5, #32
	lsr	r8, r1, r5
	lsl	r7, r0, r7
	sub	r1, r5, #32
	lsr	r1, r0, r1
	orr	r8, r8, r7
	orr	r8, r8, r1
	lsr	r9, r0, r5
	and	r1, r9, r3
	and	r0, r8, r2
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	strd	r0, [r6], #96
	ldr	r0, [sp, #84]
	cmp	ip, r0
	bne	.L21
	movs	r7, #0
	movs	r6, #0
	strd	r6, [sp, #128]
	movs	r7, #0
	str	r7, [sp, #136]
.L29:
	ldr	r9, [sp, #136]
	ldr	fp, [sp, #128]
	ldr	r6, [sp, #140]
	mov	r8, #1
	lsl	r8, r8, r9
	lsl	r10, r8, #1
	mov	r2, r10
	add	r1, r10, r8, lsl #2
	add	r2, r2, r8
	add	r3, fp, fp, lsl #1
	add	r4, sp, #304
	lsls	r1, r1, #5
	lsls	r2, r2, #5
	add	r4, r4, r3, lsl #5
	movs	r7, #0
	str	r8, [sp, #108]
	str	r10, [sp, #112]
	str	r1, [sp, #116]
	str	r2, [sp, #124]
	str	r4, [sp, #120]
	str	r6, [sp, #104]
	str	r7, [sp, #100]
.L23:
	ldr	r5, [sp, #100]
	ldr	fp, [sp, #108]
	ldr	r3, [sp, #100]
	add	r5, r5, fp
	cmp	r5, r3
	ble	.L26
	ldr	r4, [sp, #104]
	ldr	r6, [sp, #124]
	str	r5, [sp, #96]
	mov	r7, r3
	mov	ip, r4
	ldr	r3, [sp, #120]
	str	r7, [sp, #88]
	add	ip, ip, r6
	mov	r5, ip
	mov	ip, r3
.L27:
	mov	r1, r5
	mov	r2, ip
	add	r0, sp, #208
	str	ip, [sp, #4]
	bl	vec_mul
	ldrd	r0, [r4]
	ldrd	r2, [sp, #208]
	ldrd	r8, [sp, #216]
	eor	r10, r2, r0
	eor	fp, r3, r1
	ldrd	r2, [r4, #8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r6, [r4, #16]
	strd	r10, [sp, #8]
	ldrd	r8, [sp, #224]
	ldrd	r10, [r4, #24]
	strd	r2, [sp, #16]
	ldrd	r2, [sp, #232]
	eor	r8, r8, r6
	eor	r9, r9, r7
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r6, [r4, #32]
	ldrd	r2, [sp, #240]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [sp, #24]
	ldrd	r2, [sp, #248]
	ldrd	r6, [r4, #40]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #256
	ldrd	r2, [r3]
	strd	r6, [sp, #32]
	ldrd	r6, [r4, #48]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #264
	ldrd	r0, [r4, #56]
	strd	r6, [sp, #40]
	ldrd	r6, [r2]
	add	r3, sp, #288
	eors	r6, r6, r0
	eors	r7, r7, r1
	ldrd	r0, [r3]
	add	r3, sp, #272
	ldrd	r2, [r3]
	strd	r6, [sp, #48]
	ldrd	r6, [r4, #64]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #280
	ldrd	r2, [r3]
	strd	r6, [sp, #72]
	ldrd	r6, [r4, #72]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [sp, #56]
	ldrd	r6, [r4, #80]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #296
	ldrd	r0, [r1]
	strd	r6, [sp, #64]
	ldrd	r2, [sp, #8]
	ldrd	r6, [r4, #88]
	strd	r2, [r4]
	eors	r6, r6, r0
	eors	r7, r7, r1
	ldrd	r2, [sp, #24]
	ldrd	r0, [sp, #16]
	strd	r2, [r4, #32]
	strd	r0, [r4, #8]
	ldrd	r2, [sp, #40]
	ldrd	r0, [sp, #32]
	strd	r2, [r4, #48]
	strd	r0, [r4, #40]
	ldrd	r2, [sp, #72]
	ldrd	r0, [sp, #48]
	strd	r2, [r4, #64]
	strd	r0, [r4, #56]
	ldrd	r2, [sp, #64]
	ldrd	r0, [sp, #56]
	strd	r8, [r4, #16]
	strd	r2, [r4, #80]
	strd	r10, [r4, #24]
	strd	r6, [r4, #88]
	strd	r0, [r4, #72]
	ldr	r3, [sp, #88]
	adds	r3, r3, #1
	ldrd	r0, [r5]
	str	r3, [sp, #88]
	ldrd	r2, [sp, #8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	ldrd	r2, [sp, #16]
	ldrd	r0, [r5, #8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r5, #16]
	strd	r0, [r5, #8]
	ldrd	r0, [r5, #24]
	eor	r2, r2, r8
	eor	r3, r3, r9
	eor	r8, r0, r10
	eor	r9, r1, fp
	strd	r2, [r5, #16]
	ldrd	r10, [sp, #24]
	ldrd	r2, [r5, #32]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r0, [r5, #40]
	strd	r8, [r5, #24]
	strd	r10, [r5, #32]
	ldrd	r2, [sp, #32]
	eors	r2, r2, r0
	eors	r3, r3, r1
	ldrd	r10, [r5, #48]
	ldrd	r8, [sp, #40]
	strd	r2, [r5, #40]
	ldrd	r0, [sp, #48]
	ldrd	r2, [r5, #56]
	eor	r10, r10, r8
	eors	r0, r0, r2
	eors	r1, r1, r3
	eor	fp, fp, r9
	ldrd	r2, [sp, #72]
	ldrd	r8, [r5, #64]
	strd	r0, [r5, #56]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r0, [sp, #56]
	ldrd	r2, [r5, #72]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5, #72]
	ldrd	r2, [sp, #64]
	ldrd	r0, [r5, #80]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r5, #88]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldr	ip, [sp, #4]
	ldr	r6, [sp, #88]
	strd	r2, [r5, #88]
	ldr	r3, [sp, #96]
	cmp	r3, r6
	strd	r0, [r5, #80]
	strd	r10, [r5, #48]
	strd	r8, [r5, #64]
	add	ip, ip, #96
	add	r4, r4, #96
	add	r5, r5, #96
	bne	.L27
.L26:
	ldr	r7, [sp, #100]
	ldr	r8, [sp, #112]
	ldr	r9, [sp, #104]
	ldr	r10, [sp, #116]
	add	r7, r7, r8
	add	r9, r9, r10
	cmp	r7, #63
	str	r7, [sp, #100]
	str	r9, [sp, #104]
	ble	.L23
	ldrd	r10, [sp, #128]
	ldr	r8, [sp, #136]
	ldr	r3, [sp, #108]
	add	r8, r8, #1
	adds	r10, r10, r3
	mov	r4, r8
	adc	fp, fp, r3, asr #31
	cmp	r4, #6
	str	r8, [sp, #136]
	strd	r10, [sp, #128]
	bne	.L29
	add	sp, sp, #6336
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	butterflies, .-butterflies
	.align	2
	.global	fft
	.thumb
	.thumb_func
	.type	fft, %function
fft:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r0, r1
	bl	radix_conversions
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, lr}
	b	butterflies
	.size	fft, .-fft
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 4344
.LC1:
	.word	-63901693
	.word	-204488656
	.word	1006682124
	.word	1070534400
	.word	12632124
	.word	805518531
	.word	254865600
	.word	-855699652
	.word	-217857040
	.word	50380863
	.word	-255013696
	.word	1073691663
	.word	255605952
	.word	-201330496
	.word	-3948544
	.word	805516095
	.word	-1006636288
	.word	267587583
	.word	-252654592
	.word	-4132096
	.word	-868418560
	.word	-1060113412
	.word	-214908928
	.word	-63175696
	.word	61455
	.word	983040
	.word	-268435216
	.word	3840
	.word	3840
	.word	251658255
	.word	251658240
	.word	-267452176
	.word	240
	.word	15728640
	.word	0
	.word	15
	.word	251719680
	.word	-268435456
	.word	983040
	.word	15732480
	.word	15732480
	.word	61440
	.word	251719680
	.word	983280
	.word	0
	.word	15732480
	.word	15728640
	.word	0
	.word	-16776961
	.word	65280
	.word	65280
	.word	65280
	.word	16711680
	.word	-16776961
	.word	-16777216
	.word	-65536
	.word	16711680
	.word	16711935
	.word	-16777216
	.word	65535
	.word	-16777216
	.word	16776960
	.word	16711680
	.word	-256
	.word	-16711936
	.word	-65281
	.word	0
	.word	65280
	.word	-16777216
	.word	-256
	.word	0
	.word	16711680
	.word	65535
	.word	0
	.word	-65536
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-65536
	.word	-65536
	.word	0
	.word	0
	.word	65535
	.word	0
	.word	0
	.word	-65536
	.word	0
	.word	0
	.word	65535
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
.LC2:
	.word	-267448336
	.word	-267448336
	.word	252702960
	.word	-252702961
	.word	267390960
	.word	267390960
	.word	-1437248086
	.word	-1437248086
	.word	-267448336
	.word	-267448336
	.word	-869059636
	.word	869059635
	.word	-65536
	.word	-65536
	.word	869020620
	.word	-869020621
	.word	869020620
	.word	869020620
	.word	1515870810
	.word	1515870810
	.word	-16711936
	.word	-16711936
	.word	-267448336
	.word	-267448336
	.word	1010580540
	.word	1010580540
	.word	-252645136
	.word	-252645136
	.word	1431677610
	.word	1431677610
	.word	-869059636
	.word	-869059636
	.word	-1019428036
	.word	-1019428036
	.word	-1431655766
	.word	1431655765
	.word	-858993460
	.word	858993459
	.word	-16711936
	.word	16711935
	.word	-252645136
	.word	-252645136
	.word	0
	.word	0
	.word	-65536
	.word	65535
	.word	252702960
	.word	-252702961
	.word	1010580540
	.word	1010580540
	.word	252645135
	.word	252645135
	.word	-1431677611
	.word	-1431677611
	.word	-869059636
	.word	-869059636
	.word	-1019428036
	.word	-1019428036
	.word	-1431655766
	.word	1431655765
	.word	-858993460
	.word	858993459
	.word	16711935
	.word	-16711936
	.word	252645135
	.word	252645135
	.word	0
	.word	0
	.word	-65536
	.word	65535
	.word	252702960
	.word	-252702961
	.word	1437226410
	.word	-1437226411
	.word	869020620
	.word	-869020621
	.word	-869059636
	.word	869059635
	.word	-1431655766
	.word	1431655765
	.word	16776960
	.word	-16776961
	.word	-1019428036
	.word	1019428035
	.word	1431677610
	.word	1431677610
	.word	267390960
	.word	267390960
	.word	859032780
	.word	-859032781
	.word	-252645136
	.word	-252645136
	.word	16776960
	.word	16776960
	.word	-1019428036
	.word	-1019428036
	.word	-1437226411
	.word	1437226410
	.word	869020620
	.word	-869020621
	.word	869059635
	.word	-869059636
	.word	-1431655766
	.word	1431655765
	.word	16776960
	.word	-16776961
	.word	1019428035
	.word	-1019428036
	.word	-1431677611
	.word	-1431677611
	.word	-267390961
	.word	-267390961
	.word	-859032781
	.word	859032780
	.word	252645135
	.word	252645135
	.word	-16776961
	.word	-16776961
	.word	-1019428036
	.word	-1019428036
	.word	1437226410
	.word	-1437226411
	.word	-869020621
	.word	869020620
	.word	869059635
	.word	-869059636
	.word	-1431655766
	.word	1431655765
	.word	-16776961
	.word	16776960
	.word	-1019428036
	.word	1019428035
	.word	1431677610
	.word	1431677610
	.word	267390960
	.word	267390960
	.word	-859032781
	.word	859032780
	.word	-252645136
	.word	-252645136
	.word	16776960
	.word	16776960
	.word	-1019428036
	.word	-1019428036
	.word	-1437226411
	.word	1437226410
	.word	-869020621
	.word	869020620
	.word	-869059636
	.word	869059635
	.word	-1431655766
	.word	1431655765
	.word	-16776961
	.word	16776960
	.word	1019428035
	.word	-1019428036
	.word	-1431677611
	.word	-1431677611
	.word	-267390961
	.word	-267390961
	.word	859032780
	.word	-859032781
	.word	252645135
	.word	252645135
	.word	-16776961
	.word	-16776961
	.word	-1019428036
	.word	-1019428036
	.word	-1721329306
	.word	1721329305
	.word	-869059636
	.word	869059635
	.word	1515870810
	.word	-1515870811
	.word	-1010615236
	.word	1010615235
	.word	267390960
	.word	-267390961
	.word	1437226410
	.word	1437226410
	.word	-1010615236
	.word	1010615235
	.word	-252645136
	.word	252645135
	.word	1437226410
	.word	1437226410
	.word	-869059636
	.word	869059635
	.word	-252645136
	.word	-252645136
	.word	1520805210
	.word	-1520805211
	.word	1721329305
	.word	-1721329306
	.word	-869059636
	.word	869059635
	.word	1515870810
	.word	-1515870811
	.word	-1010615236
	.word	1010615235
	.word	-267390961
	.word	267390960
	.word	-1437226411
	.word	-1437226411
	.word	-1010615236
	.word	1010615235
	.word	252645135
	.word	-252645136
	.word	-1437226411
	.word	-1437226411
	.word	869059635
	.word	-869059636
	.word	252645135
	.word	252645135
	.word	1520805210
	.word	-1520805211
	.word	-1721329306
	.word	1721329305
	.word	-869059636
	.word	869059635
	.word	-1515870811
	.word	1515870810
	.word	1010615235
	.word	-1010615236
	.word	-267390961
	.word	267390960
	.word	-1437226411
	.word	-1437226411
	.word	1010615235
	.word	-1010615236
	.word	-252645136
	.word	252645135
	.word	-1437226411
	.word	-1437226411
	.word	-869059636
	.word	869059635
	.word	-252645136
	.word	-252645136
	.word	1520805210
	.word	-1520805211
	.word	1721329305
	.word	-1721329306
	.word	-869059636
	.word	869059635
	.word	-1515870811
	.word	1515870810
	.word	1010615235
	.word	-1010615236
	.word	267390960
	.word	-267390961
	.word	1437226410
	.word	1437226410
	.word	1010615235
	.word	-1010615236
	.word	252645135
	.word	-252645136
	.word	1437226410
	.word	1437226410
	.word	869059635
	.word	-869059636
	.word	252645135
	.word	252645135
	.word	1520805210
	.word	-1520805211
	.word	-1721329306
	.word	1721329305
	.word	869059635
	.word	-869059636
	.word	-1515870811
	.word	1515870810
	.word	-1010615236
	.word	1010615235
	.word	-267390961
	.word	267390960
	.word	1437226410
	.word	1437226410
	.word	-1010615236
	.word	1010615235
	.word	-252645136
	.word	252645135
	.word	1437226410
	.word	1437226410
	.word	-869059636
	.word	869059635
	.word	-252645136
	.word	-252645136
	.word	1520805210
	.word	-1520805211
	.word	1721329305
	.word	-1721329306
	.word	869059635
	.word	-869059636
	.word	-1515870811
	.word	1515870810
	.word	-1010615236
	.word	1010615235
	.word	267390960
	.word	-267390961
	.word	-1437226411
	.word	-1437226411
	.word	-1010615236
	.word	1010615235
	.word	252645135
	.word	-252645136
	.word	-1437226411
	.word	-1437226411
	.word	869059635
	.word	-869059636
	.word	252645135
	.word	252645135
	.word	1520805210
	.word	-1520805211
	.word	-1721329306
	.word	1721329305
	.word	869059635
	.word	-869059636
	.word	1515870810
	.word	-1515870811
	.word	1010615235
	.word	-1010615236
	.word	267390960
	.word	-267390961
	.word	-1437226411
	.word	-1437226411
	.word	1010615235
	.word	-1010615236
	.word	-252645136
	.word	252645135
	.word	-1437226411
	.word	-1437226411
	.word	-869059636
	.word	869059635
	.word	-252645136
	.word	-252645136
	.word	1520805210
	.word	-1520805211
	.word	1721329305
	.word	-1721329306
	.word	869059635
	.word	-869059636
	.word	1515870810
	.word	-1515870811
	.word	1010615235
	.word	-1010615236
	.word	-267390961
	.word	267390960
	.word	1437226410
	.word	1437226410
	.word	1010615235
	.word	-1010615236
	.word	252645135
	.word	-252645136
	.word	1437226410
	.word	1437226410
	.word	869059635
	.word	-869059636
	.word	252645135
	.word	252645135
	.word	1520805210
	.word	-1520805211
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	16776960
	.word	16776960
	.word	-16711936
	.word	-16711936
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	16776960
	.word	16776960
	.word	16711935
	.word	16711935
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	-16776961
	.word	-16776961
	.word	16711935
	.word	16711935
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	1771465110
	.word	-16776961
	.word	-16776961
	.word	-16711936
	.word	-16711936
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	-1771465111
	.word	-1771465111
	.word	-16776961
	.word	-16776961
	.word	16711935
	.word	16711935
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	-1771465111
	.word	-1771465111
	.word	-16776961
	.word	-16776961
	.word	-16711936
	.word	-16711936
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	-1771465111
	.word	-1771465111
	.word	16776960
	.word	16776960
	.word	-16711936
	.word	-16711936
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	1771465110
	.word	1771465110
	.word	-1771465111
	.word	-1771465111
	.word	16776960
	.word	16776960
	.word	16711935
	.word	16711935
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	16776960
	.word	16776960
	.word	-16711936
	.word	-16711936
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	16776960
	.word	16776960
	.word	16711935
	.word	16711935
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-16776961
	.word	-16776961
	.word	16711935
	.word	16711935
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-1771465111
	.word	-16776961
	.word	-16776961
	.word	-16711936
	.word	-16711936
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	1771465110
	.word	1771465110
	.word	-16776961
	.word	-16776961
	.word	16711935
	.word	16711935
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	1771465110
	.word	1771465110
	.word	-16776961
	.word	-16776961
	.word	-16711936
	.word	-16711936
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	1771465110
	.word	1771465110
	.word	16776960
	.word	16776960
	.word	-16711936
	.word	-16711936
	.word	-267390961
	.word	267390960
	.word	-252702961
	.word	252702960
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	-1771476586
	.word	-1771476586
	.word	-1771465111
	.word	-1771465111
	.word	1771465110
	.word	1771465110
	.word	16776960
	.word	16776960
	.word	16711935
	.word	16711935
	.word	267390960
	.word	-267390961
	.word	252702960
	.word	-252702961
	.word	-1019462461
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1520805210
	.word	-1520805211
	.word	1019462460
	.word	-1019462461
	.word	1019462460
	.word	1019462460
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-65536
	.word	-65536
	.word	-16711936
	.word	-16711936
	.word	-252645136
	.word	-252645136
	.word	-858993460
	.word	-858993460
	.word	-1431655766
	.word	-1431655766
.LC3:
	.byte	0
	.byte	32
	.byte	16
	.byte	48
	.byte	8
	.byte	40
	.byte	24
	.byte	56
	.byte	4
	.byte	36
	.byte	20
	.byte	52
	.byte	12
	.byte	44
	.byte	28
	.byte	60
	.byte	2
	.byte	34
	.byte	18
	.byte	50
	.byte	10
	.byte	42
	.byte	26
	.byte	58
	.byte	6
	.byte	38
	.byte	22
	.byte	54
	.byte	14
	.byte	46
	.byte	30
	.byte	62
	.byte	1
	.byte	33
	.byte	17
	.byte	49
	.byte	9
	.byte	41
	.byte	25
	.byte	57
	.byte	5
	.byte	37
	.byte	21
	.byte	53
	.byte	13
	.byte	45
	.byte	29
	.byte	61
	.byte	3
	.byte	35
	.byte	19
	.byte	51
	.byte	11
	.byte	43
	.byte	27
	.byte	59
	.byte	7
	.byte	39
	.byte	23
	.byte	55
	.byte	15
	.byte	47
	.byte	31
	.byte	63
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
