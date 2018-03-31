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
	.file	"transpose.c"
	.text
	.align	2
	.global	transpose_64x64_compact
	.thumb
	.thumb_func
	.type	transpose_64x64_compact, %function
transpose_64x64_compact:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #164
	mov	r4, r1
	movw	r1, #:lower16:.LANCHOR0
	str	r0, [sp, #60]
	movt	r1, #:upper16:.LANCHOR0
	add	r0, sp, #64
	movs	r2, #96
	bl	memcpy
	ldr	r3, [sp, #60]
	subs	r4, r4, #8
	sub	r0, r3, #8
	movs	r1, #64
.L3:
	ldrd	r2, [r4, #8]!
	subs	r1, r1, #1
	strd	r2, [r0, #8]!
	bne	.L3
	movs	r5, #5
	str	r5, [sp, #52]
	add	r4, sp, #152
	ldr	r7, [sp, #52]
	str	r4, [sp, #56]
.L9:
	movs	r6, #1
	lsl	fp, r6, r7
	lsl	r7, fp, #3
	movs	r6, #32
	str	r7, [sp, #44]
	ldr	r7, [sp, #56]
	ldr	r9, [sp, #60]
	sdiv	r6, r6, fp
	str	r6, [sp, #48]
	ldrd	r6, [r7, #-8]
	strd	r6, [sp, #16]
	ldr	r7, [sp, #56]
	ldrd	r6, [r7]
	sub	r2, fp, #32
	rsb	r3, fp, #32
	strd	r6, [sp, #24]
	movs	r6, #0
	str	r2, [sp, #32]
	mov	r10, r3
	str	r6, [sp, #36]
.L4:
	ldr	r6, [sp, #44]
	add	r6, r6, r9
	str	r6, [sp, #40]
	mov	ip, r6
	mov	r8, #0
.L10:
	ldrd	r0, [ip]
	ldrd	r4, [sp, #16]
	ands	r0, r0, r4
	ands	r1, r1, r5
	lsl	r2, r0, r2
	lsl	r7, r1, fp
	lsr	r3, r0, r3
	orrs	r7, r7, r2
	ldrd	r4, [sp, #24]
	orrs	r7, r7, r3
	ldrd	r2, [r9]
	ands	r3, r3, r5
	ands	r2, r2, r4
	strd	r2, [sp]
	lsl	r6, r0, fp
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #4]
	lsr	r4, r2, fp
	lsl	r2, r3, r10
	orrs	r4, r4, r2
	lsr	r2, r0, r1
	orrs	r4, r4, r2
	ldrd	r0, [sp, #24]
	ldrd	r2, [ip]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [sp, #8]
	ldrd	r0, [r9]
	ldrd	r2, [sp, #16]
	ands	r1, r1, r3
	ldr	r3, [sp, #4]
	ands	r0, r0, r2
	lsr	r5, r3, fp
	ldrd	r2, [sp, #8]
	orrs	r2, r2, r4
	orrs	r3, r3, r5
	strd	r2, [sp]
	orrs	r0, r0, r6
	orrs	r1, r1, r7
	strd	r0, [r9], #8
	ldrd	r0, [sp]
	add	r8, r8, #1
	cmp	fp, r8
	mov	r3, r10
	strd	r0, [ip], #8
	ldr	r2, [sp, #32]
	bgt	.L10
	ldr	r7, [sp, #44]
	ldr	r9, [sp, #40]
	ldr	r6, [sp, #36]
	add	r9, r9, r7
	ldr	r7, [sp, #48]
	adds	r6, r6, #1
	cmp	r6, r7
	str	r6, [sp, #36]
	bne	.L4
	ldr	r7, [sp, #52]
	ldr	r2, [sp, #56]
	subs	r7, r7, #1
	subs	r2, r2, #16
	adds	r3, r7, #1
	str	r7, [sp, #52]
	str	r2, [sp, #56]
	bne	.L9
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	transpose_64x64_compact, .-transpose_64x64_compact
	.align	2
	.global	transpose_8x64
	.thumb
	.thumb_func
	.type	transpose_8x64, %function
transpose_8x64:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	mov	ip, r0
	movs	r6, #0
	movs	r7, #0
	ldrd	r8, [ip, #48]
	mov	r10, r6
	mov	fp, r7
	ldrd	r6, [ip, #56]
	mov	r2, #252645135
	mov	r3, #252645135
	sub	sp, sp, #136
	ldrd	r4, [ip, #40]
	ldrd	r0, [r0, #32]
	and	r8, r8, r2
	and	r9, r9, r3
	ands	r6, r6, r2
	ands	r7, r7, r3
	strd	r8, [sp, #24]
	strd	r6, [sp, #8]
	mov	r8, r10
	mov	r9, fp
	strd	r8, [sp, #96]
	ldr	r8, [sp, #12]
	ldr	r7, [sp, #28]
	ands	r1, r1, r3
	ands	r5, r5, r3
	ands	r0, r0, r2
	ands	r4, r4, r2
	lsl	r9, r1, #4
	lsls	r6, r5, #4
	lsl	r8, r8, #4
	str	r8, [sp, #100]
	orr	r9, r9, r0, lsr #28
	orr	r6, r6, r4, lsr #28
	str	r9, [sp, #20]
	str	r6, [sp, #36]
	ldr	r9, [sp, #100]
	ldr	r6, [sp, #8]
	ldr	r8, [sp, #24]
	orr	r9, r9, r6, lsr #28
	lsls	r7, r7, #4
	orr	r7, r7, r8, lsr #28
	str	r9, [sp, #100]
	ldrd	r8, [ip]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #104]
	lsl	r9, r4, #4
	str	r9, [sp, #32]
	ldrd	r8, [ip, #16]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #120]
	ldrd	r8, [ip, #24]
	ldrd	r4, [ip, #8]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #64]
	ldr	r6, [sp, #24]
	ldr	r9, [sp, #8]
	str	r7, [sp, #44]
	ands	r4, r4, r2
	lsls	r7, r0, #4
	ands	r5, r5, r3
	lsls	r6, r6, #4
	lsl	r9, r9, #4
	ldrd	r0, [ip]
	ldrd	r2, [ip, #24]
	str	r7, [sp, #16]
	strd	r4, [sp, #112]
	str	r6, [sp, #40]
	ldrd	r4, [ip, #8]
	ldrd	r6, [ip, #16]
	str	r9, [sp, #96]
	ldrd	r8, [ip, #56]
	mov	r10, #-252645136
	mov	fp, #-252645136
	and	r8, r8, r10
	and	r9, r9, fp
	strd	r8, [sp, #128]
	ldrd	r8, [ip, #32]
	and	r8, r8, r10
	and	r9, r9, fp
	strd	r8, [sp, #8]
	ldrd	r8, [ip, #40]
	and	r8, r8, r10
	and	r9, r9, fp
	strd	r8, [sp, #88]
	ldrd	r8, [ip, #48]
	and	r2, r2, r10
	and	r1, r1, fp
	and	r5, r5, fp
	and	r7, r7, fp
	and	r3, r3, fp
	and	r8, r8, r10
	and	r9, r9, fp
	lsr	fp, r2, #4
	strd	r8, [sp, #80]
	and	r0, r0, r10
	orr	r8, fp, r3, lsl #28
	str	r8, [sp]
	lsr	r9, r3, #4
	lsr	r8, r0, #4
	str	r9, [sp, #4]
	and	r4, r4, r10
	and	r6, r6, r10
	orr	r8, r8, r1, lsl #28
	ldrd	r10, [sp, #16]
	lsr	r9, r1, #4
	ldrd	r0, [sp, #104]
	lsrs	r2, r4, #4
	orr	r10, r10, r0
	orr	fp, fp, r1
	lsrs	r4, r6, #4
	orr	r2, r2, r5, lsl #28
	lsrs	r3, r5, #4
	orr	r4, r4, r7, lsl #28
	lsrs	r5, r7, #4
	strd	r10, [sp, #48]
	ldrd	r6, [sp, #32]
	ldrd	r10, [sp, #112]
	orr	r6, r6, r10
	orr	r7, r7, fp
	ldrd	r0, [sp, #40]
	strd	r6, [sp, #56]
	ldrd	r6, [sp, #120]
	ldrd	r10, [sp, #64]
	orrs	r0, r0, r6
	orrs	r1, r1, r7
	ldrd	r6, [sp, #96]
	orr	r10, r10, r6
	orr	fp, fp, r7
	strd	r10, [sp, #96]
	ldrd	r6, [sp]
	ldrd	r10, [sp, #128]
	orr	r10, r10, r6
	orr	fp, fp, r7
	strd	r10, [sp, #104]
	ldrd	r10, [sp, #88]
	orr	r10, r10, r2
	orr	fp, fp, r3
	ldrd	r2, [sp, #80]
	orrs	r2, r2, r4
	orrs	r3, r3, r5
	ldrd	r4, [sp, #8]
	strd	r0, [sp, #72]
	orr	r4, r4, r8
	orr	r5, r5, r9
	ldrd	r8, [sp, #72]
	mov	r0, #858993459
	mov	r1, #858993459
	strd	r10, [sp, #64]
	and	r8, r8, r0
	and	r9, r9, r1
	mov	r10, #0
	mov	fp, #0
	strd	r2, [sp, #80]
	strd	r4, [sp, #88]
	strd	r8, [sp, #8]
	strd	r10, [sp, #16]
	ldrd	r8, [sp, #48]
	mov	r6, #-858993460
	mov	r7, #-858993460
	mov	r2, r10
	mov	r3, fp
	and	r8, r8, r6
	and	r9, r9, r7
	strd	r8, [sp, #128]
	ldrd	r10, [sp, #56]
	ldrd	r4, [sp, #96]
	mov	r8, r2
	mov	r9, r3
	strd	r8, [sp, #40]
	ldr	r9, [sp, #12]
	ldr	r8, [sp, #128]
	ands	r5, r5, r1
	and	r10, r10, r6
	lsl	r9, r9, #2
	strd	r2, [sp, #32]
	strd	r2, [sp, #24]
	str	r9, [sp, #20]
	lsls	r2, r5, #2
	lsr	r3, r10, #2
	str	r2, [sp, #36]
	str	r3, [sp, #24]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #8]
	orr	r2, r2, r3, lsr #30
	str	r2, [sp, #20]
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #36]
	ands	r4, r4, r0
	and	fp, fp, r7
	lsr	r8, r8, #2
	str	r8, [sp, #40]
	orr	r2, r2, r4, lsr #30
	orr	r3, r3, fp, lsl #30
	str	r2, [sp, #36]
	str	r3, [sp, #24]
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #132]
	ldrd	r8, [sp, #104]
	orr	r2, r2, r3, lsl #30
	str	r2, [sp, #40]
	ldr	r2, [sp, #8]
	and	r9, r9, r1
	and	r8, r8, r0
	lsl	r3, r9, #2
	lsls	r2, r2, #2
	str	r2, [sp, #16]
	orr	r2, r3, r8, lsr #30
	str	r2, [sp, #12]
	ldrd	r2, [sp, #48]
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [sp, #112]
	lsls	r3, r4, #2
	str	r3, [sp, #32]
	ldrd	r4, [sp, #56]
	ldrd	r2, [sp, #96]
	ands	r4, r4, r0
	ands	r5, r5, r1
	ands	r2, r2, r6
	ands	r3, r3, r7
	strd	r4, [sp, #56]
	strd	r2, [sp, #120]
	ldrd	r4, [sp, #72]
	ldr	r2, [sp, #132]
	ands	r4, r4, r6
	ands	r5, r5, r7
	lsrs	r2, r2, #2
	strd	r4, [sp, #96]
	str	r2, [sp, #44]
	lsr	r5, fp, #2
	ldrd	r2, [sp, #80]
	str	r5, [sp, #28]
	ldrd	r4, [sp, #104]
	ands	r3, r3, r1
	ands	r2, r2, r0
	ands	r4, r4, r6
	ands	r5, r5, r7
	lsl	r9, r3, #2
	strd	r4, [sp, #72]
	orr	r4, r9, r2, lsr #30
	lsl	r5, r8, #2
	ldrd	r8, [sp, #64]
	and	r8, r8, r0
	and	r9, r9, r1
	ldrd	r10, [sp, #64]
	str	r5, [sp, #8]
	strd	r8, [sp, #104]
	str	r4, [sp, #132]
	ldrd	r8, [sp, #88]
	ldrd	r4, [sp, #80]
	and	fp, fp, r7
	ands	r5, r5, r7
	and	r7, r7, r9
	lsl	r9, r2, #2
	ldrd	r2, [sp, #88]
	and	r10, r10, r6
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [sp, #80]
	ands	r4, r4, r6
	lsr	r2, r10, #2
	and	r6, r6, r8
	ldrd	r0, [sp, #56]
	strd	r4, [sp, #64]
	orr	r2, r2, fp, lsl #30
	lsr	r3, fp, #2
	lsrs	r4, r6, #2
	ldrd	r10, [sp, #32]
	str	r9, [sp, #128]
	orr	r4, r4, r7, lsl #30
	ldrd	r8, [sp, #112]
	lsrs	r5, r7, #2
	ldrd	r6, [sp, #16]
	orr	r10, r10, r0
	orr	fp, fp, r1
	orr	r6, r6, r8
	orr	r7, r7, r9
	strd	r10, [sp, #48]
	ldrd	r8, [sp, #24]
	ldrd	r10, [sp, #120]
	orr	r8, r8, r10
	orr	r9, r9, fp
	strd	r8, [sp, #24]
	ldrd	r10, [sp, #96]
	ldrd	r8, [sp, #40]
	orr	r8, r8, r10
	orr	r9, r9, fp
	strd	r8, [sp, #32]
	ldrd	r10, [sp, #104]
	ldrd	r8, [sp, #8]
	orr	r8, r8, r10
	orr	r9, r9, fp
	strd	r6, [sp, #16]
	strd	r8, [sp, #8]
	ldrd	r10, [sp, #80]
	ldrd	r8, [sp, #128]
	orr	r8, r8, r10
	orr	r9, r9, fp
	strd	r8, [sp, #40]
	ldrd	r8, [sp, #64]
	orr	r8, r8, r4
	orr	r9, r9, r5
	ldrd	r4, [sp, #16]
	mov	r6, #-1431655766
	mov	r7, #-1431655766
	ldrd	r10, [sp, #72]
	ands	r4, r4, r6
	ands	r5, r5, r7
	strd	r4, [sp, #72]
	ldrd	r4, [sp, #40]
	orr	r10, r10, r2
	orr	fp, fp, r3
	strd	r10, [sp, #88]
	ands	r4, r4, r6
	ands	r5, r5, r7
	strd	r4, [sp, #112]
	ldrd	r4, [sp, #88]
	mov	r0, #1431655765
	mov	r1, #1431655765
	strd	r8, [sp]
	ands	r4, r4, r0
	ands	r5, r5, r1
	ldrd	r2, [sp, #48]
	strd	r4, [sp, #56]
	ldrd	r4, [sp]
	ands	r2, r2, r0
	ands	r4, r4, r6
	ands	r5, r5, r7
	strd	r4, [sp, #128]
	ands	r3, r3, r1
	adds	r4, r2, r2
	adc	r5, r3, r3
	ldrd	r10, [sp, #24]
	strd	r4, [sp, #64]
	ldrd	r4, [sp, #72]
	ldrd	r2, [sp, #16]
	and	r10, r10, r0
	movs	r5, r5, lsr #1
	mov	r4, r4, rrx
	ldrd	r8, [sp, #32]
	strd	r4, [sp, #72]
	and	fp, fp, r1
	adds	r4, r10, r10
	adc	r5, fp, fp
	ands	r2, r2, r0
	ldrd	r10, [sp, #24]
	ands	r3, r3, r1
	strd	r2, [sp, #16]
	ldrd	r2, [sp, #48]
	and	r8, r8, r6
	and	r9, r9, r7
	strd	r8, [sp, #80]
	and	r10, r10, r6
	ldrd	r8, [sp, #8]
	and	fp, fp, r7
	ands	r2, r2, r6
	ands	r3, r3, r7
	strd	r10, [sp, #24]
	ldrd	r10, [sp, #80]
	strd	r2, [sp, #48]
	ldrd	r2, [sp, #32]
	and	r8, r8, r0
	strd	r4, [sp, #96]
	and	r9, r9, r1
	movs	fp, fp, lsr #1
	mov	r10, r10, rrx
	adds	r4, r8, r8
	adc	r5, r9, r9
	ands	r2, r2, r0
	ands	r3, r3, r1
	strd	r2, [sp, #104]
	strd	r4, [sp, #80]
	ldrd	r4, [sp, #56]
	ldrd	r2, [sp, #112]
	ldrd	r8, [sp, #8]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	adds	r4, r4, r4
	adc	r5, r5, r5
	strd	r4, [sp, #56]
	and	r8, r8, r6
	ldrd	r4, [sp]
	and	r9, r9, r7
	strd	r8, [sp, #120]
	strd	r2, [sp, #8]
	ldrd	r8, [sp, #40]
	ldrd	r2, [sp, #88]
	ands	r4, r4, r0
	ands	r5, r5, r1
	strd	r4, [sp, #112]
	ands	r2, r2, r6
	ldrd	r4, [sp, #64]
	ands	r3, r3, r7
	and	r8, r8, r0
	ldrd	r6, [sp, #16]
	and	r9, r9, r1
	ldrd	r0, [sp, #128]
	orrs	r4, r4, r6
	movs	r1, r1, lsr #1
	mov	r0, r0, rrx
	orrs	r5, r5, r7
	strd	r0, [sp, #32]
	ldrd	r6, [sp, #104]
	strd	r2, [sp, #40]
	ldrd	r0, [sp, #72]
	ldrd	r2, [sp, #48]
	strd	r4, [ip]
	ldrd	r4, [sp, #96]
	orrs	r0, r0, r2
	orrs	r1, r1, r3
	orrs	r4, r4, r6
	orrs	r5, r5, r7
	strd	r0, [ip, #8]
	ldrd	r6, [sp, #8]
	ldrd	r0, [sp, #24]
	strd	r4, [ip, #16]
	ldrd	r4, [sp, #120]
	ldrd	r2, [sp, #80]
	orr	r10, r10, r0
	orr	fp, fp, r1
	orrs	r6, r6, r4
	ldrd	r0, [sp, #56]
	orrs	r7, r7, r5
	ldrd	r4, [sp, #112]
	orr	r8, r8, r2
	orr	r9, r9, r3
	orrs	r4, r4, r0
	ldrd	r2, [sp, #40]
	orrs	r5, r5, r1
	ldrd	r0, [sp, #32]
	orrs	r2, r2, r0
	orrs	r3, r3, r1
	strd	r10, [ip, #24]
	strd	r8, [ip, #32]
	strd	r6, [ip, #40]
	strd	r4, [ip, #48]
	strd	r2, [ip, #56]
	add	sp, sp, #136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	transpose_8x64, .-transpose_8x64
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1431655765
	.word	1431655765
	.word	-1431655766
	.word	-1431655766
	.word	858993459
	.word	858993459
	.word	-858993460
	.word	-858993460
	.word	252645135
	.word	252645135
	.word	-252645136
	.word	-252645136
	.word	16711935
	.word	16711935
	.word	-16711936
	.word	-16711936
	.word	65535
	.word	65535
	.word	-65536
	.word	-65536
	.word	-1
	.word	0
	.word	0
	.word	-1
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
