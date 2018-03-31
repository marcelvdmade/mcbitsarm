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
	.file	"gf.c"
	.text
	.align	2
	.global	gf_mul
	.thumb
	.thumb_func
	.type	gf_mul, %function
gf_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	and	r2, r1, #8
	and	r4, r1, #1
	mul	r4, r0, r4
	mul	r2, r0, r2
	and	r3, r1, #4
	mul	r3, r0, r3
	eors	r2, r2, r4
	and	r4, r1, #2
	mul	r4, r0, r4
	eors	r2, r2, r3
	and	r3, r1, #16
	mul	r3, r0, r3
	eors	r2, r2, r4
	and	r4, r1, #32
	mul	r4, r0, r4
	eors	r2, r2, r3
	and	r3, r1, #64
	mul	r3, r0, r3
	eors	r2, r2, r4
	and	r4, r1, #128
	mul	r4, r0, r4
	eors	r2, r2, r3
	and	r3, r1, #256
	mul	r3, r0, r3
	eors	r2, r2, r4
	and	r4, r1, #512
	mul	r4, r0, r4
	eors	r2, r2, r3
	and	r3, r1, #1024
	mul	r3, r0, r3
	eors	r2, r2, r4
	and	r1, r1, #2048
	eors	r2, r2, r3
	mul	r0, r0, r1
	mov	r3, #49152
	eors	r0, r0, r2
	movt	r3, 127
	ands	r3, r3, r0
	lsrs	r2, r3, #12
	eor	r3, r2, r3, lsr #9
	eors	r3, r3, r0
	and	r2, r3, #12288
	lsrs	r1, r2, #12
	orr	r2, r1, r2, lsr #9
	eor	r0, r2, r3
	ubfx	r0, r0, #0, #12
	ldr	r4, [sp], #4
	bx	lr
	.size	gf_mul, .-gf_mul
	.align	2
	.global	gf_sq
	.thumb
	.thumb_func
	.type	gf_sq, %function
gf_sq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, r0, lsl #8
	and	r2, r0, #16711935
	orr	r2, r2, r2, lsl #4
	and	r2, r2, #252645135
	orr	r2, r2, r2, lsl #2
	and	r2, r2, #858993459
	mov	r3, #16384
	orr	r2, r2, r2, lsl #1
	movt	r3, 85
	ands	r3, r3, r2
	lsrs	r1, r3, #12
	and	r2, r2, #1431655765
	orr	r3, r1, r3, lsr #9
	eors	r3, r3, r2
	and	r2, r3, #12288
	lsrs	r1, r2, #12
	orr	r2, r1, r2, lsr #9
	eor	r0, r2, r3
	ubfx	r0, r0, #0, #12
	bx	lr
	.size	gf_sq, .-gf_sq
	.align	2
	.global	gf_inv
	.thumb
	.thumb_func
	.type	gf_inv, %function
gf_inv:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	orr	r3, r0, r0, lsl #8
	and	r3, r3, #16711935
	orr	r3, r3, r3, lsl #4
	sub	sp, sp, #72
	and	r5, r0, #2048
	and	r3, r3, #252645135
	uxth	r5, r5
	orr	r3, r3, r3, lsl #2
	str	r5, [sp, #4]
	and	r3, r3, #858993459
	and	r5, r0, #1024
	mov	r2, #16384
	movt	r2, 85
	orr	r3, r3, r3, lsl #1
	uxth	r5, r5
	and	r1, r3, r2
	str	r5, [sp, #8]
	and	r5, r0, #512
	lsrs	r4, r1, #12
	uxth	r5, r5
	str	r5, [sp, #12]
	orr	r1, r4, r1, lsr #9
	and	r5, r0, #256
	and	r3, r3, #1431655765
	eors	r3, r3, r1
	uxth	r5, r5
	str	r5, [sp, #16]
	and	r1, r3, #12288
	and	r5, r0, #128
	lsrs	r4, r1, #12
	uxth	r5, r5
	str	r5, [sp, #20]
	orr	r1, r4, r1, lsr #9
	and	r5, r0, #64
	ldr	r6, [sp, #4]
	ldr	r10, [sp, #8]
	eors	r3, r3, r1
	uxth	r5, r5
	ubfx	r4, r3, #0, #12
	and	r1, r0, #1
	str	r5, [sp, #24]
	and	r5, r0, #32
	mul	r3, r1, r4
	str	r1, [sp]
	uxth	r5, r5
	mul	r1, r6, r4
	ldr	r6, [sp, #12]
	str	r5, [sp, #28]
	eors	r1, r1, r3
	and	r5, r0, #16
	mul	r3, r10, r4
	ldr	r10, [sp, #16]
	eors	r1, r1, r3
	uxth	r5, r5
	mul	r3, r6, r4
	ldr	r6, [sp, #20]
	str	r5, [sp, #32]
	eors	r1, r1, r3
	and	r5, r0, #8
	mul	r3, r10, r4
	ldr	r10, [sp, #24]
	eors	r1, r1, r3
	uxth	r5, r5
	mul	r3, r6, r4
	ldr	r6, [sp, #28]
	str	r5, [sp, #36]
	eors	r1, r1, r3
	mul	r3, r10, r4
	ldr	r10, [sp, #32]
	eors	r1, r1, r3
	mul	r3, r6, r4
	ldr	r6, [sp, #36]
	eors	r1, r1, r3
	and	r5, r0, #4
	mul	r3, r10, r4
	eors	r1, r1, r3
	uxth	r5, r5
	mul	r3, r6, r4
	and	r0, r0, #2
	uxth	r0, r0
	eors	r3, r3, r1
	mul	r1, r5, r4
	str	r0, [sp, #44]
	mul	r4, r0, r4
	eors	r3, r3, r1
	mov	r0, #49152
	movt	r0, 127
	eors	r3, r3, r4
	and	r1, r3, r0
	lsrs	r4, r1, #12
	eor	r1, r4, r1, lsr #9
	eors	r1, r1, r3
	and	r3, r1, #12288
	lsrs	r4, r3, #12
	orr	r3, r4, r3, lsr #9
	eors	r3, r3, r1
	uxth	r3, r3
	ubfx	r1, r3, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r4, r1, r2
	str	r5, [sp, #40]
	lsrs	r5, r4, #12
	orr	r4, r5, r4, lsr #9
	and	r1, r1, #1431655765
	eors	r1, r1, r4
	and	r4, r1, #12288
	lsrs	r5, r4, #12
	orr	r4, r5, r4, lsr #9
	eors	r1, r1, r4
	ubfx	r1, r1, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r5, r1, r2
	lsrs	r6, r5, #12
	orr	r4, r6, r5, lsr #9
	and	r1, r1, #1431655765
	eors	r4, r4, r1
	and	r1, r4, #12288
	lsrs	r5, r1, #12
	orr	r1, r5, r1, lsr #9
	eors	r1, r1, r4
	and	ip, r3, #2048
	ubfx	r1, r1, #0, #12
	and	r8, r3, #1
	uxth	ip, ip
	and	r7, r3, #1024
	mul	r4, r8, r1
	mul	r10, ip, r1
	uxth	r7, r7
	and	r6, r3, #512
	eor	r10, r10, r4
	uxth	r6, r6
	mul	r4, r7, r1
	and	r5, r3, #256
	mul	r9, r6, r1
	eor	r10, r10, r4
	uxth	r5, r5
	and	r4, r3, #128
	and	fp, r3, #64
	eor	r10, r10, r9
	uxth	r4, r4
	mul	r9, r5, r1
	uxth	fp, fp
	str	fp, [sp, #48]
	eor	r10, r10, r9
	mul	r9, r4, r1
	eor	r9, r10, r9
	ldr	r10, [sp, #48]
	str	r9, [sp, #56]
	and	fp, r3, #32
	mul	r9, r10, r1
	uxth	fp, fp
	ldr	r10, [sp, #56]
	str	fp, [sp, #52]
	eor	r9, r10, r9
	ldr	r10, [sp, #52]
	str	r9, [sp, #60]
	and	fp, r3, #16
	mul	r9, r10, r1
	uxth	fp, fp
	ldr	r10, [sp, #60]
	str	fp, [sp, #56]
	eor	r9, r10, r9
	and	fp, r3, #8
	ldr	r10, [sp, #56]
	str	r9, [sp, #64]
	uxth	fp, fp
	str	fp, [sp, #60]
	mul	r9, r10, r1
	ldr	r10, [sp, #64]
	eor	r9, r10, r9
	ldr	r10, [sp, #60]
	str	r9, [sp, #68]
	and	fp, r3, #4
	mul	r9, r10, r1
	ldr	r10, [sp, #68]
	uxth	fp, fp
	and	r3, r3, #2
	uxth	r3, r3
	eor	r9, r10, r9
	mul	r10, fp, r1
	eor	r9, r9, r10
	mul	r1, r3, r1
	eor	r9, r9, r1
	str	r3, [sp, #68]
	and	r3, r9, r0
	lsrs	r1, r3, #12
	eor	r1, r1, r3, lsr #9
	eor	r1, r1, r9
	and	r3, r1, #12288
	lsr	r9, r3, #12
	orr	r3, r9, r3, lsr #9
	eors	r3, r3, r1
	uxth	r3, r3
	ubfx	r1, r3, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r9, r1, r2
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	and	r1, r1, #1431655765
	eor	r1, r9, r1
	and	r9, r1, #12288
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	eor	r1, r9, r1
	ubfx	r1, r1, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r9, r1, r2
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	and	r1, r1, #1431655765
	eor	r1, r9, r1
	and	r9, r1, #12288
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	eor	r1, r9, r1
	ubfx	r1, r1, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r9, r1, r2
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	and	r1, r1, #1431655765
	eor	r1, r9, r1
	and	r9, r1, #12288
	lsr	r10, r9, #12
	orr	r9, r10, r9, lsr #9
	eor	r1, r9, r1
	ubfx	r1, r1, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r10, r1, r2
	str	fp, [sp, #64]
	lsr	fp, r10, #12
	orr	r9, fp, r10, lsr #9
	and	r1, r1, #1431655765
	eor	r9, r9, r1
	and	r1, r9, #12288
	lsr	r10, r1, #12
	orr	r1, r10, r1, lsr #9
	eor	r1, r1, r9
	ubfx	r1, r1, #0, #12
	and	r10, r3, #1
	and	fp, r3, #2048
	mul	r10, r10, r1
	mul	fp, fp, r1
	and	r9, r3, #1024
	mul	r9, r9, r1
	eor	fp, fp, r10
	and	r10, r3, #512
	mul	r10, r10, r1
	eor	fp, fp, r9
	and	r9, r3, #256
	mul	r9, r9, r1
	eor	fp, fp, r10
	and	r10, r3, #128
	mul	r10, r10, r1
	eor	fp, fp, r9
	and	r9, r3, #64
	mul	r9, r9, r1
	eor	fp, fp, r10
	and	r10, r3, #32
	mul	r10, r10, r1
	eor	fp, fp, r9
	and	r9, r3, #16
	mul	r9, r9, r1
	eor	fp, fp, r10
	and	r10, r3, #8
	eor	fp, fp, r9
	mul	r10, r10, r1
	and	r9, r3, #4
	mul	r9, r9, r1
	eor	r10, fp, r10
	and	r3, r3, #2
	mul	r3, r3, r1
	eor	r10, r10, r9
	eor	r9, r10, r3
	and	r3, r9, r0
	lsrs	r1, r3, #12
	eor	r3, r1, r3, lsr #9
	eor	r3, r3, r9
	and	r1, r3, #12288
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	eors	r3, r3, r1
	ubfx	r3, r3, #0, #12
	orr	r3, r3, r3, lsl #8
	and	r3, r3, #16711935
	orr	r3, r3, r3, lsl #4
	and	r3, r3, #252645135
	orr	r3, r3, r3, lsl #2
	and	r3, r3, #858993459
	orr	r3, r3, r3, lsl #1
	and	r1, r3, r2
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	and	r3, r3, #1431655765
	eors	r3, r3, r1
	and	r1, r3, #12288
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	eors	r3, r3, r1
	ubfx	r3, r3, #0, #12
	orr	r3, r3, r3, lsl #8
	and	r3, r3, #16711935
	orr	r3, r3, r3, lsl #4
	and	r3, r3, #252645135
	orr	r3, r3, r3, lsl #2
	and	r3, r3, #858993459
	orr	r3, r3, r3, lsl #1
	and	r1, r3, r2
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	and	r3, r3, #1431655765
	eors	r3, r3, r1
	and	r1, r3, #12288
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	eors	r3, r3, r1
	ubfx	r3, r3, #0, #12
	mul	ip, r3, ip
	mul	r8, r8, r3
	mul	r7, r7, r3
	eor	r8, ip, r8
	mul	r6, r6, r3
	eor	r8, r8, r7
	mul	r5, r5, r3
	ldr	r1, [sp, #48]
	ldr	r10, [sp, #64]
	eor	r8, r8, r6
	mul	r4, r4, r3
	eor	r8, r8, r5
	eor	r8, r8, r4
	mul	r4, r1, r3
	eor	r8, r8, r4
	ldr	r4, [sp, #52]
	ldr	r5, [sp, #56]
	ldr	r6, [sp, #60]
	ldr	r1, [sp, #68]
	mul	fp, r4, r3
	eor	r8, r8, fp
	mul	fp, r5, r3
	eor	r8, r8, fp
	mul	fp, r6, r3
	eor	r8, r8, fp
	mul	fp, r10, r3
	eor	r8, r8, fp
	mul	r3, r1, r3
	eor	r8, r8, r3
	and	r3, r8, r0
	lsrs	r1, r3, #12
	eor	r3, r1, r3, lsr #9
	eor	r3, r3, r8
	and	r1, r3, #12288
	lsrs	r4, r1, #12
	orr	r1, r4, r1, lsr #9
	eors	r3, r3, r1
	ubfx	r3, r3, #0, #12
	orr	r3, r3, r3, lsl #8
	and	r3, r3, #16711935
	orr	r3, r3, r3, lsl #4
	and	r3, r3, #252645135
	orr	r3, r3, r3, lsl #2
	and	r3, r3, #858993459
	orr	r3, r3, r3, lsl #1
	and	r1, r3, r2
	lsrs	r4, r1, #12
	orr	r1, r4, r1, lsr #9
	and	r3, r3, #1431655765
	eors	r3, r3, r1
	and	r1, r3, #12288
	lsrs	r4, r1, #12
	orr	r1, r4, r1, lsr #9
	ldr	r5, [sp, #4]
	ldr	r4, [sp]
	ldr	r6, [sp, #8]
	ldr	r10, [sp, #12]
	eors	r1, r1, r3
	ubfx	r1, r1, #0, #12
	mul	r3, r4, r1
	mul	r4, r1, r5
	eors	r3, r3, r4
	mul	r4, r6, r1
	eors	r3, r3, r4
	mul	r4, r10, r1
	eors	r3, r3, r4
	ldr	r4, [sp, #16]
	ldr	r6, [sp, #20]
	ldr	r10, [sp, #24]
	mul	r5, r4, r1
	eors	r3, r3, r5
	mul	r5, r6, r1
	eors	r3, r3, r5
	ldr	r5, [sp, #28]
	ldr	r6, [sp, #32]
	mul	r4, r10, r1
	eors	r3, r3, r4
	ldr	r10, [sp, #36]
	mul	r4, r5, r1
	eors	r3, r3, r4
	mul	r5, r6, r1
	eors	r3, r3, r5
	mul	r5, r10, r1
	eors	r3, r3, r5
	ldr	r5, [sp, #40]
	ldr	r6, [sp, #44]
	mul	r4, r5, r1
	eors	r3, r3, r4
	mul	r1, r6, r1
	eors	r1, r1, r3
	ands	r0, r0, r1
	lsrs	r3, r0, #12
	eor	r0, r3, r0, lsr #9
	eors	r0, r0, r1
	and	r3, r0, #12288
	lsrs	r1, r3, #12
	orr	r1, r1, r3, lsr #9
	eors	r1, r1, r0
	ubfx	r1, r1, #0, #12
	orr	r1, r1, r1, lsl #8
	and	r1, r1, #16711935
	orr	r1, r1, r1, lsl #4
	and	r1, r1, #252645135
	orr	r1, r1, r1, lsl #2
	and	r1, r1, #858993459
	orr	r1, r1, r1, lsl #1
	and	r3, r1, r2
	lsrs	r2, r3, #12
	and	r1, r1, #1431655765
	orr	r2, r2, r3, lsr #9
	eors	r2, r2, r1
	and	r3, r2, #12288
	lsrs	r1, r3, #12
	orr	r3, r1, r3, lsr #9
	eor	r0, r3, r2
	ubfx	r0, r0, #0, #12
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	gf_inv, .-gf_inv
	.align	2
	.global	gf_diff
	.thumb
	.thumb_func
	.type	gf_diff, %function
gf_diff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eors	r0, r0, r1
	subs	r0, r0, #1
	lsrs	r0, r0, #20
	eor	r0, r0, #4080
	eor	r0, r0, #15
	bx	lr
	.size	gf_diff, .-gf_diff
	.align	2
	.global	GF_mul
	.thumb
	.thumb_func
	.type	GF_mul, %function
GF_mul:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #248
	mov	r4, r1
	mov	r8, r0
	mov	r7, r2
	mov	r0, sp
	movs	r1, #0
	movs	r2, #246
	bl	memset
	mov	r6, sp
	subs	r0, r4, #2
	add	lr, sp, #124
.L6:
	ldrh	r1, [r0, #2]!
	movs	r4, #0
.L9:
	ldrh	r3, [r7, r4]
	ldrh	r2, [r6, r4]
	and	r9, r3, #1
	and	ip, r3, #2
	mul	r9, r1, r9
	and	r5, r3, #4
	mul	ip, r1, ip
	eor	ip, ip, r9
	mul	r5, r1, r5
	and	r9, r3, #8
	eor	ip, ip, r5
	mul	r9, r1, r9
	and	r5, r3, #16
	eor	ip, ip, r9
	mul	r5, r1, r5
	and	r9, r3, #32
	eor	ip, ip, r5
	mul	r9, r1, r9
	and	r5, r3, #64
	eor	ip, ip, r9
	mul	r5, r1, r5
	and	r9, r3, #128
	eor	ip, ip, r5
	mul	r9, r1, r9
	and	r5, r3, #256
	eor	ip, ip, r9
	mul	r5, r1, r5
	and	r9, r3, #512
	eor	ip, ip, r5
	mul	r9, r1, r9
	and	r5, r3, #1024
	mul	r5, r1, r5
	eor	ip, ip, r9
	and	r3, r3, #2048
	eor	ip, ip, r5
	mul	r3, r1, r3
	mov	r5, #49152
	eor	r3, ip, r3
	movt	r5, 127
	ands	r5, r5, r3
	lsr	ip, r5, #12
	eor	r5, ip, r5, lsr #9
	eors	r5, r5, r3
	and	r3, r5, #12288
	lsr	ip, r3, #12
	orr	r3, ip, r3, lsr #9
	eors	r5, r5, r3
	ubfx	r5, r5, #0, #12
	eors	r5, r5, r2
	strh	r5, [r6, r4]	@ movhi
	adds	r4, r4, #2
	cmp	r4, #124
	bne	.L9
	adds	r6, r6, #2
	cmp	r6, lr
	bne	.L6
	ldrh	r6, [sp, #122]
	add	r2, sp, #0
	movs	r5, #61
	b	.L11
.L15:
	mov	r6, r3
.L11:
	ldrh	r3, [r2, #244]
	ldrh	r7, [r2, #134]
	lsls	r1, r3, #1
	lsls	r0, r3, #5
	eor	lr, r1, r0
	lsls	r4, r3, #7
	eor	ip, r1, r3, lsl #3
	eor	lr, lr, r3
	lsls	r1, r3, #6
	eor	ip, ip, r3, lsl #4
	eor	lr, lr, r1
	eors	r1, r1, r4
	eor	r9, r3, r1
	eor	ip, ip, r0
	eor	r9, r9, r3, lsl #8
	lsls	r0, r3, #9
	eor	ip, ip, r4
	eor	lr, lr, r4
	mov	r4, #49152
	lsls	r1, r3, #10
	eor	r9, r9, r0
	eor	ip, ip, r0
	eor	lr, lr, r0
	mov	r0, r4
	eor	ip, ip, r1
	eor	lr, lr, r1
	eor	r9, r9, r1
	movt	r4, 127
	mov	r1, r0
	movt	r0, 127
	eor	r3, r9, r3, lsl #11
	and	r4, ip, r4
	and	r0, lr, r0
	movt	r1, 127
	ands	r1, r1, r3
	lsr	r10, r4, #12
	lsr	r9, r0, #12
	eor	r4, r10, r4, lsr #9
	eor	r0, r9, r0, lsr #9
	lsr	r9, r1, #12
	eor	r1, r9, r1, lsr #9
	eor	r4, r4, ip
	and	ip, r4, #12288
	eor	r0, r0, lr
	eors	r3, r3, r1
	and	lr, r0, #12288
	and	r1, r3, #12288
	lsr	r9, ip, #12
	orr	ip, r9, ip, lsr #9
	lsr	r10, lr, #12
	lsr	r9, r1, #12
	orr	r1, r9, r1, lsr #9
	orr	lr, r10, lr, lsr #9
	eors	r3, r3, r1
	eor	r4, ip, r4
	ldrh	r1, [r2, #120]
	eor	r0, lr, r0
	ubfx	r4, r4, #0, #12
	ubfx	r0, r0, #0, #12
	ubfx	r3, r3, #0, #12
	eors	r6, r6, r4
	eors	r7, r7, r0
	eors	r3, r3, r1
	subs	r5, r5, #1
	strh	r6, [r2, #122]	@ movhi
	strh	r7, [r2, #134]	@ movhi
	strh	r3, [r2, #120]	@ movhi
	sub	r2, r2, #2
	bne	.L15
	mov	r0, r8
	mov	r1, sp
	movs	r2, #124
	bl	memcpy
	add	sp, sp, #248
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	GF_mul, .-GF_mul
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
