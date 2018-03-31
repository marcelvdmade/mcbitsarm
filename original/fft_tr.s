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
	.file	"fft_tr.c"
	.text
	.align	2
	.thumb
	.thumb_func
	.type	radix_conversions_tr, %function
radix_conversions_tr:
	@ args = 0, pretend = 0, frame = 1576
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r1, #:lower16:.LANCHOR0
	subw	sp, sp, #1580
	mov	r10, r0
	movt	r1, #:upper16:.LANCHOR0
	movs	r2, #96
	add	r0, sp, #520
	bl	memcpy
	add	r4, sp, #600
	add	r0, sp, #616
	ldr	r1, .L21
	mov	r2, #960
	bl	memcpy
	ldrd	r4, [r4]
	add	r6, sp, #312
	strd	r4, [r6]
	ldr	r5, [sp, #608]
	str	r10, [sp, #264]
	mov	fp, #5
	add	r6, sp, #1384
	mov	r8, #10
	mov	r9, #6
	add	r3, r10, #96
	add	r7, sp, #608
	str	r6, [sp, #512]
	str	r8, [sp, #268]
	str	r3, [sp, #516]
	str	r5, [sp, #324]
	str	r7, [sp, #288]
	str	r9, [sp, #308]
	str	fp, [sp, #304]
	mov	r6, fp
	mov	r8, fp
	mov	ip, r9
.L2:
	add	r9, r8, #3
	add	r4, sp, #520
	adds	r6, r6, #2
	movs	r7, #1
	add	r4, r4, r9, lsl #4
	add	r1, sp, #520
	lsl	r10, r7, r6
	add	r1, r1, r6, lsl #4
	str	r6, [sp, #320]
	str	r4, [sp, #300]
	ldr	r6, [sp, #304]
	ldr	r4, [sp, #308]
	str	r9, [sp, #284]
	lsl	r3, r7, r8
	lsl	fp, r7, ip
	add	r9, sp, #520
	movs	r7, #0
	sub	r0, r10, #32
	sub	r2, r3, #32
	sub	r5, fp, #32
	adds	r6, r6, #4
	add	r9, r9, r4, lsl #4
	str	r7, [sp, #260]
	str	r0, [sp, #252]
	str	r1, [sp, #296]
	str	r2, [sp, #256]
	str	r5, [sp, #248]
	ldr	r8, [sp, #264]
	ldr	ip, [sp, #516]
	str	r6, [sp, #280]
	str	r9, [sp, #292]
	mov	r7, r3
	b	.L3
.L22:
	.align	2
.L21:
	.word	.LANCHOR0+96
.L19:
	ldr	r4, [sp, #292]
	ldr	r9, [sp, #248]
	ldrd	r2, [r4]
	ldrd	r0, [sp, #40]
	ldrd	r4, [sp, #32]
	ands	r0, r0, r2
	ands	r1, r1, r3
	ands	r3, r3, r5
	lsl	r6, r3, fp
	lsl	r5, r1, fp
	lsl	r3, r0, r9
	ands	r2, r2, r4
	orrs	r3, r3, r5
	str	r3, [sp, #92]
	ldr	r5, [sp, #292]
	lsl	r3, r2, r9
	orrs	r3, r3, r6
	rsb	r1, fp, #32
	ldr	r6, [sp, #92]
	str	r3, [sp, #108]
	ldrd	r4, [r5, #8]
	lsr	r1, r0, r1
	orrs	r1, r1, r6
	lsl	r6, r0, fp
	str	r1, [sp, #92]
	str	r6, [sp, #88]
	ldr	r9, [sp, #108]
	strd	r4, [sp, #16]
	ldrd	r0, [sp, #40]
	ldrd	r4, [sp, #88]
	rsb	r3, fp, #32
	lsr	r3, r2, r3
	orr	r3, r9, r3
	lsl	r9, r2, fp
	str	r3, [sp, #108]
	str	r9, [sp, #104]
	eors	r0, r0, r4
	eors	r1, r1, r5
	strd	r0, [sp, #40]
	ldrd	r4, [sp, #104]
	ldrd	r0, [sp, #32]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #48]
	ldrd	r2, [sp, #16]
	ldrd	r4, [sp, #40]
	ldrd	r0, [sp, #16]
	ands	r2, r2, r4
	ands	r3, r3, r5
	ldrd	r4, [sp, #48]
	ldr	r9, [sp, #248]
	ands	r5, r5, r1
	lsl	r1, r3, fp
	lsl	r3, r2, r9
	ands	r4, r4, r0
	orrs	r3, r3, r1
	str	r3, [sp, #100]
	lsl	r6, r5, fp
	lsl	r3, r4, r9
	orrs	r3, r3, r6
	str	r3, [sp, #116]
	ldr	r6, [sp, #100]
	ldr	r9, [sp, #116]
	rsb	r5, fp, #32
	rsb	r3, fp, #32
	lsr	r3, r4, r3
	lsr	r5, r2, r5
	lsl	r1, r4, fp
	orrs	r5, r5, r6
	lsl	r0, r2, fp
	orr	r3, r9, r3
	str	r5, [sp, #100]
	str	r3, [sp, #116]
	str	r0, [sp, #96]
	str	r1, [sp, #112]
	ldrd	r4, [sp, #96]
	ldrd	r0, [sp, #40]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #40]
	ldrd	r0, [sp, #48]
	ldrd	r4, [sp, #112]
	eors	r5, r5, r1
	ldr	r1, [sp, #320]
	eors	r4, r4, r0
	cmp	r1, #5
	strd	r4, [sp, #32]
	beq	.L12
	ldr	r4, [sp, #296]
	ldr	r9, [sp, #252]
	ldrd	r2, [r4]
	ldrd	r0, [sp, #40]
	ldrd	r4, [sp, #32]
	ands	r0, r0, r2
	ands	r1, r1, r3
	ands	r3, r3, r5
	lsl	r6, r3, r10
	lsl	r5, r1, r10
	lsl	r3, r0, r9
	ands	r2, r2, r4
	orrs	r3, r3, r5
	str	r3, [sp, #124]
	ldr	r5, [sp, #296]
	lsl	r3, r2, r9
	orrs	r3, r3, r6
	rsb	r1, r10, #32
	ldr	r6, [sp, #124]
	str	r3, [sp, #140]
	ldrd	r4, [r5, #8]
	lsr	r1, r0, r1
	orrs	r1, r1, r6
	lsl	r6, r0, r10
	str	r1, [sp, #124]
	str	r6, [sp, #120]
	ldr	r9, [sp, #140]
	strd	r4, [sp, #8]
	ldrd	r0, [sp, #40]
	ldrd	r4, [sp, #120]
	rsb	r3, r10, #32
	lsr	r3, r2, r3
	orr	r3, r9, r3
	lsl	r9, r2, r10
	str	r3, [sp, #140]
	str	r9, [sp, #136]
	eors	r0, r0, r4
	eors	r1, r1, r5
	strd	r0, [sp, #40]
	ldrd	r4, [sp, #136]
	ldrd	r0, [sp, #32]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #48]
	ldrd	r2, [sp, #8]
	ldrd	r4, [sp, #40]
	ldrd	r0, [sp, #8]
	ands	r2, r2, r4
	ands	r3, r3, r5
	ldrd	r4, [sp, #48]
	ldr	r9, [sp, #252]
	ands	r5, r5, r1
	lsl	r1, r3, r10
	lsl	r3, r2, r9
	ands	r4, r4, r0
	orrs	r3, r3, r1
	str	r3, [sp, #132]
	lsl	r6, r5, r10
	lsl	r3, r4, r9
	orrs	r3, r3, r6
	str	r3, [sp, #148]
	ldr	r6, [sp, #132]
	ldr	r9, [sp, #148]
	rsb	r5, r10, #32
	rsb	r3, r10, #32
	lsr	r3, r4, r3
	lsr	r5, r2, r5
	lsl	r1, r4, r10
	orrs	r5, r5, r6
	lsl	r0, r2, r10
	orr	r3, r9, r3
	str	r5, [sp, #132]
	str	r3, [sp, #148]
	str	r0, [sp, #128]
	str	r1, [sp, #144]
	ldrd	r4, [sp, #128]
	ldrd	r0, [sp, #40]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #40]
	ldrd	r0, [sp, #48]
	ldrd	r4, [sp, #144]
	eors	r5, r5, r1
	ldr	r1, [sp, #284]
	eors	r4, r4, r0
	cmp	r1, #5
	strd	r4, [sp, #32]
	beq	.L12
	ldr	r4, [sp, #300]
	movs	r5, #1
	lsl	r6, r5, r1
	ldrd	r2, [r4]
	ldrd	r4, [sp, #40]
	ldrd	r0, [sp, #32]
	ands	r5, r5, r3
	lsl	r9, r5, r6
	ands	r3, r3, r1
	str	r9, [sp, #156]
	lsl	r9, r3, r6
	str	r9, [sp, #172]
	ands	r4, r4, r2
	ldr	r9, [sp, #156]
	ands	r2, r2, r0
	sub	r0, r6, #32
	mov	r1, r0
	lsl	r0, r4, r0
	orr	r0, r9, r0
	str	r0, [sp, #156]
	ldr	r0, [sp, #172]
	ldr	r9, [sp, #156]
	lsl	r1, r2, r1
	orrs	r1, r1, r0
	str	r1, [sp, #172]
	rsb	r3, r6, #32
	ldr	r0, [sp, #172]
	lsr	r3, r4, r3
	rsb	r1, r6, #32
	orr	r3, r9, r3
	lsr	r1, r2, r1
	ldr	r9, [sp, #300]
	str	r3, [sp, #156]
	orrs	r1, r1, r0
	str	r1, [sp, #172]
	ldrd	r0, [r9, #8]
	lsl	r9, r4, r6
	str	r9, [sp, #152]
	lsl	r4, r2, r6
	str	r4, [sp, #168]
	ldrd	r2, [sp, #40]
	ldrd	r4, [sp, #152]
	eors	r2, r2, r4
	eors	r3, r3, r5
	strd	r2, [sp, #40]
	ldrd	r4, [sp, #168]
	ldrd	r2, [sp, #32]
	eors	r2, r2, r4
	eors	r3, r3, r5
	strd	r2, [sp, #32]
	ldrd	r2, [sp, #40]
	ldrd	r4, [sp, #32]
	ands	r3, r3, r1
	lsl	r9, r3, r6
	ands	r1, r1, r5
	str	r9, [sp, #164]
	lsl	r9, r1, r6
	ands	r2, r2, r0
	sub	r5, r6, #32
	str	r9, [sp, #180]
	ldr	r9, [sp, #164]
	ands	r0, r0, r4
	mov	r4, r5
	lsl	r5, r2, r5
	orr	r5, r9, r5
	str	r5, [sp, #164]
	ldr	r5, [sp, #180]
	ldr	r9, [sp, #164]
	lsl	r4, r0, r4
	rsb	r3, r6, #32
	rsb	r1, r6, #32
	orrs	r4, r4, r5
	lsr	r1, r0, r1
	lsr	r3, r2, r3
	orrs	r1, r1, r4
	lsl	r5, r2, r6
	orr	r3, r9, r3
	str	r3, [sp, #164]
	str	r1, [sp, #180]
	str	r5, [sp, #160]
	lsl	r6, r0, r6
	ldrd	r4, [sp, #160]
	ldrd	r0, [sp, #40]
	str	r6, [sp, #176]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #40]
	ldrd	r0, [sp, #32]
	ldrd	r4, [sp, #176]
	eors	r5, r5, r1
	ldr	r1, [sp, #280]
	eors	r4, r4, r0
	cmp	r1, #5
	strd	r4, [sp, #32]
	beq	.L12
	add	r2, sp, #520
	add	r2, r2, r1, lsl #4
	movs	r4, #1
	lsl	r6, r4, r1
	str	r2, [sp, #48]
	ldrd	r0, [sp, #40]
	ldrd	r2, [r2]
	ldrd	r4, [sp, #32]
	ands	r1, r1, r3
	ands	r0, r0, r2
	ands	r3, r3, r5
	ands	r2, r2, r4
	lsl	r4, r1, r6
	str	r4, [sp, #188]
	lsl	r4, r3, r6
	str	r4, [sp, #204]
	sub	r9, r6, #32
	ldr	r4, [sp, #188]
	mov	r5, r9
	lsl	r9, r0, r9
	orr	r9, r4, r9
	str	r9, [sp, #188]
	ldr	r9, [sp, #204]
	ldr	r4, [sp, #188]
	lsl	r5, r2, r5
	orr	r5, r9, r5
	rsb	r3, r6, #32
	ldr	r9, [sp, #48]
	rsb	r1, r6, #32
	lsr	r3, r0, r3
	lsr	r1, r2, r1
	orrs	r3, r3, r4
	orrs	r1, r1, r5
	ldrd	r4, [r9, #8]
	lsl	r9, r0, r6
	str	r3, [sp, #188]
	lsl	r0, r2, r6
	str	r9, [sp, #184]
	ldrd	r2, [sp, #40]
	str	r1, [sp, #204]
	str	r0, [sp, #200]
	ldrd	r0, [sp, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #40]
	ldrd	r0, [sp, #200]
	ldrd	r2, [sp, #32]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #32]
	ldrd	r2, [sp, #40]
	ldrd	r0, [sp, #32]
	ands	r3, r3, r5
	lsl	r9, r3, r6
	ands	r5, r5, r1
	str	r9, [sp, #196]
	lsl	r9, r5, r6
	str	r9, [sp, #212]
	ands	r2, r2, r4
	ldr	r9, [sp, #196]
	ands	r4, r4, r0
	sub	r0, r6, #32
	mov	r1, r0
	lsl	r0, r2, r0
	orr	r0, r9, r0
	ldr	r9, [sp, #212]
	str	r0, [sp, #196]
	lsl	r1, r4, r1
	orr	r1, r9, r1
	rsb	r3, r6, #32
	str	r1, [sp, #212]
	mov	r0, r3
	ldr	r1, [sp, #196]
	ldr	r9, [sp, #212]
	lsr	r0, r4, r0
	lsr	r3, r2, r3
	orrs	r3, r3, r1
	orr	r0, r9, r0
	str	r3, [sp, #196]
	str	r0, [sp, #212]
	lsl	r0, r2, r6
	str	r0, [sp, #192]
	lsl	r6, r4, r6
	ldrd	r0, [sp, #40]
	ldrd	r4, [sp, #192]
	str	r6, [sp, #208]
	eors	r4, r4, r0
	eors	r5, r5, r1
	strd	r4, [sp, #40]
	ldrd	r0, [sp, #32]
	ldrd	r4, [sp, #208]
	ldr	r3, [sp, #268]
	eors	r4, r4, r0
	eors	r5, r5, r1
	cmp	r3, #5
	strd	r4, [sp, #32]
	beq	.L18
	mov	r1, r5
	add	r5, sp, #520
	add	r5, r5, r3, lsl #4
	mov	r0, r4
	str	r5, [sp, #48]
	mov	r6, r3
	ldrd	r2, [r5]
	ldrd	r4, [sp, #40]
	mov	r9, #1
	lsl	r6, r9, r6
	ands	r5, r5, r3
	ands	r3, r3, r1
	lsl	r1, r5, r6
	str	r1, [sp, #60]
	lsl	r1, r3, r6
	str	r1, [sp, #76]
	ands	r4, r4, r2
	ldr	r1, [sp, #60]
	sub	r9, r6, #32
	ands	r2, r2, r0
	mov	r0, r9
	lsl	r9, r4, r9
	orr	r9, r1, r9
	str	r9, [sp, #60]
	ldr	r9, [sp, #76]
	ldr	r1, [sp, #60]
	lsl	r0, r2, r0
	orr	r0, r9, r0
	str	r0, [sp, #76]
	ldr	r9, [sp, #76]
	rsb	r0, r6, #32
	lsr	r0, r2, r0
	orr	r0, r9, r0
	rsb	r3, r6, #32
	ldr	r9, [sp, #48]
	str	r0, [sp, #76]
	lsr	r3, r4, r3
	orrs	r3, r3, r1
	ldrd	r0, [r9, #8]
	lsl	r9, r4, r6
	str	r3, [sp, #60]
	lsl	r4, r2, r6
	str	r9, [sp, #56]
	ldrd	r2, [sp, #40]
	str	r4, [sp, #72]
	ldrd	r4, [sp, #56]
	eors	r4, r4, r2
	eors	r5, r5, r3
	strd	r4, [sp, #40]
	ldrd	r2, [sp, #32]
	ldrd	r4, [sp, #72]
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [sp, #40]
	ands	r3, r3, r1
	lsl	r9, r3, r6
	ands	r1, r1, r5
	str	r9, [sp, #68]
	lsl	r9, r1, r6
	ands	r2, r2, r0
	str	r9, [sp, #84]
	strd	r4, [sp, #32]
	ldr	r9, [sp, #68]
	sub	r5, r6, #32
	ands	r0, r0, r4
	mov	r4, r5
	lsl	r5, r2, r5
	orr	r5, r9, r5
	str	r5, [sp, #68]
	rsb	r3, r6, #32
	ldr	r5, [sp, #84]
	ldr	r9, [sp, #68]
	lsl	r4, r0, r4
	mov	r1, r3
	orrs	r4, r4, r5
	lsr	r3, r2, r3
	lsr	r1, r0, r1
	lsl	r5, r2, r6
	orrs	r1, r1, r4
	orr	r3, r9, r3
	lsl	r6, r0, r6
	str	r3, [sp, #68]
	str	r1, [sp, #84]
	str	r5, [sp, #64]
	str	r6, [sp, #80]
	ldrd	r2, [sp, #40]
	ldrd	r0, [sp, #64]
	ldrd	r4, [sp, #32]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [sp, #80]
	eors	r2, r2, r4
	eors	r3, r3, r5
.L6:
	strd	r0, [r8]
	strd	r2, [ip]
.L5:
	ldr	r5, [sp, #260]
	adds	r5, r5, #1
	cmp	r5, #12
	str	r5, [sp, #260]
	add	r8, r8, #8
	add	ip, ip, #8
	beq	.L4
.L3:
	ldr	r6, [sp, #304]
	cmp	r6, #5
	beq	.L5
	ldr	r9, [sp, #288]
	ldr	r6, [sp, #256]
	ldrd	r2, [r9, #-8]
	ldrd	r0, [r8]
	ldrd	r4, [ip]
	ands	r0, r0, r2
	ands	r1, r1, r3
	ands	r2, r2, r4
	ands	r3, r3, r5
	lsl	r4, r0, r6
	lsl	r5, r1, r7
	orrs	r4, r4, r5
	rsb	r1, r7, #32
	ldr	r5, [sp, #288]
	lsr	r1, r0, r1
	orrs	r1, r1, r4
	ldrd	r4, [r5]
	lsl	r9, r3, r7
	lsl	r3, r2, r6
	strd	r4, [sp, #24]
	orr	r3, r9, r3
	lsl	r4, r0, r7
	str	r3, [sp, #236]
	str	r1, [sp, #220]
	lsl	r5, r2, r7
	str	r4, [sp, #216]
	ldr	r9, [sp, #236]
	str	r5, [sp, #232]
	ldrd	r0, [r8]
	ldrd	r4, [sp, #216]
	rsb	r3, r7, #32
	lsr	r3, r2, r3
	orr	r3, r9, r3
	str	r3, [sp, #236]
	eors	r4, r4, r0
	eors	r5, r5, r1
	ldrd	r2, [ip]
	strd	r4, [sp, #32]
	ldrd	r4, [sp, #232]
	ldrd	r0, [sp, #32]
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [sp, #24]
	ands	r1, r1, r3
	lsl	r6, r1, r7
	ldr	r9, [sp, #256]
	str	r6, [sp, #228]
	ands	r0, r0, r2
	ands	r3, r3, r5
	lsl	r1, r0, r9
	lsl	r6, r3, r7
	ldr	r9, [sp, #228]
	str	r6, [sp, #244]
	ldr	r6, [sp, #256]
	ands	r2, r2, r4
	orr	r1, r9, r1
	ldr	r9, [sp, #244]
	str	r1, [sp, #228]
	lsl	r1, r2, r6
	orr	r1, r9, r1
	str	r1, [sp, #244]
	ldr	r6, [sp, #228]
	ldr	r9, [sp, #244]
	rsb	r3, r7, #32
	rsb	r1, r7, #32
	lsr	r3, r0, r3
	lsr	r1, r2, r1
	orrs	r3, r3, r6
	orr	r1, r9, r1
	lsl	r6, r0, r7
	str	r3, [sp, #228]
	str	r1, [sp, #244]
	lsl	r9, r2, r7
	str	r6, [sp, #224]
	ldrd	r2, [sp, #32]
	ldrd	r0, [sp, #224]
	str	r9, [sp, #240]
	eors	r1, r1, r3
	eors	r0, r0, r2
	strd	r0, [sp, #40]
	ldrd	r0, [sp, #240]
	ldr	r3, [sp, #308]
	eors	r0, r0, r4
	eors	r1, r1, r5
	cmp	r3, #5
	strd	r0, [sp, #32]
	bne	.L19
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #40]
	b	.L6
.L12:
	mov	r2, r4
	mov	r3, r5
	ldrd	r0, [sp, #40]
	b	.L6
.L18:
	ldrd	r0, [sp, #40]
	mov	r2, r4
	mov	r3, r5
	b	.L6
.L4:
	ldr	r4, [sp, #264]
	ldr	r8, [sp, #264]
	ldr	r9, [sp, #264]
	add	r7, sp, #312
	ldrd	r2, [r4]
	ldrd	r6, [r7]
	add	fp, sp, #312
	ldrd	r10, [fp]
	ldrd	r0, [r4, #8]
	ldrd	r4, [r4, #16]
	ands	r3, r3, r7
	str	r3, [sp, #272]
	and	r3, fp, r5
	str	r3, [sp, #352]
	ldrd	r2, [r8, #32]
	ldrd	r6, [r8, #24]
	and	r1, r1, fp
	str	r1, [sp, #336]
	and	r1, fp, r3
	ldrd	r2, [r8, #40]
	add	r10, sp, #312
	and	r5, fp, r7
	str	r5, [sp, #368]
	str	r1, [sp, #384]
	and	r5, fp, r3
	ldrd	r0, [r10]
	ldrd	r2, [r8, #48]
	str	r5, [sp, #400]
	ands	r1, r1, r3
	ldrd	r4, [r10]
	ldrd	r2, [r8, #56]
	str	r1, [sp, #416]
	ands	r5, r5, r3
	ldrd	r0, [r10]
	ldrd	r2, [r8, #64]
	str	r5, [sp, #432]
	ands	r1, r1, r3
	ldrd	r4, [r10]
	ldrd	r2, [r8, #72]
	str	r1, [sp, #448]
	ands	r5, r5, r3
	ldrd	r0, [r10]
	ldrd	r2, [r9, #80]
	str	r5, [sp, #464]
	ands	r1, r1, r3
	ldrd	r4, [r10]
	ldrd	r2, [r9, #88]
	movs	r0, #0
	movs	r6, #0
	ands	r3, r3, r5
	str	r6, [sp, #276]
	add	r10, sp, #336
	ldrd	r6, [r8, #104]
	str	r1, [sp, #480]
	str	r0, [sp, #340]
	ldrd	r4, [r9, #112]
	str	r3, [sp, #496]
	ldrd	r2, [r9, #120]
	ldrd	r8, [r10]
	eor	r8, r8, r6
	eor	r9, r9, r7
	strd	r8, [sp, #32]
	str	r0, [sp, #372]
	add	r8, sp, #368
	ldrd	r6, [r8]
	ldr	r9, [sp, #264]
	str	r0, [sp, #388]
	add	r10, sp, #384
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [r9, #128]
	ldrd	r8, [r10]
	str	r0, [sp, #356]
	ldr	r10, [sp, #32]
	str	r0, [sp, #404]
	eor	r9, r9, r3
	add	r1, sp, #352
	ldr	r3, [sp, #324]
	str	r0, [sp, #420]
	str	r0, [sp, #436]
	str	r0, [sp, #452]
	str	r0, [sp, #468]
	str	r0, [sp, #484]
	str	r0, [sp, #500]
	ldrd	r0, [r1]
	and	r3, r10, r3
	str	r3, [sp, #348]
	ldr	r3, [sp, #324]
	eors	r4, r4, r0
	ands	r3, r3, r4
	str	r3, [sp, #364]
	ldr	r3, [sp, #324]
	ands	r3, r3, r6
	str	r3, [sp, #380]
	ldr	r3, [sp, #324]
	eor	r8, r8, r2
	movs	r0, #0
	and	r3, r8, r3
	str	r3, [sp, #396]
	str	r0, [sp, #344]
	str	r0, [sp, #360]
	str	r0, [sp, #376]
	str	r0, [sp, #392]
	ldr	r10, [sp, #264]
	eors	r5, r5, r1
	add	r1, sp, #400
	ldrd	r2, [r10, #136]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	ldr	r0, [sp, #324]
	eors	r3, r3, r1
	ands	r0, r0, r2
	movs	r1, #0
	add	fp, sp, #344
	ldrd	r10, [fp]
	str	r0, [sp, #412]
	str	r1, [sp, #408]
	ldrd	r0, [sp, #32]
	eor	r1, r1, fp
	add	fp, sp, #360
	eor	r0, r0, r10
	ldrd	r10, [fp]
	eor	r5, r5, fp
	add	fp, sp, #376
	eor	r4, r4, r10
	ldrd	r10, [fp]
	eor	r7, r7, fp
	add	fp, sp, #392
	eor	r6, r6, r10
	ldrd	r10, [fp]
	add	ip, sp, #408
	eor	r8, r8, r10
	eor	r9, r9, fp
	ldrd	r10, [ip]
	ldr	ip, [sp, #264]
	eor	fp, fp, r3
	ldr	r3, [sp, #304]
	strd	r0, [ip, #104]
	subs	r3, r3, #1
	add	r1, sp, #416
	ldrd	r0, [r1]
	eor	r10, r10, r2
	str	r3, [sp, #304]
	ldrd	r2, [ip, #144]
	strd	r4, [ip, #112]
	ldr	r4, [sp, #324]
	eors	r2, r2, r0
	ands	r4, r4, r2
	movs	r5, #0
	str	r4, [sp, #428]
	str	r5, [sp, #424]
	add	r4, sp, #424
	eors	r3, r3, r1
	ldrd	r0, [r4]
	strd	r6, [ip, #120]
	add	r7, sp, #432
	ldrd	r6, [r7]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [ip, #152]
	ldr	r4, [sp, #324]
	str	r5, [sp, #440]
	eors	r2, r2, r6
	ands	r4, r4, r2
	str	r4, [sp, #444]
	add	r6, sp, #440
	ldrd	r4, [r6]
	eors	r3, r3, r7
	strd	r8, [ip, #128]
	add	r9, sp, #448
	ldrd	r8, [r9]
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [ip, #160]
	ldr	r6, [sp, #324]
	eor	r2, r2, r8
	ands	r6, r6, r2
	movs	r7, #0
	strd	r0, [sp]
	add	r8, sp, #456
	str	r6, [sp, #460]
	str	r7, [sp, #456]
	ldrd	r6, [r8]
	eor	r3, r3, r9
	strd	r10, [ip, #136]
	add	fp, sp, #464
	ldrd	r10, [fp]
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [ip, #168]
	ldr	r0, [sp, #324]
	eor	r2, r2, r10
	ands	r0, r0, r2
	movs	r1, #0
	str	r0, [sp, #476]
	str	r1, [sp, #472]
	ldrd	r0, [sp]
	add	r10, sp, #472
	ldrd	r8, [r10]
	eor	r3, r3, fp
	add	fp, sp, #480
	ldrd	r10, [fp]
	strd	r0, [ip, #144]
	ldrd	r0, [ip, #176]
	eor	r9, r9, r3
	ldr	r3, [sp, #324]
	eor	r0, r0, r10
	ands	r3, r3, r0
	strd	r4, [ip, #152]
	eor	r8, r8, r2
	add	r5, sp, #496
	movs	r2, #0
	ldrd	r4, [r5]
	str	r3, [sp, #492]
	str	r2, [sp, #488]
	ldrd	r2, [ip, #184]
	eor	r1, r1, fp
	add	fp, sp, #488
	ldrd	r10, [fp]
	eors	r2, r2, r4
	ldr	r4, [sp, #324]
	eors	r3, r3, r5
	ands	r4, r4, r2
	movs	r5, #0
	eor	r0, r0, r10
	str	r4, [sp, #508]
	str	r5, [sp, #504]
	add	r10, sp, #504
	ldrd	r4, [r10]
	strd	r6, [ip, #160]
	add	r7, sp, #272
	ldrd	r6, [r7]
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [ip, #96]
	eors	r2, r2, r6
	ldr	r6, [sp, #324]
	str	r7, [sp, #328]
	ands	r6, r6, r2
	eor	r1, r1, fp
	str	r6, [sp, #332]
	add	fp, sp, #328
	ldrd	r10, [fp]
	eors	r3, r3, r7
	eor	r3, r3, fp
	eor	r2, r2, r10
	strd	r8, [ip, #168]
	strd	r0, [ip, #176]
	strd	r2, [ip, #96]
	ldr	r3, [sp, #308]
	subs	r3, r3, #1
	strd	r4, [ip, #184]
	str	r3, [sp, #308]
	beq	.L20
	mov	r0, ip
	mov	r1, ip
	ldr	r2, [sp, #512]
	bl	vec_mul
	ldr	ip, [sp, #512]
	ldr	r0, [sp, #516]
	add	r2, ip, #96
	mov	r1, r0
	bl	vec_mul
	ldr	r3, [sp, #268]
	ldr	r4, [sp, #288]
	ldr	r5, [sp, #512]
	ldr	r6, [sp, #304]
	ldr	r8, [sp, #304]
	ldr	ip, [sp, #308]
	subs	r3, r3, #1
	subs	r4, r4, #16
	subs	r5, r5, #192
	str	r3, [sp, #268]
	str	r4, [sp, #288]
	str	r5, [sp, #512]
	b	.L2
.L20:
	addw	sp, sp, #1580
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	radix_conversions_tr, .-radix_conversions_tr
	.align	2
	.thumb
	.thumb_func
	.type	butterflies_tr, %function
butterflies_tr:
	@ args = 0, pretend = 0, frame = 9936
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #9920
	sub	sp, sp, #20
	add	r4, sp, #3888
	str	r4, [sp, #904]
	str	r0, [sp, #908]
	mov	r0, r4
	ldr	r4, .L41
	mov	ip, r1
	mov	r2, #6048
	ldr	r1, .L41+4
	str	ip, [sp, #36]
	add	r6, r4, #64
	bl	memcpy
	ldr	ip, [sp, #36]
	mov	lr, r6
	add	r7, sp, #2640
.L24:
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	ldr	r2, [r4, #8]	@ unaligned
	ldr	r3, [r4, #12]	@ unaligned
	mov	r5, r7
	stmia	r5!, {r0, r1, r2, r3}
	adds	r4, r4, #16
	cmp	r4, lr
	mov	r7, r5
	bne	.L24
	ldr	r0, [r6]	@ unaligned
	ldr	r1, [r6, #4]	@ unaligned
	ldr	r2, [r6, #8]	@ unaligned
	str	ip, [sp, #288]
	addw	r3, sp, #2628
	stmia	r3!, {r0, r1, r2}
	movs	r7, #0
	movs	r6, #63
	strd	r6, [sp, #240]
	movs	r7, #5
	str	r7, [sp, #256]
.L32:
	ldr	r9, [sp, #256]
	ldr	r5, [sp, #288]
	mov	r8, #1
	lsl	r8, r8, r9
	ldrd	r10, [sp, #240]
	lsl	r3, r8, #1
	str	r3, [sp, #208]
	ldr	r1, [sp, #208]
	ldr	r2, [sp, #208]
	str	r8, [sp, #200]
	subs	r10, r10, r8
	sbc	fp, fp, r8, asr #31
	lsl	r3, r8, #2
	add	r1, r1, r3
	add	r0, r10, r10, lsl #1
	rsb	r3, r3, r8
	add	r2, r2, r8
	add	r4, sp, #3888
	strd	r10, [sp, #240]
	add	r4, r4, r0, lsl #5
	lsls	r1, r1, #5
	lsls	r3, r3, #5
	add	r2, r5, r2, lsl #5
	movs	r6, #0
	str	r4, [sp, #224]
	str	r1, [sp, #216]
	str	r3, [sp, #232]
	str	r2, [sp, #192]
	str	r6, [sp, #184]
.L25:
	ldr	r5, [sp, #184]
	ldr	r6, [sp, #200]
	ldr	r7, [sp, #184]
	add	r5, r5, r6
	cmp	r5, r7
	str	r5, [sp, #176]
	ble	.L28
	ldr	r8, [sp, #192]
	ldr	r9, [sp, #232]
	ldr	fp, [sp, #224]
	mov	r5, r8
	mov	ip, r7
	add	r6, r8, #24
	add	r7, r8, #16
	add	r10, r8, #8
	mov	r4, r8
	add	r5, r5, r9
	b	.L42
.L43:
	.align	2
.L41:
	.word	.LANCHOR1+2760
	.word	.LANCHOR0+1056
.L42:
.L29:
	ldrd	r2, [r4]
	ldrd	r0, [r5]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	ldrd	r0, [r5, #8]
	ldrd	r2, [r10]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #8]
	ldrd	r2, [r7]
	ldrd	r0, [r5, #16]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #16]
	ldrd	r0, [r5, #24]
	ldrd	r2, [r6]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #24]
	ldrd	r0, [r5, #32]
	ldrd	r2, [r4, #32]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #32]
	ldrd	r0, [r5, #40]
	ldrd	r2, [r4, #40]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #40]
	ldrd	r0, [r5, #48]
	ldrd	r2, [r4, #48]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #48]
	ldrd	r0, [r5, #56]
	ldrd	r2, [r4, #56]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #56]
	ldrd	r0, [r5, #64]
	ldrd	r2, [r4, #64]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #64]
	ldrd	r0, [r5, #72]
	ldrd	r2, [r4, #72]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #72]
	ldrd	r0, [r5, #80]
	ldrd	r2, [r4, #80]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #80]
	ldrd	r0, [r5, #88]
	ldrd	r2, [r4, #88]
	eor	r9, r1, r3
	eor	r8, r0, r2
	strd	r8, [r5, #88]
	mov	r1, r5
	mov	r2, fp
	add	r0, sp, #2704
	add	r8, sp, #2704
	str	ip, [sp, #36]
	bl	vec_mul
	ldrd	r0, [r4]
	ldrd	r2, [r8]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4]
	addw	r9, sp, #2712
	ldrd	r0, [r10]
	ldrd	r2, [r9]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r10], #96
	add	lr, sp, #2720
	ldrd	r0, [r7]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r7], #96
	addw	r0, sp, #2728
	ldrd	r2, [r0]
	ldrd	r0, [r6]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6], #96
	add	r1, sp, #2736
	ldrd	r2, [r1]
	ldrd	r0, [r4, #32]
	addw	lr, sp, #2744
	ldrd	r8, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	ldrd	r0, [r4, #40]
	add	lr, sp, #2752
	ldr	ip, [sp, #36]
	eor	r8, r8, r0
	eor	r9, r9, r1
	strd	r2, [r4, #32]
	ldrd	r0, [r4, #48]
	ldrd	r2, [lr]
	strd	r8, [r4, #40]
	addw	r8, sp, #2760
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r8]
	ldrd	r8, [r4, #56]
	add	lr, sp, #2768
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r0, [r4, #48]
	ldrd	r2, [lr]
	ldrd	r0, [r4, #64]
	strd	r8, [r4, #56]
	addw	r8, sp, #2776
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r8]
	ldrd	r8, [r4, #72]
	add	lr, sp, #2784
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r0, [r4, #64]
	ldrd	r2, [lr]
	ldrd	r0, [r4, #80]
	strd	r8, [r4, #72]
	addw	r8, sp, #2792
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r8]
	ldrd	r8, [r4, #88]
	strd	r0, [r4, #80]
	eor	r3, r3, r9
	ldr	r9, [sp, #176]
	add	ip, ip, #1
	eor	r2, r2, r8
	cmp	r9, ip
	strd	r2, [r4, #88]
	add	r5, r5, #96
	add	fp, fp, #96
	add	r4, r4, #96
	bne	.L29
.L28:
	ldr	r10, [sp, #184]
	ldr	fp, [sp, #208]
	ldr	ip, [sp, #192]
	ldr	r3, [sp, #216]
	add	r10, r10, fp
	mov	r4, r10
	add	ip, ip, r3
	cmp	r4, #63
	str	r10, [sp, #184]
	str	ip, [sp, #192]
	ble	.L25
	ldr	r10, [sp, #256]
	add	r10, r10, #-1
	cmp	r10, #-1
	str	r10, [sp, #256]
	bne	.L32
	ldr	ip, [sp, #288]
	addw	r5, sp, #3304
	mov	r6, ip
	movs	r7, #0
	addw	r4, sp, #2703
	mov	r8, ip
.L31:
	addw	r1, sp, #2639
	mov	r0, r6
.L37:
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2
	ldrd	r2, [r0], #96
	add	r9, sp, #2800
	add	lr, r9, lr, lsl #3
	cmp	r1, r4
	strd	r2, [lr]
	bne	.L37
	mov	r0, r9
	mov	r1, r9
	bl	transpose_64x64_compact
	addw	r1, sp, #2792
	mov	r0, r6
.L35:
	ldrd	r2, [r1, #8]!
	cmp	r1, r5
	strd	r2, [r0], #96
	bne	.L35
	adds	r7, r7, #1
	cmp	r7, #12
	add	r6, r6, #8
	bne	.L31
	add	r4, sp, #3312
	add	r6, r8, #3072
	add	r5, r8, #3168
	mov	r0, r4
	mov	r1, r6
	str	r8, [sp, #36]
	bl	vec_copy
	ldrd	r0, [r6]
	ldrd	r2, [r5]
	eors	r2, r2, r0
	eors	r3, r3, r1
	ldr	ip, [sp, #36]
	strd	r2, [r5]
	addw	r8, ip, #3176
	addw	r3, ip, #3080
	ldrd	r0, [r3]
	ldrd	r2, [r8]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r8]
	add	r9, ip, #3184
	add	r3, ip, #3088
	ldrd	r0, [r3]
	ldrd	r2, [r9]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r9]
	addw	r10, ip, #3192
	addw	r3, ip, #3096
	ldrd	r0, [r3]
	ldrd	r2, [r10]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r10]
	add	fp, ip, #3200
	add	r3, ip, #3104
	ldrd	r0, [r3]
	ldrd	r2, [fp]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [fp]
	addw	r3, ip, #3112
	addw	r2, ip, #3208
	ldrd	r0, [r3]
	str	r2, [sp, #168]
	ldrd	r2, [r2]
	ldr	r6, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6]
	add	r7, ip, #3216
	add	r3, ip, #3120
	ldrd	r0, [r3]
	ldrd	r2, [r7]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r7]
	addw	r3, ip, #3128
	addw	r2, ip, #3224
	ldrd	r0, [r3]
	str	r2, [sp, #192]
	ldrd	r2, [r2]
	ldr	r6, [sp, #192]
	str	r7, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6]
	add	r7, ip, #3232
	add	r3, ip, #3136
	ldrd	r0, [r3]
	ldrd	r2, [r7]
	eors	r2, r2, r0
	eors	r3, r3, r1
	str	r7, [sp, #184]
	strd	r2, [r7]
	addw	r3, ip, #3144
	addw	r2, ip, #3240
	ldrd	r0, [r3]
	str	r2, [sp, #200]
	ldrd	r2, [r2]
	ldr	r6, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6]
	add	r7, ip, #3248
	add	r3, ip, #3152
	ldrd	r0, [r3]
	ldrd	r2, [r7]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r7]
	addw	r2, ip, #3256
	ldrd	r0, [r2]
	addw	r3, ip, #3160
	strd	r0, [sp]
	str	r2, [sp, #248]
	str	r7, [sp, #240]
	ldrd	r6, [r3]
	ldrd	r2, [sp]
	eors	r7, r7, r3
	ldr	r3, [sp, #248]
	eors	r6, r6, r2
	mov	r1, r5
	strd	r6, [r3]
	add	r0, sp, #3408
	bl	vec_copy
	ldr	ip, [sp, #36]
	add	lr, ip, #3360
	ldrd	r0, [r5]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	addw	r5, ip, #3368
	ldrd	r6, [r8]
	ldrd	r0, [r5]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [r5]
	add	r5, ip, #3376
	ldrd	r6, [r5]
	strd	r0, [sp, #208]
	ldrd	r0, [r9]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r5]
	addw	r5, ip, #3384
	ldrd	r0, [r10]
	ldrd	r8, [r5]
	eor	r8, r8, r0
	eor	r9, r9, r1
	strd	r8, [r5]
	add	r5, ip, #3392
	ldrd	r0, [fp]
	strd	r8, [sp, #224]
	ldrd	r8, [r5]
	eor	r10, r0, r8
	eor	fp, r1, r9
	strd	r10, [r5]
	strd	r10, [sp, #232]
	ldr	fp, [sp, #168]
	addw	r5, ip, #3400
	ldrd	r0, [fp]
	ldrd	r8, [r5]
	strd	r6, [sp, #216]
	eor	r6, r0, r8
	eor	r7, r1, r9
	strd	r6, [r5]
	strd	r6, [sp, #168]
	ldr	r7, [sp, #176]
	add	r5, ip, #3408
	ldrd	r0, [r7]
	ldrd	r8, [r5]
	eor	r10, r0, r8
	eor	fp, r1, r9
	strd	r10, [r5]
	strd	r10, [sp, #176]
	ldr	fp, [sp, #192]
	addw	r5, ip, #3416
	ldrd	r0, [fp]
	ldrd	r8, [r5]
	eor	r6, r0, r8
	eor	r7, r1, r9
	strd	r6, [sp, #192]
	strd	r6, [r5]
	ldr	r7, [sp, #184]
	add	r5, ip, #3424
	ldrd	r0, [r7]
	ldrd	r8, [r5]
	eor	r10, r0, r8
	eor	fp, r1, r9
	strd	r10, [r5]
	strd	r10, [sp, #184]
	ldr	fp, [sp, #200]
	addw	r5, ip, #3432
	ldrd	r0, [fp]
	ldrd	r8, [r5]
	eor	r6, r0, r8
	eor	r7, r1, r9
	strd	r6, [r5]
	strd	r6, [sp, #200]
	ldr	r7, [sp, #240]
	add	r5, ip, #3440
	ldrd	r8, [r5]
	ldrd	r0, [r7]
	eor	r10, r0, r8
	eor	fp, r1, r9
	strd	r10, [r5]
	strd	r10, [sp, #240]
	ldr	fp, [sp, #248]
	addw	r5, ip, #3448
	ldrd	r0, [fp]
	ldrd	r6, [r5]
	eor	r8, r0, r6
	eor	r9, r1, r7
	strd	r8, [r5]
	add	fp, ip, #3264
	ldrd	r6, [fp]
	strd	r8, [sp, #248]
	add	r9, sp, #256
	strd	r2, [r9]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [fp]
	addw	r8, ip, #3272
	ldrd	r2, [r8]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r8]
	add	r5, ip, #3280
	ldrd	r2, [r5]
	ldrd	r6, [sp, #216]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5]
	addw	r6, ip, #3288
	ldrd	r0, [r6]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r6]
	ldrd	r2, [r9]
	ldrd	r0, [r4]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4]
	ldrd	r2, [r4, #8]
	ldrd	r0, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #8]
	ldrd	r2, [r4, #16]
	ldrd	r0, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #16]
	ldrd	r2, [r4, #24]
	ldrd	r0, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #24]
	ldrd	r2, [r4, #32]
	ldrd	r0, [sp, #232]
	add	r7, ip, #3296
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #32]
	ldrd	r2, [r7]
	ldrd	r0, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r7]
	ldrd	r2, [r4, #40]
	ldrd	r0, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #40]
	ldrd	r2, [r4, #48]
	ldrd	r0, [sp, #176]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #48]
	ldrd	r2, [r4, #56]
	ldrd	r0, [sp, #192]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #56]
	ldrd	r2, [r4, #64]
	ldrd	r0, [sp, #184]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #64]
	ldrd	r2, [r4, #72]
	ldrd	r0, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #72]
	ldrd	r2, [r4, #80]
	ldrd	r0, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #80]
	ldrd	r2, [r4, #88]
	ldrd	r0, [sp, #248]
	addw	r9, ip, #3304
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #88]
	ldrd	r2, [r9]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r9]
	add	r10, ip, #3312
	ldrd	r2, [r10]
	ldrd	r0, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r10]
	addw	r2, ip, #3320
	ldrd	r0, [sp, #192]
	str	r2, [sp, #168]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #168]
	eors	r2, r2, r0
	strd	r2, [r1]
	add	r2, ip, #3328
	ldrd	r0, [sp, #184]
	str	r2, [sp, #176]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #176]
	eors	r2, r2, r0
	strd	r2, [r1]
	addw	r2, ip, #3336
	ldrd	r0, [sp, #200]
	str	r2, [sp, #192]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #192]
	eors	r2, r2, r0
	strd	r2, [r1]
	add	r2, ip, #3344
	ldrd	r0, [sp, #240]
	str	r2, [sp, #184]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #184]
	eors	r2, r2, r0
	strd	r2, [r1]
	addw	r2, ip, #3352
	ldrd	r0, [sp, #248]
	str	r2, [sp, #200]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #200]
	eors	r2, r2, r0
	strd	r2, [r1]
	add	r0, sp, #3504
	mov	r1, fp
	bl	vec_copy
	ldr	ip, [sp, #36]
	add	lr, ip, #3648
	ldrd	r0, [fp]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	add	fp, sp, #304
	addw	lr, ip, #3656
	ldrd	r0, [lr]
	strd	r2, [fp]
	ldrd	r2, [r8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr]
	add	lr, ip, #3664
	ldrd	r2, [r5]
	strd	r0, [sp, #208]
	ldrd	r0, [lr]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr]
	addw	r5, ip, #3672
	ldrd	r2, [r6]
	strd	r0, [sp, #216]
	ldrd	r0, [r5]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	add	r5, ip, #3680
	ldrd	r2, [r5]
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	addw	r5, ip, #3688
	ldrd	r6, [r5]
	ldrd	r0, [r9]
	eor	r8, r0, r6
	eor	r9, r1, r7
	strd	r8, [r5]
	add	r5, ip, #3696
	ldrd	r0, [r10]
	ldrd	r6, [r5]
	eor	r10, r0, r6
	eor	fp, r1, r7
	strd	r10, [r5]
	strd	r2, [sp, #232]
	ldr	r2, [sp, #168]
	addw	r5, ip, #3704
	ldrd	r0, [r2]
	ldrd	r6, [r5]
	add	lr, sp, #256
	strd	r10, [lr]
	strd	r8, [sp, #240]
	add	r10, sp, #288
	eor	r8, r0, r6
	eor	r9, r1, r7
	strd	r8, [r10]
	strd	r8, [r5]
	ldr	r2, [sp, #176]
	add	r5, ip, #3712
	ldrd	r0, [r2]
	ldrd	r6, [r5]
	eor	r8, r0, r6
	eor	r9, r1, r7
	strd	r8, [r5]
	strd	r8, [sp, #176]
	ldr	r9, [sp, #192]
	addw	r5, ip, #3720
	ldrd	r0, [r9]
	ldrd	r6, [r5]
	eor	r10, r0, r6
	eor	fp, r1, r7
	strd	r10, [r5]
	strd	r10, [sp, #192]
	ldr	fp, [sp, #184]
	add	r5, ip, #3728
	ldrd	r6, [r5]
	ldrd	r0, [fp]
	eor	r2, r0, r6
	eor	r3, r1, r7
	strd	r2, [r5]
	strd	r2, [sp, #184]
	ldr	r3, [sp, #200]
	addw	r5, ip, #3736
	ldrd	r8, [r5]
	ldrd	r0, [r3]
	eor	r10, r0, r8
	eor	fp, r1, r9
	strd	r10, [r5]
	add	r6, ip, #3744
	add	r5, sp, #304
	ldrd	r0, [r6]
	ldrd	r2, [r5]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6]
	strd	r2, [sp, #168]
	addw	r3, ip, #3752
	ldrd	r0, [r3]
	ldrd	r6, [sp, #208]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	add	r5, ip, #3760
	add	r8, sp, #328
	ldrd	r2, [r5]
	strd	r6, [r8]
	ldrd	r6, [sp, #216]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r5]
	addw	r5, ip, #3768
	ldrd	r2, [r5]
	ldrd	r8, [sp, #224]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r10, [sp, #200]
	strd	r8, [r5]
	add	r5, ip, #3776
	ldrd	r2, [r5]
	ldrd	r10, [sp, #232]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	addw	r5, ip, #3784
	ldrd	r0, [r5]
	ldrd	r2, [sp, #240]
	add	lr, sp, #352
	strd	r10, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r10, sp, #336
	strd	r2, [r5]
	strd	r2, [r10]
	add	r5, ip, #3792
	add	r10, sp, #256
	ldrd	r0, [r5]
	ldrd	r2, [r10]
	add	r10, sp, #360
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	strd	r2, [r10]
	addw	r5, ip, #3800
	add	r10, sp, #288
	ldrd	r0, [r5]
	ldrd	r2, [r10]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	add	r10, sp, #264
	add	r5, ip, #3808
	ldrd	r0, [r5]
	strd	r2, [r10]
	ldrd	r2, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	addw	r5, ip, #3816
	ldrd	r0, [r5]
	ldrd	r10, [sp, #192]
	add	lr, sp, #272
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [r5]
	strd	r10, [lr]
	add	lr, ip, #3824
	ldrd	r0, [lr]
	strd	r2, [sp, #248]
	ldrd	r2, [sp, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	addw	r5, ip, #3832
	add	r10, sp, #280
	ldrd	r0, [r5]
	strd	r2, [r10]
	ldrd	r2, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	add	r10, sp, #296
	strd	r2, [r10]
	add	r3, ip, #3552
	ldrd	r10, [r3]
	ldrd	r0, [sp, #168]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	fp, sp, #344
	strd	r0, [fp]
	strd	r0, [r3]
	addw	r5, ip, #3560
	add	r10, sp, #328
	ldrd	r2, [r5]
	ldrd	r0, [r10]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	add	r5, ip, #3568
	ldrd	r2, [r5]
	add	r10, sp, #312
	strd	r0, [r10]
	eor	r0, r6, r2
	eor	r1, r7, r3
	add	r10, sp, #320
	ldrd	r2, [r4, #96]
	strd	r0, [r5]
	strd	r0, [r10]
	ldrd	r0, [sp, #168]
	add	lr, sp, #328
	ldrd	r10, [r4, #104]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [lr]
	addw	r5, ip, #3576
	eor	r2, r2, r10
	eor	r3, r3, fp
	ldrd	r10, [r5]
	strd	r2, [r4, #104]
	ldrd	r2, [r4, #120]
	strd	r0, [r4, #96]
	eor	r10, r10, r8
	ldrd	r0, [r4, #112]
	eor	fp, fp, r9
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r10, [sp, #168]
	add	fp, sp, #336
	strd	r2, [r4, #120]
	ldrd	r2, [fp]
	ldrd	r10, [r4, #136]
	eors	r7, r7, r1
	add	r1, sp, #352
	ldrd	r8, [r4, #128]
	eors	r6, r6, r0
	ldrd	r0, [r1]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r4, #136]
	add	r3, sp, #360
	eor	r8, r8, r0
	eor	r9, r9, r1
	ldrd	r0, [r3]
	ldrd	r2, [r4, #144]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #144]
	add	r1, sp, #264
	ldrd	r10, [r1]
	ldrd	r0, [r4, #152]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [r4, #152]
	ldrd	r2, [sp, #248]
	ldrd	r10, [r4, #160]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r4, #160]
	add	r3, sp, #272
	ldrd	r0, [r3]
	ldrd	r2, [r4, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r4, #168]
	add	r1, sp, #280
	ldrd	r10, [r1]
	ldrd	r0, [r4, #176]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [r4, #176]
	add	fp, sp, #296
	ldrd	r2, [fp]
	ldrd	r10, [r4, #184]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r4, #184]
	ldrd	r2, [sp, #168]
	strd	r2, [r5]
	add	r1, ip, #3584
	strd	r8, [r4, #128]
	add	r8, sp, #352
	ldrd	r2, [r1]
	strd	r6, [r4, #112]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [lr]
	addw	r1, ip, #3592
	add	lr, sp, #336
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r8, sp, #360
	add	r1, ip, #3600
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	addw	r1, ip, #3608
	add	lr, sp, #264
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r1, ip, #3616
	ldrd	r2, [r1]
	strd	r6, [r8]
	ldrd	r6, [sp, #248]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	addw	r1, ip, #3624
	add	r10, sp, #272
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r6, [sp, #248]
	strd	r8, [r1]
	add	r1, ip, #3632
	add	r8, sp, #280
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #296
	addw	r1, ip, #3640
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	strd	r10, [lr]
	add	r7, sp, #344
	add	fp, ip, #3456
	ldrd	r2, [fp]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [fp]
	addw	r8, ip, #3464
	add	r1, sp, #312
	ldrd	r0, [r1]
	ldrd	r2, [r8]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #304
	strd	r2, [r8]
	ldrd	r2, [r0]
	ldrd	r0, [r4]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #304
	strd	r2, [r1]
	ldrd	r0, [r4, #8]
	ldrd	r2, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #208]
	ldrd	r0, [r4, #16]
	ldrd	r2, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #216]
	ldrd	r0, [r4, #24]
	ldrd	r2, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #224]
	ldrd	r0, [r4, #32]
	ldrd	r2, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #232]
	ldrd	r0, [r4, #40]
	ldrd	r2, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #256
	strd	r2, [sp, #240]
	ldrd	r2, [r0]
	ldrd	r0, [r4, #48]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	add	r1, sp, #256
	strd	r2, [r1]
	ldrd	r2, [r0]
	ldrd	r0, [r4, #56]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	ldrd	r0, [r4, #64]
	ldrd	r2, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #176]
	ldrd	r0, [r4, #72]
	ldrd	r2, [sp, #192]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #192]
	ldrd	r0, [r4, #80]
	ldrd	r2, [sp, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #184]
	ldrd	r0, [r4, #88]
	ldrd	r2, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #304
	add	r1, sp, #344
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #312
	strd	r2, [r4]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #320
	strd	r2, [r4, #8]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #16]
	ldrd	r0, [sp, #224]
	ldrd	r2, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #328
	strd	r2, [r4, #24]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #336
	strd	r2, [r4, #32]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #256
	add	r1, sp, #360
	strd	r2, [r4, #40]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	add	r1, sp, #264
	strd	r2, [r4, #48]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #56]
	ldrd	r0, [sp, #176]
	ldrd	r2, [sp, #248]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #272
	strd	r2, [r4, #64]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #192]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #280
	strd	r2, [r4, #72]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #80]
	ldrd	r0, [sp, #200]
	ldrd	r2, [lr]
	add	r7, ip, #3472
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #320
	strd	r2, [r4, #88]
	ldrd	r2, [r1]
	ldrd	r0, [r7]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r7]
	addw	r6, ip, #3480
	ldrd	r2, [r6]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r6]
	add	r5, ip, #3488
	add	r1, sp, #328
	ldrd	r2, [r5]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5]
	addw	r9, ip, #3496
	add	r1, sp, #336
	ldrd	r2, [r9]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r9]
	add	r10, ip, #3504
	add	r1, sp, #360
	ldrd	r2, [r10]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r10]
	add	r1, sp, #264
	addw	r2, ip, #3512
	ldrd	r0, [r1]
	str	r2, [sp, #168]
	ldrd	r2, [r2]
	ldr	lr, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	add	r2, ip, #3520
	ldrd	r0, [sp, #248]
	str	r2, [sp, #176]
	ldrd	r2, [r2]
	eors	r3, r3, r1
	ldr	r1, [sp, #176]
	eors	r2, r2, r0
	strd	r2, [r1]
	addw	r2, ip, #3528
	add	r1, sp, #272
	ldrd	r0, [r1]
	str	r2, [sp, #192]
	ldrd	r2, [r2]
	ldr	lr, [sp, #192]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	add	r1, sp, #280
	add	r2, ip, #3536
	ldrd	r0, [r1]
	str	r2, [sp, #184]
	ldrd	r2, [r2]
	ldr	lr, [sp, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	add	r1, sp, #296
	addw	r2, ip, #3544
	ldrd	r0, [r1]
	str	r2, [sp, #200]
	ldrd	r2, [r2]
	ldr	lr, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	mov	r1, fp
	add	r0, sp, #3600
	bl	vec_copy
	ldr	ip, [sp, #36]
	add	lr, ip, #4224
	ldrd	r0, [fp]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	ldrd	r0, [lr, #8]
	strd	r2, [sp, #208]
	ldrd	r2, [r8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr, #8]
	ldrd	r2, [r7]
	strd	r0, [sp, #216]
	ldrd	r0, [lr, #16]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr, #16]
	strd	r0, [sp, #224]
	ldrd	r2, [r6]
	ldrd	r0, [lr, #24]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #24]
	ldrd	r0, [lr, #32]
	ldrd	r2, [r5]
	strd	r6, [sp, #232]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #32]
	ldrd	r0, [lr, #40]
	ldrd	r2, [r9]
	eor	r8, r2, r0
	eor	r9, r3, r1
	strd	r8, [lr, #40]
	ldrd	r0, [lr, #48]
	ldrd	r2, [r10]
	strd	r6, [sp, #240]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #48]
	ldr	r10, [sp, #168]
	ldrd	r0, [lr, #56]
	ldrd	r2, [r10]
	add	fp, sp, #256
	strd	r8, [fp]
	add	r8, sp, #288
	strd	r6, [r8]
	eor	r6, r2, r0
	eor	r7, r3, r1
	add	r8, sp, #336
	strd	r6, [r8]
	strd	r6, [lr, #56]
	ldr	r10, [sp, #176]
	ldrd	r0, [lr, #64]
	ldrd	r2, [r10]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #64]
	ldr	r10, [sp, #192]
	ldrd	r0, [lr, #72]
	ldrd	r2, [r10]
	add	r8, sp, #360
	strd	r6, [r8]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #72]
	ldr	r10, [sp, #184]
	ldrd	r0, [lr, #80]
	ldrd	r2, [r10]
	add	r8, sp, #264
	strd	r6, [r8]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #80]
	ldr	r8, [sp, #200]
	strd	r6, [sp, #248]
	ldrd	r2, [r8]
	ldrd	r6, [lr, #88]
	eor	r10, r2, r6
	eor	fp, r3, r7
	strd	r10, [lr, #88]
	add	r1, ip, #4320
	add	r0, sp, #272
	ldrd	r2, [r1, #80]
	strd	r10, [r0]
	ldrd	r10, [sp, #248]
	ldrd	r6, [r1]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [sp, #208]
	ldrd	r8, [r1, #8]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [sp, #216]
	add	lr, sp, #560
	strd	r10, [lr]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r10, sp, #280
	strd	r6, [r10]
	ldrd	r8, [sp, #232]
	ldrd	r6, [r1, #16]
	ldrd	r10, [r1, #24]
	strd	r2, [sp, #176]
	ldrd	r2, [sp, #224]
	eor	r8, r8, r10
	eors	r2, r2, r6
	eors	r3, r3, r7
	eor	r9, r9, fp
	add	r7, sp, #296
	add	fp, sp, #312
	add	r10, sp, #256
	strd	r2, [r7]
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #40]
	ldrd	r6, [r1, #32]
	ldrd	r2, [sp, #240]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #336
	add	fp, sp, #328
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #56]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #288
	add	r7, sp, #320
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #48]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #264
	add	fp, sp, #344
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #72]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #360
	add	r7, sp, #304
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #64]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #352
	strd	r8, [fp]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #368
	strd	r2, [r7]
	add	r9, sp, #296
	ldrd	r2, [sp, #176]
	add	r7, sp, #280
	add	fp, sp, #312
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1]
	add	r3, sp, #320
	strd	r6, [r1, #8]
	strd	r8, [r1, #16]
	strd	r10, [r1, #24]
	ldrd	r2, [r3]
	add	r7, sp, #328
	add	r9, sp, #304
	add	fp, sp, #344
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #32]
	add	r3, sp, #368
	strd	r6, [r1, #40]
	strd	r8, [r1, #48]
	strd	r10, [r1, #56]
	ldrd	r2, [r3]
	ldrd	r10, [r0]
	strd	r2, [r1, #64]
	add	r7, sp, #352
	ldrd	r2, [r1, #88]
	ldrd	r8, [lr]
	ldrd	r6, [r7]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r6, [r1, #72]
	strd	r8, [r1, #80]
	strd	r10, [r1, #88]
	add	lr, sp, #704
	add	r1, ip, #4512
	ldrd	r2, [r1]
	strd	r10, [lr]
	ldrd	r10, [sp, #176]
	add	r5, sp, #280
	ldrd	r6, [r1, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r5]
	add	lr, sp, #712
	strd	r10, [lr]
	add	r10, sp, #296
	ldrd	r8, [r1, #16]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #920
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r5, sp, #912
	add	r6, sp, #312
	strd	r2, [r5]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #24]
	add	r10, sp, #320
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #328
	add	r7, sp, #720
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #32]
	ldrd	r6, [r1, #40]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #728
	add	r7, sp, #736
	add	r10, sp, #304
	add	r6, sp, #344
	strd	r8, [fp]
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #48]
	ldrd	r6, [r1, #56]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #744
	add	r7, sp, #752
	add	r10, sp, #368
	strd	r8, [fp]
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #64]
	add	r6, sp, #352
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #456
	strd	r8, [fp]
	ldrd	r2, [r6]
	ldrd	r10, [r5]
	ldrd	r6, [r1, #72]
	ldrd	r8, [lr]
	strd	r10, [r1, #8]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #736
	add	r7, sp, #472
	strd	r2, [r7]
	strd	r8, [r1]
	ldrd	r10, [fp]
	add	r3, sp, #920
	add	r9, sp, #728
	ldrd	r2, [r3]
	ldrd	r8, [r9]
	strd	r10, [r1, #40]
	add	r7, sp, #720
	add	fp, sp, #472
	strd	r2, [r1, #16]
	ldrd	r6, [r7]
	strd	r8, [r1, #32]
	ldrd	r10, [fp]
	add	r3, sp, #744
	add	r9, sp, #456
	ldrd	r2, [r3]
	ldrd	r8, [r9]
	strd	r6, [r1, #24]
	strd	r10, [r1, #72]
	add	r7, sp, #752
	add	r10, sp, #560
	strd	r2, [r1, #48]
	ldrd	r6, [r7]
	ldrd	r2, [r1, #80]
	strd	r8, [r1, #64]
	ldrd	r8, [r10]
	add	r5, sp, #704
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r6, [r1, #56]
	ldrd	r2, [r5]
	ldrd	r6, [r1, #88]
	add	r5, sp, #448
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r10, sp, #496
	strd	r2, [r5]
	strd	r8, [r10]
	strd	r8, [r1, #80]
	strd	r2, [r1, #88]
	add	r3, ip, #4416
	ldrd	r0, [r3]
	ldrd	r10, [lr]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [sp, #168]
	add	r1, sp, #912
	add	fp, sp, #920
	ldrd	r10, [fp]
	ldrd	r6, [r3, #8]
	ldrd	r8, [r3, #16]
	ldrd	r0, [r1]
	eor	r8, r8, r10
	eors	r6, r6, r0
	eors	r7, r7, r1
	eor	r9, r9, fp
	ldrd	r0, [sp, #168]
	ldrd	r10, [r4, #192]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #720
	strd	r0, [r4, #192]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #24]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #728
	add	fp, sp, #464
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #32]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #736
	add	fp, sp, #416
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #40]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #744
	add	fp, sp, #392
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #48]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #752
	add	fp, sp, #400
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #56]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #456
	add	fp, sp, #376
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #64]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #472
	add	fp, sp, #408
	strd	r0, [fp]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #72]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	fp, sp, #384
	strd	r0, [fp]
	ldrd	r10, [r3, #88]
	ldrd	r0, [r5]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	fp, sp, #432
	strd	r0, [fp]
	ldrd	r10, [r4, #208]
	ldrd	r0, [r4, #200]
	eor	r10, r10, r8
	eor	fp, fp, r9
	strd	r10, [r4, #208]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r10, sp, #496
	strd	r0, [r4, #200]
	ldrd	r0, [r10]
	ldrd	r10, [r3, #80]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	fp, sp, #424
	strd	r0, [fp]
	add	fp, sp, #464
	ldrd	r0, [sp, #168]
	ldrd	r10, [fp]
	strd	r0, [r3]
	strd	r10, [r3, #24]
	add	r1, sp, #416
	add	fp, sp, #392
	ldrd	r0, [r1]
	ldrd	r10, [fp]
	strd	r0, [r3, #32]
	strd	r10, [r3, #40]
	add	r1, sp, #400
	add	fp, sp, #376
	ldrd	r0, [r1]
	ldrd	r10, [fp]
	strd	r0, [r3, #48]
	strd	r10, [r3, #56]
	add	r1, sp, #408
	add	fp, sp, #384
	ldrd	r0, [r1]
	ldrd	r10, [fp]
	strd	r0, [r3, #64]
	strd	r10, [r3, #72]
	add	r1, sp, #432
	add	fp, sp, #424
	ldrd	r10, [fp]
	ldrd	r0, [r1]
	strd	r6, [r3, #8]
	strd	r8, [r3, #16]
	strd	r10, [r3, #80]
	strd	r0, [r3, #88]
	add	r5, ip, #4032
	ldrd	r2, [r5]
	ldrd	r0, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	strd	r0, [sp, #168]
	addw	r1, ip, #4040
	ldrd	r2, [r1]
	add	lr, sp, #480
	eor	r10, r6, r2
	eor	fp, r7, r3
	strd	r10, [lr]
	strd	r10, [r1]
	add	r1, ip, #4048
	ldrd	r2, [r1]
	eor	r6, r8, r2
	eor	r7, r9, r3
	strd	r6, [r1]
	add	r10, sp, #440
	addw	r1, ip, #4056
	add	r8, sp, #464
	ldrd	r2, [r1]
	strd	r6, [r10]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #416
	add	r1, ip, #4064
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #504
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	addw	r1, ip, #4072
	add	r8, sp, #392
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #1016
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	add	r1, ip, #4080
	add	lr, sp, #400
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #1024
	eor	r10, r10, r2
	eor	fp, fp, r3
	mov	r2, r4
	mov	r3, r4
	strd	r6, [r8]
	ldrd	r6, [r2, #264]!
	ldrd	r8, [r3, #272]!
	add	lr, sp, #1032
	strd	r10, [lr]
	mov	lr, r4
	str	r2, [sp, #192]
	str	r3, [sp, #184]
	ldrd	r2, [lr, #280]!
	add	r5, sp, #488
	strd	r2, [r5]
	add	r5, sp, #464
	ldrd	r2, [r5]
	strd	r10, [r1]
	ldrd	r10, [r4, #216]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r4, #216]
	add	r3, sp, #416
	ldrd	r10, [r3]
	ldrd	r2, [r4, #224]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #392
	strd	r10, [r4, #224]
	ldrd	r10, [r3]
	ldrd	r2, [r4, #232]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #400
	str	lr, [sp, #200]
	strd	r10, [r4, #232]
	ldrd	r10, [r3]
	ldrd	r2, [r4, #240]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #376
	strd	r10, [r4, #240]
	ldrd	r10, [r3]
	ldrd	r2, [r4, #248]
	addw	r0, ip, #4088
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #376
	strd	r10, [r4, #248]
	ldrd	r10, [r2]
	ldrd	r2, [r0]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #416
	strd	r10, [r3]
	add	r1, sp, #3568
	add	r3, sp, #408
	ldrd	r10, [r3]
	ldrd	r2, [r1]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	fp, sp, #384
	ldrd	r10, [fp]
	add	r3, sp, #424
	ldrd	r2, [r3]
	eor	r6, r6, r10
	eor	r7, r7, fp
	add	r10, sp, #432
	add	fp, sp, #488
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	eor	r3, r3, fp
	ldr	fp, [sp, #192]
	strd	r6, [fp]
	ldr	r6, [sp, #184]
	strd	r8, [r6]
	add	r9, sp, #416
	ldrd	r8, [r9]
	eor	r2, r2, r10
	strd	r2, [lr]
	strd	r8, [r0]
	add	r5, ip, #4096
	add	lr, sp, #408
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	add	lr, sp, #392
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [lr]
	add	r10, sp, #384
	ldrd	r0, [r5, #8]
	ldrd	r2, [r10]
	add	r10, sp, #400
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r10]
	add	r2, sp, #424
	ldrd	r6, [r5, #16]
	ldrd	r0, [r2]
	add	r10, sp, #432
	ldrd	r8, [r5, #24]
	eors	r0, r0, r6
	eors	r1, r1, r7
	ldrd	r6, [r10]
	add	r2, sp, #376
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r10, sp, #408
	strd	r0, [r2]
	strd	r6, [r10]
	ldrd	r8, [r10]
	ldrd	r10, [sp, #176]
	strd	r8, [r5, #24]
	ldrd	r8, [r4, #96]
	add	r3, sp, #400
	add	r7, sp, #376
	ldrd	r0, [lr]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #280
	strd	r10, [sp, #176]
	ldrd	r10, [r8]
	ldrd	r8, [r4, #104]
	strd	r2, [r5, #8]
	strd	r0, [r5]
	strd	r6, [r5, #16]
	add	r3, ip, #4128
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r9, sp, #616
	strd	r10, [r9]
	ldrd	r0, [r3]
	ldrd	r8, [sp, #168]
	add	fp, sp, #480
	ldrd	r6, [r3, #8]
	ldrd	r10, [fp]
	eor	r0, r0, r8
	add	r8, sp, #440
	eor	r6, r6, r10
	eor	r7, r7, fp
	eor	r1, r1, r9
	ldrd	r10, [r3, #16]
	ldrd	r8, [r8]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #416
	add	r9, sp, #512
	strd	r10, [r9]
	ldrd	r8, [r8]
	ldrd	r10, [r3, #56]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #1032
	add	r9, sp, #520
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #48]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #1024
	add	r9, sp, #432
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #40]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #1016
	add	r9, sp, #424
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #32]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #504
	add	r9, sp, #384
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #24]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r9, sp, #280
	strd	r10, [r9]
	add	lr, sp, #616
	ldrd	r8, [sp, #176]
	ldrd	r10, [lr]
	eor	r8, r8, r0
	eor	r9, r9, r1
	strd	r8, [r4, #96]
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	r8, sp, #392
	strd	r10, [r4, #104]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #64]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #400
	strd	r10, [lr]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #72]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #376
	add	r9, sp, #760
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #80]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r8, sp, #408
	add	r9, sp, #568
	strd	r10, [r9]
	ldrd	r10, [r8]
	ldrd	r8, [r3, #88]
	eor	r10, r10, r8
	eor	fp, fp, r9
	add	r9, sp, #576
	strd	r10, [r9]
	add	r9, sp, #520
	ldrd	r8, [r9]
	add	fp, sp, #512
	ldrd	r10, [fp]
	strd	r8, [r3, #56]
	add	r9, sp, #424
	strd	r10, [r3, #16]
	ldrd	r8, [r9]
	add	fp, sp, #432
	ldrd	r10, [fp]
	strd	r8, [r3, #40]
	add	r9, sp, #280
	strd	r10, [r3, #48]
	ldrd	r8, [r9]
	add	fp, sp, #384
	ldrd	r10, [fp]
	strd	r8, [r3, #24]
	add	r9, sp, #760
	strd	r10, [r3, #32]
	ldrd	r8, [r9]
	ldrd	r10, [lr]
	strd	r0, [r3]
	strd	r10, [r3, #64]
	strd	r6, [r3, #8]
	add	fp, sp, #568
	strd	r8, [r3, #72]
	add	r9, sp, #576
	ldrd	r10, [fp]
	ldrd	r8, [r9]
	strd	r10, [r3, #80]
	strd	r8, [r3, #88]
	add	r5, ip, #3936
	ldrd	r2, [r5]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r5]
	addw	r1, ip, #3944
	ldrd	r2, [r1]
	eor	r8, r6, r2
	eor	r9, r7, r3
	strd	r8, [r1]
	strd	r10, [sp, #176]
	add	r10, sp, #624
	strd	r8, [r10]
	add	r1, ip, #3952
	add	r8, sp, #512
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #280
	addw	r1, ip, #3960
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #632
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	add	r1, ip, #3968
	add	r8, sp, #384
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #464
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	addw	r1, ip, #3976
	add	lr, sp, #424
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #488
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	add	r1, ip, #3984
	add	r8, sp, #432
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #584
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r10, [lr]
	strd	r6, [r1]
	add	lr, sp, #520
	addw	r1, ip, #3992
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #768
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	lr, sp, #776
	strd	r6, [r8]
	strd	r10, [lr]
	add	r8, sp, #616
	strd	r10, [r1]
	add	r1, ip, #4000
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #760
	addw	r1, ip, #4008
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #640
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r6, [r8]
	strd	r10, [r1]
	add	r8, sp, #568
	add	r1, ip, #4016
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	r8, sp, #936
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r8]
	add	r8, sp, #312
	add	lr, sp, #928
	strd	r6, [r1]
	ldrd	r6, [r8]
	ldrd	r8, [r4, #120]
	strd	r10, [lr]
	add	fp, sp, #296
	ldrd	r0, [fp]
	ldrd	r10, [r4, #112]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #296
	strd	r6, [r9]
	add	r6, sp, #320
	eor	r0, r0, r10
	eor	r1, r1, fp
	ldrd	r10, [r6]
	ldrd	r6, [r4, #128]
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	r7, sp, #312
	strd	r10, [r7]
	add	r10, sp, #328
	ldrd	r8, [r10]
	ldrd	r10, [r4, #136]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #320
	strd	r8, [fp]
	add	r8, sp, #304
	ldrd	r6, [r8]
	ldrd	r8, [r4, #144]
	add	fp, sp, #344
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #328
	strd	r6, [r9]
	ldrd	r6, [fp]
	ldrd	r10, [r4, #152]
	eor	r6, r6, r10
	add	r10, sp, #368
	ldrd	r8, [r10]
	eor	r7, r7, fp
	ldrd	r10, [r4, #160]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #352
	add	fp, sp, #304
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r4, #168]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #560
	add	fp, sp, #344
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r4, #176]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #704
	add	fp, sp, #368
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r4, #184]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #512
	add	fp, sp, #352
	strd	r8, [fp]
	ldrd	r8, [r10]
	add	fp, sp, #432
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r10, sp, #328
	strd	r8, [r4, #112]
	add	r1, sp, #520
	ldrd	r8, [fp]
	ldrd	r10, [r10]
	ldrd	r0, [r1]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #320
	add	fp, sp, #424
	eors	r6, r6, r0
	eors	r7, r7, r1
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #312
	add	fp, sp, #384
	strd	r0, [r4, #136]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #296
	add	fp, sp, #280
	strd	r0, [r4, #128]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #304
	add	fp, sp, #616
	strd	r0, [r4, #120]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #344
	add	fp, sp, #760
	strd	r0, [r4, #160]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #368
	add	fp, sp, #568
	strd	r0, [r4, #168]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #352
	add	fp, sp, #576
	strd	r0, [r4, #176]
	ldrd	r0, [fp]
	ldrd	r10, [r10]
	addw	r3, ip, #4024
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r10, sp, #576
	strd	r0, [r4, #184]
	ldrd	r0, [r10]
	ldrd	r10, [r3]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	fp, sp, #328
	strd	r0, [fp]
	strd	r0, [r3]
	add	fp, ip, #3840
	ldrd	r2, [fp]
	ldrd	r0, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [fp]
	strd	r6, [r4, #152]
	strd	r8, [r4, #144]
	add	r7, sp, #624
	addw	r8, ip, #3848
	ldrd	r2, [r8]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r8]
	add	r7, ip, #3856
	add	r3, sp, #632
	ldrd	r0, [r7]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r7]
	addw	r6, ip, #3864
	add	r3, sp, #464
	ldrd	r0, [r6]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r6]
	add	r5, ip, #3872
	add	r3, sp, #488
	ldrd	r0, [r5]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	addw	r9, ip, #3880
	add	r3, sp, #584
	ldrd	r0, [r9]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r9]
	add	r10, ip, #3888
	add	r3, sp, #768
	ldrd	r0, [r10]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r10]
	addw	r2, ip, #3896
	add	r3, sp, #776
	ldrd	r0, [r2]
	str	r2, [sp, #280]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	ldr	r2, [sp, #280]
	eors	r1, r1, r3
	strd	r0, [r2]
	add	r3, ip, #3904
	ldrd	r0, [r3]
	str	r3, [sp, #296]
	add	r3, sp, #640
	ldrd	r2, [r3]
	eors	r0, r0, r2
	ldr	r2, [sp, #296]
	eors	r1, r1, r3
	addw	r3, ip, #3912
	strd	r0, [r2]
	ldrd	r0, [r3]
	str	r3, [sp, #312]
	ldrd	r2, [lr]
	eors	r0, r0, r2
	ldr	r2, [sp, #312]
	eors	r1, r1, r3
	add	r3, ip, #3920
	strd	r0, [r2]
	str	r3, [sp, #320]
	ldrd	r0, [sp, #216]
	ldrd	r2, [r4, #8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #216]
	ldrd	r2, [r4]
	ldrd	r0, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #304
	strd	r0, [r3]
	ldrd	r2, [r4, #16]
	ldrd	r0, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #208]
	ldrd	r2, [r4, #24]
	ldrd	r0, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #224]
	ldrd	r2, [r4, #32]
	ldrd	r0, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #256
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [r4, #40]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #288
	strd	r0, [sp, #240]
	ldrd	r0, [r2]
	ldrd	r2, [r4, #48]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #336
	add	r3, sp, #256
	strd	r0, [r3]
	ldrd	r0, [r2]
	ldrd	r2, [r4, #56]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #360
	add	r3, sp, #288
	strd	r0, [r3]
	ldrd	r0, [r2]
	ldrd	r2, [r4, #64]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #264
	add	r3, sp, #336
	strd	r0, [r3]
	ldrd	r0, [r2]
	ldrd	r2, [r4, #72]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #360
	strd	r0, [r3]
	ldrd	r2, [r4, #80]
	ldrd	r0, [sp, #248]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #264
	strd	r0, [r3]
	add	r3, sp, #272
	ldrd	r0, [r3]
	ldrd	r2, [r4, #88]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #248]
	ldr	r1, [sp, #320]
	ldrd	r0, [r1]
	strd	r0, [sp, #160]
	add	r0, sp, #304
	add	r1, sp, #712
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #272
	strd	r2, [r1]
	add	r1, sp, #912
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #920
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #720
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #728
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #736
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #744
	add	r1, sp, #256
	strd	r2, [sp, #240]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r0, sp, #752
	add	r1, sp, #288
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r0, sp, #456
	add	r1, sp, #336
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #336
	strd	r2, [r1]
	add	r0, sp, #472
	add	r1, sp, #360
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #360
	strd	r2, [r1]
	add	r0, sp, #496
	add	r1, sp, #264
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #264
	strd	r2, [r1]
	add	r1, sp, #448
	ldrd	r2, [r1]
	ldrd	r0, [sp, #248]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #272
	strd	r2, [sp, #248]
	ldrd	r2, [r0]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #272
	strd	r2, [r1]
	add	r1, sp, #480
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #440
	strd	r2, [sp, #168]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #504
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1016
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1024
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #256
	add	r1, sp, #1032
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #416
	add	r1, sp, #288
	strd	r2, [sp, #240]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r0, sp, #392
	add	r1, sp, #336
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r0, sp, #400
	add	r1, sp, #360
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #336
	strd	r2, [r1]
	add	r0, sp, #376
	add	r1, sp, #264
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #408
	add	r1, sp, #360
	strd	r2, [r1]
	ldrd	r2, [r0]
	ldrd	r0, [sp, #248]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #264
	strd	r2, [r1]
	add	r1, sp, #272
	ldrd	r0, [r1]
	ldrd	r2, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #624
	strd	r2, [r4]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #632
	strd	r2, [r4, #8]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #464
	strd	r2, [r4, #16]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #488
	strd	r2, [r4, #24]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #584
	strd	r2, [r4, #32]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #768
	strd	r2, [r4, #40]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #256
	add	r1, sp, #776
	strd	r2, [r4, #48]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	add	r1, sp, #640
	strd	r2, [r4, #56]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #336
	strd	r2, [r4, #64]
	ldrd	r0, [r0]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #360
	add	r1, sp, #936
	strd	r2, [r4, #72]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #328
	add	r1, sp, #264
	strd	r2, [r4, #80]
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #936
	strd	r2, [r4, #88]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #160]
	eors	r2, r2, r0
	ldr	r0, [sp, #320]
	eors	r3, r3, r1
	strd	r2, [r0]
	addw	lr, ip, #3928
	add	r1, sp, #328
	ldrd	r2, [lr]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	mov	r1, fp
	add	r0, sp, #3696
	str	lr, [sp, #168]
	bl	vec_copy
	ldr	ip, [sp, #36]
	add	lr, ip, #5376
	ldrd	r0, [fp]
	ldrd	r2, [lr]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [lr]
	ldrd	r0, [lr, #8]
	strd	r2, [sp, #176]
	ldrd	r2, [r8]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr, #8]
	ldrd	r2, [r7]
	strd	r0, [sp, #208]
	ldrd	r0, [lr, #16]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [lr, #16]
	strd	r0, [sp, #216]
	ldrd	r2, [r6]
	ldrd	r0, [lr, #24]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #24]
	ldrd	r0, [lr, #32]
	ldrd	r2, [r5]
	strd	r6, [sp, #224]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #32]
	ldrd	r0, [lr, #40]
	ldrd	r2, [r9]
	eor	r8, r2, r0
	eor	r9, r3, r1
	strd	r8, [lr, #40]
	ldrd	r0, [lr, #48]
	ldrd	r2, [r10]
	strd	r6, [sp, #232]
	eor	r10, r2, r0
	eor	fp, r3, r1
	ldr	r7, [sp, #280]
	strd	r10, [lr, #48]
	ldrd	r0, [lr, #56]
	ldrd	r2, [r7]
	add	r5, sp, #256
	strd	r10, [r5]
	strd	r8, [sp, #240]
	add	r10, sp, #288
	eor	r8, r2, r0
	eor	r9, r3, r1
	strd	r8, [r10]
	strd	r8, [lr, #56]
	ldr	r5, [sp, #296]
	ldr	r10, [sp, #312]
	ldrd	r2, [r5]
	ldrd	r0, [lr, #64]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #64]
	ldrd	r0, [lr, #72]
	ldrd	r2, [r10]
	add	r8, sp, #336
	strd	r6, [r8]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #72]
	ldr	r10, [sp, #320]
	ldrd	r0, [lr, #80]
	ldrd	r2, [r10]
	add	r8, sp, #360
	strd	r6, [r8]
	eor	r6, r2, r0
	eor	r7, r3, r1
	strd	r6, [lr, #80]
	ldr	r10, [sp, #168]
	add	r8, sp, #264
	ldrd	r2, [r10]
	strd	r6, [r8]
	ldrd	r6, [lr, #88]
	eor	r8, r2, r6
	eor	r9, r3, r7
	strd	r8, [lr, #88]
	add	r1, ip, #5472
	add	lr, sp, #264
	ldrd	r2, [r1, #80]
	ldrd	r10, [lr]
	ldrd	r6, [r1]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [sp, #176]
	strd	r8, [sp, #168]
	eors	r2, r2, r6
	ldrd	r8, [r1, #8]
	eors	r3, r3, r7
	ldrd	r6, [sp, #208]
	add	lr, sp, #352
	strd	r10, [lr]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r10, sp, #272
	strd	r6, [r10]
	ldrd	r8, [sp, #224]
	ldrd	r6, [r1, #16]
	ldrd	r10, [r1, #24]
	strd	r2, [sp, #248]
	ldrd	r2, [sp, #216]
	eor	r8, r8, r10
	eors	r2, r2, r6
	eors	r3, r3, r7
	eor	r9, r9, fp
	add	r7, sp, #280
	add	fp, sp, #296
	strd	r2, [r7]
	strd	r8, [fp]
	ldrd	r10, [r1, #40]
	ldrd	r8, [sp, #240]
	ldrd	r6, [r1, #32]
	ldrd	r2, [sp, #232]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #288
	add	fp, sp, #320
	strd	r8, [fp]
	eors	r2, r2, r6
	ldrd	r8, [r10]
	eors	r3, r3, r7
	ldrd	r10, [r1, #56]
	add	r7, sp, #312
	add	r6, sp, #256
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #48]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #360
	add	fp, sp, #304
	strd	r8, [fp]
	eors	r2, r2, r6
	ldrd	r8, [r10]
	eors	r3, r3, r7
	ldrd	r10, [r1, #72]
	add	r7, sp, #328
	add	r6, sp, #336
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #64]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #368
	strd	r8, [fp]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #344
	strd	r2, [r7]
	add	r7, sp, #272
	ldrd	r2, [sp, #248]
	ldrd	r6, [r7]
	add	r9, sp, #280
	add	fp, sp, #296
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1]
	strd	r6, [r1, #8]
	add	r3, sp, #312
	add	r7, sp, #320
	strd	r8, [r1, #16]
	strd	r10, [r1, #24]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	add	r9, sp, #328
	add	fp, sp, #304
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #32]
	strd	r6, [r1, #40]
	add	r3, sp, #344
	add	r7, sp, #368
	strd	r8, [r1, #48]
	strd	r10, [r1, #56]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	ldrd	r8, [r4]
	strd	r2, [r1, #64]
	strd	r6, [r1, #72]
	ldrd	r2, [r4, #8]
	ldrd	r6, [r4, #16]
	add	r10, sp, #1632
	strd	r8, [r10]
	add	r5, sp, #1640
	add	r8, sp, #1648
	strd	r6, [r8]
	strd	r2, [r5]
	ldrd	r10, [r4, #24]
	ldrd	r2, [r4, #32]
	ldrd	r6, [r4, #40]
	add	lr, sp, #1656
	add	r5, sp, #1664
	add	r8, sp, #1136
	strd	r6, [r8]
	strd	r10, [lr]
	strd	r2, [r5]
	ldrd	r10, [r4, #48]
	ldrd	r2, [r4, #56]
	ldrd	r6, [r4, #64]
	add	lr, sp, #872
	add	r5, sp, #880
	add	r8, sp, #888
	strd	r6, [r8]
	strd	r10, [lr]
	strd	r2, [r5]
	ldrd	r10, [r4, #72]
	ldrd	r2, [r4, #80]
	ldrd	r6, [r4, #88]
	add	lr, sp, #896
	add	r5, sp, #984
	add	r8, sp, #1304
	strd	r10, [lr]
	strd	r6, [r8]
	strd	r2, [r5]
	ldrd	r6, [sp, #168]
	ldrd	r2, [r1, #88]
	add	fp, sp, #352
	ldrd	r10, [fp]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r8, sp, #560
	strd	r10, [r1, #80]
	strd	r6, [r8]
	strd	r6, [r1, #88]
	add	r1, ip, #5664
	ldrd	r2, [r1]
	ldrd	r10, [sp, #248]
	add	r5, sp, #272
	ldrd	r6, [r1, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r5]
	add	lr, sp, #704
	strd	r10, [lr]
	add	r10, sp, #280
	ldrd	r8, [r1, #16]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #912
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r5, sp, #712
	add	r6, sp, #296
	strd	r2, [r5]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #24]
	add	r10, sp, #312
	ldrd	r8, [r10]
	ldrd	r10, [r1, #32]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #320
	add	r7, sp, #920
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #40]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #328
	add	fp, sp, #720
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #304
	add	r7, sp, #728
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #56]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #344
	add	fp, sp, #736
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #368
	add	r7, sp, #744
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #72]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #752
	strd	r8, [fp]
	ldrd	r8, [lr]
	ldrd	r10, [r5]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #456
	strd	r2, [r7]
	add	r3, sp, #912
	add	r7, sp, #920
	strd	r8, [r1]
	strd	r10, [r1, #8]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	add	fp, sp, #728
	ldrd	r10, [fp]
	add	r9, sp, #720
	ldrd	r8, [r9]
	strd	r2, [r1, #16]
	strd	r6, [r1, #24]
	add	r3, sp, #736
	add	r7, sp, #744
	strd	r10, [r1, #40]
	ldrd	r2, [r3]
	ldrd	r10, [r4, #96]
	ldrd	r6, [r7]
	strd	r8, [r1, #32]
	add	r9, sp, #752
	ldrd	r8, [r9]
	add	lr, sp, #1144
	strd	r10, [lr]
	strd	r2, [r1, #48]
	ldrd	r10, [r4, #120]
	ldrd	r2, [r4, #104]
	strd	r6, [r1, #56]
	ldrd	r6, [r4, #112]
	strd	r8, [r1, #64]
	add	r5, sp, #1152
	add	r8, sp, #992
	add	lr, sp, #1000
	strd	r2, [r5]
	strd	r6, [r8]
	strd	r10, [lr]
	ldrd	r2, [r4, #128]
	ldrd	r6, [r4, #136]
	ldrd	r10, [r4, #144]
	add	r5, sp, #1408
	add	r8, sp, #1416
	add	lr, sp, #1424
	strd	r2, [r5]
	strd	r6, [r8]
	ldrd	r2, [r4, #152]
	ldrd	r6, [r4, #160]
	strd	r10, [lr]
	ldrd	r10, [r4, #168]
	add	r5, sp, #1432
	add	r8, sp, #1440
	add	lr, sp, #1448
	strd	r2, [r5]
	strd	r6, [r8]
	strd	r10, [lr]
	add	fp, sp, #456
	ldrd	r10, [fp]
	ldrd	r2, [r4, #176]
	ldrd	r6, [r4, #184]
	strd	r10, [r1, #72]
	add	r5, sp, #1672
	add	r8, sp, #1680
	add	r10, sp, #352
	strd	r2, [r5]
	strd	r6, [r8]
	ldrd	r2, [r1, #80]
	ldrd	r8, [r10]
	add	r5, sp, #560
	ldrd	r6, [r1, #88]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r5]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r8, [r1, #80]
	strd	r2, [r1, #88]
	add	r10, sp, #472
	add	r1, ip, #5568
	add	r5, sp, #496
	add	lr, sp, #704
	strd	r8, [r10]
	strd	r2, [r5]
	ldrd	r10, [lr]
	ldrd	r2, [r1]
	add	r5, sp, #712
	ldrd	r6, [r1, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r5]
	add	lr, sp, #448
	strd	r10, [lr]
	add	r10, sp, #912
	ldrd	r8, [r1, #16]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #392
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r5, sp, #416
	add	r6, sp, #920
	add	r10, sp, #720
	ldrd	r8, [r10]
	strd	r2, [r5]
	ldrd	r10, [r1, #32]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #24]
	eor	r8, r8, r10
	eors	r2, r2, r6
	eors	r3, r3, r7
	eor	r9, r9, fp
	add	r7, sp, #400
	add	fp, sp, #376
	add	r6, sp, #728
	add	r10, sp, #736
	strd	r2, [r7]
	strd	r8, [fp]
	ldrd	r2, [r6]
	ldrd	r8, [r10]
	ldrd	r6, [r1, #40]
	ldrd	r10, [r1, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r7, sp, #408
	add	fp, sp, #384
	add	r6, sp, #744
	strd	r2, [r7]
	strd	r8, [fp]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #56]
	add	r10, sp, #752
	ldrd	r8, [r10]
	ldrd	r10, [r1, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #456
	add	r7, sp, #424
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #72]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r10, sp, #496
	add	fp, sp, #432
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #88]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #472
	add	r7, sp, #480
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #80]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #504
	strd	r8, [fp]
	ldrd	r8, [lr]
	ldrd	r10, [r5]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #440
	strd	r2, [r7]
	add	r3, sp, #392
	add	r7, sp, #400
	strd	r8, [r1]
	strd	r10, [r1, #8]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	add	r9, sp, #376
	add	fp, sp, #408
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #16]
	strd	r6, [r1, #24]
	add	r3, sp, #384
	add	r7, sp, #424
	strd	r8, [r1, #32]
	strd	r10, [r1, #40]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	add	r9, sp, #432
	add	fp, sp, #480
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #48]
	strd	r6, [r1, #56]
	add	r3, sp, #504
	add	r7, sp, #440
	strd	r8, [r1, #64]
	strd	r10, [r1, #72]
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	strd	r6, [r1, #80]
	strd	r2, [r1, #88]
	add	r1, ip, #5952
	ldrd	r8, [lr]
	ldrd	r2, [r1]
	ldr	r6, [sp, #192]
	ldrd	r6, [r6]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r10, sp, #1016
	strd	r8, [r10]
	add	r8, sp, #1480
	strd	r6, [r8]
	ldr	r8, [sp, #184]
	ldrd	r8, [r8]
	add	r10, sp, #1488
	strd	r8, [r10]
	ldrd	r2, [r4, #192]
	ldr	r10, [sp, #200]
	ldrd	r6, [r4, #208]
	ldrd	r10, [r10]
	add	r5, sp, #976
	strd	r2, [r5]
	ldrd	r2, [r4, #200]
	add	lr, sp, #1496
	add	r8, sp, #1320
	strd	r10, [lr]
	strd	r6, [r8]
	ldrd	r10, [r4, #216]
	ldrd	r6, [r4, #232]
	add	r5, sp, #1312
	strd	r2, [r5]
	ldrd	r2, [r4, #224]
	add	lr, sp, #1456
	add	r8, sp, #1472
	strd	r10, [lr]
	strd	r6, [r8]
	ldrd	r10, [r4, #240]
	add	r5, sp, #1464
	add	r7, sp, #1016
	strd	r2, [r5]
	ldrd	r6, [r7]
	ldrd	r2, [r4, #248]
	add	lr, sp, #1688
	strd	r10, [lr]
	add	r5, sp, #1696
	add	lr, sp, #416
	strd	r2, [r5]
	strd	r6, [r1]
	ldrd	r2, [r1, #8]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #192]
	add	r10, sp, #392
	ldrd	r4, [r1, #16]
	ldrd	r2, [r10]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r4, sp, #400
	ldrd	r6, [r1, #24]
	strd	r2, [sp, #184]
	ldrd	r2, [r4]
	add	r4, sp, #408
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #200]
	add	r10, sp, #376
	ldrd	r2, [r4]
	ldrd	r4, [r1, #40]
	ldrd	r8, [r1, #32]
	ldrd	r6, [r10]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r5, sp, #1032
	strd	r2, [r5]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r10, sp, #1024
	add	r8, sp, #384
	add	r2, sp, #424
	strd	r6, [r10]
	ldrd	r6, [r8]
	ldrd	r10, [r2]
	ldrd	r8, [r1, #48]
	ldrd	r2, [r1, #56]
	eor	r6, r6, r8
	eor	r7, r7, r9
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r9, sp, #616
	add	r3, sp, #760
	strd	r6, [r9]
	strd	r10, [r3]
	add	r6, sp, #432
	add	r10, sp, #480
	ldrd	r4, [r6]
	ldrd	r8, [r10]
	ldrd	r6, [r1, #64]
	ldrd	r10, [r1, #72]
	eors	r4, r4, r6
	eors	r5, r5, r7
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r7, sp, #568
	add	fp, sp, #576
	strd	r4, [r7]
	strd	r8, [fp]
	add	r4, sp, #440
	add	r8, sp, #504
	ldrd	r2, [r4]
	ldrd	r6, [r8]
	ldrd	r4, [r1, #80]
	ldrd	r8, [r1, #88]
	ldrd	r10, [sp, #192]
	eors	r2, r2, r4
	eors	r3, r3, r5
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r5, sp, #624
	add	r9, sp, #632
	strd	r6, [r9]
	strd	r2, [r5]
	add	r7, sp, #1024
	strd	r10, [r1, #8]
	add	r9, sp, #1032
	add	fp, sp, #616
	ldrd	r2, [sp, #184]
	ldrd	r4, [sp, #200]
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #16]
	strd	r4, [r1, #24]
	strd	r6, [r1, #32]
	strd	r8, [r1, #40]
	strd	r10, [r1, #48]
	add	r3, sp, #760
	add	r5, sp, #568
	add	r7, sp, #576
	add	r9, sp, #624
	add	fp, sp, #632
	ldrd	r2, [r3]
	ldrd	r4, [r5]
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #56]
	strd	r4, [r1, #64]
	strd	r6, [r1, #72]
	strd	r8, [r1, #80]
	strd	r10, [r1, #88]
	add	lr, sp, #1016
	add	r1, ip, #6048
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	ldrd	r4, [r1, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [sp, #192]
	add	lr, sp, #464
	strd	r10, [lr]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r10, sp, #488
	ldrd	r6, [r1, #16]
	strd	r2, [r10]
	ldrd	r2, [sp, #184]
	add	r4, sp, #584
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r4]
	add	r4, sp, #1024
	ldrd	r8, [r1, #24]
	ldrd	r2, [r4]
	ldrd	r6, [sp, #200]
	ldrd	r4, [r1, #32]
	eor	r6, r6, r8
	eor	r7, r7, r9
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r10, sp, #768
	add	r5, sp, #776
	add	r8, sp, #1032
	strd	r6, [r10]
	strd	r2, [r5]
	ldrd	r6, [r8]
	ldrd	r8, [r1, #40]
	ldrd	r10, [lr]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #640
	strd	r6, [r9]
	strd	r10, [r1]
	add	r3, sp, #488
	add	fp, sp, #640
	ldrd	r2, [r3]
	ldrd	r10, [fp]
	add	lr, sp, #616
	strd	r2, [r1, #8]
	strd	r10, [r1, #40]
	ldrd	r2, [r1, #48]
	ldrd	r10, [lr]
	add	r5, sp, #584
	ldrd	r4, [r5]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	lr, sp, #928
	strd	r10, [lr]
	add	r10, sp, #760
	ldrd	r2, [r10]
	strd	r4, [r1, #16]
	add	r7, sp, #768
	ldrd	r4, [r1, #56]
	ldrd	r6, [r7]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r10, sp, #936
	add	r4, sp, #568
	add	r9, sp, #776
	strd	r2, [r10]
	ldrd	r8, [r9]
	ldrd	r2, [r4]
	strd	r6, [r1, #24]
	ldrd	r6, [r1, #64]
	add	r10, sp, #576
	strd	r8, [r1, #32]
	eors	r2, r2, r6
	ldrd	r8, [r1, #72]
	eors	r3, r3, r7
	add	r4, sp, #1040
	ldrd	r6, [r10]
	strd	r2, [r4]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r10, sp, #1048
	add	r4, sp, #624
	add	r8, sp, #632
	ldrd	r2, [r4]
	strd	r6, [r10]
	ldrd	r4, [r1, #80]
	ldrd	r6, [r8]
	ldrd	r8, [r1, #88]
	ldrd	r10, [lr]
	eors	r2, r2, r4
	eors	r3, r3, r5
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r5, sp, #1168
	add	r9, sp, #1056
	strd	r2, [r5]
	strd	r6, [r9]
	add	r3, sp, #936
	strd	r10, [r1, #48]
	add	r5, sp, #1040
	add	r7, sp, #1048
	add	r9, sp, #1168
	add	fp, sp, #1056
	ldrd	r2, [r3]
	ldrd	r4, [r5]
	ldrd	r8, [r9]
	ldrd	r6, [r7]
	ldrd	r10, [fp]
	strd	r2, [r1, #56]
	strd	r4, [r1, #64]
	strd	r6, [r1, #72]
	strd	r8, [r1, #80]
	strd	r10, [r1, #88]
	add	lr, sp, #464
	add	r1, ip, #5856
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	lr, sp, #1176
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [lr]
	add	r10, sp, #488
	ldrd	r4, [r1, #8]
	ldrd	r2, [r10]
	add	r10, sp, #1184
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r4, sp, #584
	ldrd	r6, [r1, #16]
	strd	r2, [r10]
	ldrd	r2, [r4]
	add	r10, sp, #768
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r4, sp, #1192
	ldrd	r8, [r1, #24]
	ldrd	r6, [r10]
	strd	r2, [r4]
	add	r4, sp, #776
	ldrd	r2, [r4]
	eor	r6, r6, r8
	ldrd	r4, [r1, #32]
	eor	r7, r7, r9
	add	r10, sp, #1200
	add	r8, sp, #640
	strd	r6, [r10]
	ldrd	r6, [r8]
	ldrd	r8, [r1, #40]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r5, sp, #1208
	strd	r2, [r5]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r2, sp, #928
	add	r9, sp, #1064
	strd	r6, [r9]
	ldrd	r10, [r2]
	add	r6, sp, #936
	ldrd	r2, [r1, #48]
	ldrd	r4, [r6]
	ldrd	r6, [r1, #56]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1072
	strd	r10, [r3]
	eors	r4, r4, r6
	eors	r5, r5, r7
	add	r10, sp, #1040
	add	r7, sp, #1080
	strd	r4, [r7]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #64]
	add	r4, sp, #1048
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #1088
	strd	r8, [fp]
	ldrd	r2, [r4]
	add	r8, sp, #1168
	ldrd	r4, [r1, #72]
	ldrd	r6, [r8]
	ldrd	r8, [r1, #80]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r5, sp, #1096
	strd	r2, [r5]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #784
	strd	r6, [r9]
	add	r7, sp, #1200
	ldrd	r6, [r7]
	add	r3, sp, #1184
	add	r5, sp, #1192
	ldrd	r10, [lr]
	ldrd	r2, [r3]
	ldrd	r4, [r5]
	strd	r6, [r1, #24]
	add	r7, sp, #1088
	strd	r10, [r1]
	strd	r2, [r1, #8]
	strd	r4, [r1, #16]
	ldrd	r6, [r7]
	add	r9, sp, #1208
	add	fp, sp, #1064
	add	r3, sp, #1072
	add	r5, sp, #1080
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	ldrd	r2, [r3]
	ldrd	r4, [r5]
	strd	r6, [r1, #64]
	add	r6, sp, #1056
	strd	r8, [r1, #32]
	strd	r10, [r1, #40]
	strd	r2, [r1, #48]
	strd	r4, [r1, #56]
	ldrd	r2, [r1, #88]
	ldrd	r4, [r6]
	add	r9, sp, #1096
	add	fp, sp, #784
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	eors	r4, r4, r2
	eors	r5, r5, r3
	add	r6, sp, #944
	strd	r8, [r1, #72]
	strd	r10, [r1, #80]
	strd	r4, [r6]
	strd	r4, [r1, #88]
	add	r5, sp, #3312
	mov	r7, r5
	ldrd	r8, [r7, #296]!
	mov	r6, r5
	add	r1, sp, #672
	strd	r8, [r1]
	ldrd	r8, [r6, #304]!
	mov	r4, r5
	add	r1, sp, #680
	strd	r8, [r1]
	ldrd	r8, [r4, #312]!
	add	r1, sp, #608
	strd	r8, [r1]
	add	r0, ip, #5760
	add	r1, sp, #1176
	ldrd	r2, [r0]
	ldrd	r8, [r1]
	eor	r9, r9, r3
	add	r3, sp, #1184
	ldrd	r10, [r0, #8]
	eor	r8, r8, r2
	ldrd	r2, [r3]
	add	r1, sp, #696
	eor	r10, r10, r2
	add	r2, sp, #1192
	eor	fp, fp, r3
	strd	r8, [r1]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #16]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1200
	add	r3, sp, #592
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #24]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1208
	add	r3, sp, #808
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #32]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1064
	add	r3, sp, #520
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #40]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1072
	add	r3, sp, #528
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #48]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1080
	add	r3, sp, #512
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #56]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1088
	add	r3, sp, #536
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #64]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1096
	add	r3, sp, #544
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #72]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #784
	add	r3, sp, #552
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #80]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #944
	add	r3, sp, #600
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r0, #88]
	add	lr, sp, #3600
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r3, sp, #648
	strd	r8, [r3]
	ldrd	r8, [lr]
	ldrd	r2, [r1]
	add	r1, sp, #672
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [lr]
	ldrd	r8, [r1]
	eor	r8, r8, r10
	eor	r9, r9, fp
	strd	r8, [r7]
	add	r9, sp, #592
	add	r8, sp, #680
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [r6]
	add	r3, sp, #608
	add	r2, sp, #808
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r9, r9, r3
	add	r3, sp, #696
	eor	r8, r8, r2
	ldrd	r2, [r3]
	strd	r2, [r0]
	add	r3, sp, #592
	ldrd	r2, [r3]
	strd	r2, [r0, #16]
	add	r3, sp, #808
	ldrd	r2, [r3]
	strd	r2, [r0, #24]
	add	r3, sp, #520
	ldrd	r2, [r3]
	strd	r2, [r0, #32]
	add	r3, sp, #528
	ldrd	r2, [r3]
	strd	r2, [r0, #40]
	add	r3, sp, #512
	ldrd	r2, [r3]
	strd	r2, [r0, #48]
	add	r3, sp, #536
	ldrd	r2, [r3]
	strd	r2, [r0, #56]
	add	r3, sp, #544
	ldrd	r2, [r3]
	strd	r2, [r0, #64]
	add	r3, sp, #552
	ldrd	r2, [r3]
	strd	r10, [r0, #8]
	strd	r2, [r0, #72]
	add	r3, sp, #600
	ldrd	r2, [r3]
	strd	r2, [r0, #80]
	add	r3, sp, #648
	ldrd	r2, [r3]
	strd	r8, [r4]
	mov	lr, r5
	mov	r4, r5
	strd	r2, [r0, #88]
	ldrd	r6, [r4, #328]!
	ldrd	r2, [lr, #336]!
	str	r4, [sp, #656]
	str	lr, [sp, #664]
	add	r4, sp, #952
	mov	lr, r5
	strd	r2, [r4]
	ldrd	r2, [lr, #344]!
	add	r4, sp, #960
	str	lr, [sp, #672]
	mov	lr, r5
	strd	r2, [r4]
	ldrd	r2, [lr, #360]!
	add	r4, sp, #1112
	str	lr, [sp, #680]
	mov	lr, r5
	strd	r2, [r4]
	ldrd	r2, [lr, #368]!
	add	r4, sp, #1120
	str	lr, [sp, #608]
	mov	lr, r5
	strd	r2, [r4]
	ldrd	r2, [lr, #376]!
	add	r4, sp, #1216
	strd	r2, [r4]
	add	r1, ip, #4992
	add	r4, sp, #696
	ldrd	r8, [r1]
	ldrd	r2, [r4]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [r1, #8]
	str	lr, [sp, #688]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	lr, sp, #800
	strd	r8, [lr]
	add	r4, sp, #792
	add	r8, sp, #592
	strd	r2, [r4]
	ldrd	r2, [r8]
	ldrd	r8, [r1, #16]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #592
	strd	r2, [r9]
	add	r2, sp, #808
	ldrd	r2, [r2]
	ldrd	r10, [r1, #24]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1104
	strd	r10, [r3]
	add	r10, sp, #520
	add	fp, sp, #3632
	ldrd	r8, [r10]
	ldrd	r10, [fp]
	add	r4, sp, #528
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #3632
	strd	r8, [fp]
	ldrd	r2, [r4]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #24]
	add	r3, sp, #536
	add	r2, sp, #960
	ldrd	r10, [r3]
	add	r7, sp, #512
	ldrd	r2, [r2]
	add	r6, sp, #952
	ldrd	r8, [r7]
	ldrd	r6, [r6]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #544
	add	r3, sp, #3664
	eor	r8, r8, r6
	eor	r9, r9, r7
	ldrd	r6, [r2]
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #544
	add	r3, sp, #3664
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #64]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #544
	strd	r6, [r3]
	add	r2, sp, #1112
	add	r3, sp, #552
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1120
	add	r3, sp, #600
	strd	r6, [sp, #152]
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1216
	add	r3, sp, #648
	strd	r6, [sp, #144]
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #520
	strd	r6, [sp, #136]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #32]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #520
	strd	r6, [r3]
	ldrd	r2, [r1, #40]
	ldrd	r6, [r4]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #512
	strd	r6, [r4]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #48]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #536
	add	r3, sp, #512
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #56]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #536
	strd	r6, [r3]
	add	r7, sp, #792
	ldrd	r6, [r7]
	strd	r6, [r1]
	ldrd	r2, [lr]
	add	r7, sp, #592
	strd	r2, [r1, #8]
	ldrd	r6, [r7]
	add	r3, sp, #1104
	ldrd	r2, [r3]
	strd	r6, [r1, #16]
	ldrd	r6, [sp, #24]
	strd	r2, [r1, #24]
	ldr	lr, [sp, #656]
	ldr	r2, [sp, #672]
	ldr	r0, [sp, #664]
	ldr	r4, [sp, #688]
	strd	r6, [lr]
	strd	r10, [r2]
	ldrd	r6, [sp, #152]
	ldrd	r10, [sp, #144]
	ldrd	r2, [sp, #136]
	strd	r8, [r0]
	ldr	lr, [sp, #608]
	ldr	r8, [sp, #680]
	strd	r10, [lr]
	strd	r6, [r8]
	strd	r2, [r4]
	add	r7, sp, #520
	add	fp, sp, #512
	add	r3, sp, #536
	ldrd	r6, [r7]
	ldrd	r10, [fp]
	ldrd	r2, [r3]
	add	lr, sp, #552
	strd	r6, [r1, #32]
	strd	r10, [r1, #48]
	strd	r2, [r1, #56]
	ldrd	r10, [lr]
	ldrd	r2, [r1, #72]
	add	r9, sp, #528
	add	r7, sp, #544
	ldrd	r8, [r9]
	ldrd	r6, [r7]
	add	r4, sp, #600
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r8, [r1, #40]
	strd	r6, [r1, #64]
	ldrd	r8, [r1, #88]
	ldrd	r6, [r1, #80]
	strd	r10, [lr]
	ldrd	r2, [r4]
	add	r10, sp, #648
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	strd	r2, [r4]
	ldrd	r8, [r10]
	ldrd	r2, [lr]
	ldrd	r6, [r4]
	strd	r2, [r1, #72]
	strd	r6, [r1, #80]
	strd	r8, [r1, #88]
	add	lr, sp, #792
	add	r1, ip, #5088
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r4, sp, #800
	ldrd	r6, [r1, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r4]
	add	lr, sp, #656
	strd	r10, [lr]
	add	r10, sp, #592
	ldrd	r8, [r1, #16]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #672
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r4, sp, #664
	add	r6, sp, #1104
	strd	r2, [r4]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #24]
	add	r10, sp, #520
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #528
	add	r7, sp, #680
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #32]
	ldrd	r6, [r1, #40]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #608
	add	r7, sp, #688
	add	r10, sp, #512
	add	r6, sp, #536
	strd	r8, [fp]
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #48]
	ldrd	r6, [r1, #56]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #808
	add	r7, sp, #952
	add	r6, sp, #552
	strd	r8, [fp]
	add	r10, sp, #544
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #72]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #648
	add	r7, sp, #968
	strd	r2, [r7]
	eor	r8, r8, r10
	ldrd	r2, [r6]
	eor	r9, r9, fp
	ldrd	r6, [r1, #88]
	add	fp, sp, #960
	add	r10, sp, #600
	strd	r8, [fp]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #80]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1120
	strd	r2, [r7]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r3, sp, #672
	add	fp, sp, #1112
	strd	r8, [fp]
	ldrd	r2, [r3]
	ldrd	r8, [lr]
	ldrd	r10, [r4]
	add	r7, sp, #680
	strd	r8, [r1]
	strd	r10, [r1, #8]
	strd	r2, [r1, #16]
	ldrd	r6, [r7]
	add	r9, sp, #608
	add	fp, sp, #688
	add	r3, sp, #808
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	ldrd	r2, [r3]
	strd	r6, [r1, #24]
	add	r7, sp, #952
	strd	r8, [r1, #32]
	strd	r10, [r1, #40]
	strd	r2, [r1, #48]
	ldrd	r6, [r7]
	add	r9, sp, #960
	add	fp, sp, #968
	add	r3, sp, #1112
	ldrd	r10, [fp]
	ldrd	r8, [r9]
	ldrd	r2, [r3]
	strd	r6, [r1, #56]
	add	r7, sp, #1120
	strd	r10, [r1, #72]
	strd	r8, [r1, #64]
	strd	r2, [r1, #80]
	ldrd	r6, [r7]
	strd	r6, [r1, #88]
	add	r1, ip, #5280
	ldrd	r2, [r1]
	ldrd	r8, [lr]
	ldrd	r6, [r1, #8]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r4]
	add	r10, sp, #1216
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r4, sp, #1224
	add	lr, sp, #672
	strd	r8, [r10]
	strd	r2, [r4]
	ldrd	r10, [lr]
	strd	r2, [r1, #8]
	ldrd	r2, [r1, #16]
	add	r4, sp, #680
	ldrd	r6, [r1, #24]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r4]
	add	lr, sp, #1232
	strd	r10, [lr]
	add	r10, sp, #608
	strd	r8, [r1]
	eors	r2, r2, r6
	ldrd	r8, [r1, #32]
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #1248
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r4, sp, #1240
	add	r6, sp, #688
	strd	r2, [r4]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #40]
	add	r10, sp, #808
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #952
	add	r7, sp, #1256
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #48]
	ldrd	r6, [r1, #56]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #1128
	add	r7, sp, #1264
	add	r10, sp, #960
	add	r6, sp, #968
	strd	r8, [fp]
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r2, [r6]
	ldrd	r10, [r1, #64]
	ldrd	r6, [r1, #72]
	eor	r8, r8, r10
	eor	r9, r9, fp
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	fp, sp, #1272
	add	r7, sp, #1280
	add	r10, sp, #1112
	strd	r8, [fp]
	strd	r2, [r7]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #80]
	add	r6, sp, #1120
	ldrd	r2, [r6]
	eor	r8, r8, r10
	ldrd	r6, [r1, #88]
	eor	r9, r9, fp
	add	fp, sp, #1288
	strd	r8, [fp]
	ldrd	r8, [lr]
	ldrd	r10, [r4]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1296
	strd	r2, [r7]
	strd	r8, [r1, #16]
	strd	r10, [r1, #24]
	add	r3, sp, #1248
	add	r7, sp, #1256
	add	r9, sp, #1128
	add	fp, sp, #1264
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #32]
	strd	r6, [r1, #40]
	strd	r8, [r1, #48]
	strd	r10, [r1, #56]
	add	r3, sp, #1272
	add	r7, sp, #1280
	add	r9, sp, #1288
	add	fp, sp, #1296
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #64]
	strd	r6, [r1, #72]
	strd	r8, [r1, #80]
	strd	r10, [r1, #88]
	add	lr, sp, #1216
	add	r1, ip, #5184
	ldrd	r2, [r1]
	ldrd	r6, [lr]
	add	lr, sp, #1008
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [lr]
	add	r3, sp, #1224
	add	r7, sp, #1232
	ldrd	r8, [r1, #8]
	ldrd	r10, [r1, #16]
	ldrd	r2, [r3]
	ldrd	r6, [r7]
	eor	r8, r8, r2
	eor	r9, r9, r3
	eor	r10, r10, r6
	eor	fp, fp, r7
	ldrd	r2, [r4]
	ldrd	r6, [r1, #24]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1248
	add	r7, sp, #816
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #32]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1256
	add	r7, sp, #824
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #40]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1128
	add	r7, sp, #1160
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #832
	strd	r2, [r7]
	ldrd	r2, [lr]
	strd	r2, [r1]
	add	r3, sp, #824
	ldrd	r2, [r3]
	add	r7, sp, #816
	ldrd	r6, [r7]
	strd	r2, [r1, #32]
	add	r3, sp, #832
	ldrd	r2, [r3]
	strd	r6, [r1, #24]
	add	r7, sp, #1160
	ldrd	r6, [r7]
	strd	r2, [r1, #48]
	add	r2, sp, #1272
	strd	r6, [r1, #40]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #64]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1264
	add	r3, sp, #840
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #56]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1280
	add	r3, sp, #696
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #72]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1288
	add	r3, sp, #848
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #80]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1296
	add	r3, sp, #856
	strd	r6, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r1, #88]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #864
	strd	r8, [r1, #8]
	strd	r10, [r1, #16]
	strd	r6, [r3]
	add	r7, sp, #840
	ldrd	r6, [r7]
	strd	r6, [r1, #64]
	add	r7, sp, #848
	ldrd	r6, [r7]
	add	r3, sp, #696
	ldrd	r2, [r3]
	strd	r6, [r1, #72]
	add	r7, sp, #864
	ldrd	r6, [r7]
	strd	r2, [r1, #56]
	add	r3, sp, #856
	ldrd	r2, [r3]
	strd	r6, [r1, #88]
	add	r6, sp, #448
	add	r7, sp, #976
	strd	r2, [r1, #80]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #448
	strd	r2, [r7]
	add	r6, sp, #480
	add	r7, sp, #1480
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1480
	strd	r2, [r7]
	add	r6, sp, #440
	add	r7, sp, #1488
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1488
	strd	r2, [r7]
	add	r6, sp, #504
	add	r7, sp, #1496
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1496
	strd	r2, [r7]
	add	r6, sp, #416
	add	r7, sp, #1312
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #416
	strd	r2, [r7]
	add	r6, sp, #392
	add	r7, sp, #1320
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #392
	strd	r2, [r7]
	add	r6, sp, #400
	add	r7, sp, #1456
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #400
	strd	r2, [r7]
	add	r6, sp, #376
	add	r7, sp, #1464
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #376
	strd	r2, [r7]
	add	r6, sp, #408
	add	r7, sp, #1472
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #408
	strd	r2, [r7]
	add	r6, sp, #384
	add	r7, sp, #1688
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #976
	strd	r2, [r7]
	add	r6, sp, #424
	add	r7, sp, #1696
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1312
	strd	r2, [r7]
	add	r6, sp, #432
	add	r7, sp, #3568
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1320
	strd	r2, [r7]
	add	r7, sp, #448
	ldrd	r2, [r7]
	ldrd	r6, [lr]
	add	lr, sp, #392
	add	r4, sp, #416
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [lr]
	strd	r2, [r5, #192]
	ldrd	r2, [r4]
	eor	r6, r6, r10
	eor	r7, r7, fp
	strd	r6, [r5, #208]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r7, sp, #816
	add	r6, sp, #400
	strd	r2, [r5, #200]
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #376
	add	r7, sp, #824
	strd	r2, [r5, #216]
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1160
	add	r7, sp, #408
	strd	r2, [r5, #224]
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #976
	add	r7, sp, #832
	strd	r2, [r5, #232]
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #840
	add	r7, sp, #1320
	strd	r2, [r5, #240]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #3568
	strd	r2, [r7]
	add	r6, sp, #1312
	add	r7, sp, #696
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #848
	add	r7, sp, #1480
	strd	r2, [r5, #248]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1456
	strd	r2, [r7]
	add	r6, sp, #856
	add	r7, sp, #1488
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1464
	strd	r2, [r7]
	add	r6, sp, #864
	add	r7, sp, #1496
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	add	r1, ip, #4800
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1008
	add	r7, sp, #1472
	strd	r2, [r7]
	ldrd	r2, [r1]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #448
	strd	r2, [r7]
	ldrd	r2, [r1, #8]
	ldrd	r6, [r1, #16]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [r4]
	add	r2, sp, #816
	eor	r6, r6, r10
	eor	r7, r7, fp
	ldrd	r10, [r2]
	ldrd	r2, [r1, #24]
	add	r8, sp, #824
	strd	r6, [lr]
	eor	r10, r10, r2
	ldrd	r6, [r8]
	eor	fp, fp, r3
	ldrd	r8, [r1, #32]
	add	r3, sp, #400
	add	r2, sp, #1160
	strd	r10, [r3]
	ldrd	r2, [r2]
	ldrd	r10, [r1, #40]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #376
	strd	r6, [r9]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r7, sp, #448
	add	r3, sp, #408
	ldrd	r8, [r4]
	ldrd	r6, [r7]
	strd	r10, [r3]
	ldrd	r10, [lr]
	strd	r6, [r1]
	strd	r8, [r1, #8]
	add	r7, sp, #400
	strd	r10, [r1, #16]
	add	r9, sp, #376
	add	fp, sp, #1456
	ldrd	r6, [r7]
	ldrd	r10, [fp]
	ldrd	r8, [r9]
	add	r0, r5, #264
	strd	r6, [r1, #24]
	strd	r8, [r1, #32]
	strd	r10, [r0]
	add	r7, sp, #1464
	add	r9, sp, #1472
	add	fp, sp, #408
	ldrd	r6, [r7]
	ldrd	r10, [fp]
	ldrd	r8, [r9]
	add	r2, r5, #272
	add	r3, r5, #280
	add	lr, sp, #832
	strd	r6, [r2]
	strd	r8, [r3]
	strd	r10, [r1, #40]
	ldrd	r2, [r1, #48]
	ldrd	r10, [lr]
	add	r4, sp, #696
	ldrd	r6, [r1, #56]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r4]
	add	lr, sp, #384
	strd	r10, [lr]
	add	r10, sp, #840
	ldrd	r8, [r1, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [r10]
	add	r10, sp, #432
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r10]
	add	r4, sp, #424
	add	r6, sp, #848
	strd	r2, [r4]
	add	r10, sp, #856
	ldrd	r2, [r6]
	ldrd	r6, [r1, #72]
	ldrd	r8, [r10]
	ldrd	r10, [r1, #80]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #864
	add	r7, sp, #480
	strd	r2, [r7]
	eor	r8, r8, r10
	ldrd	r2, [r6]
	eor	r9, r9, fp
	ldrd	r6, [r1, #88]
	add	fp, sp, #440
	strd	r8, [fp]
	ldrd	r8, [lr]
	ldrd	r10, [r4]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #504
	strd	r2, [r7]
	strd	r8, [r1, #48]
	add	r3, sp, #432
	strd	r10, [r1, #56]
	add	r7, sp, #480
	add	r9, sp, #440
	add	fp, sp, #504
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	ldrd	r8, [r9]
	ldrd	r10, [fp]
	strd	r2, [r1, #64]
	strd	r6, [r1, #72]
	strd	r8, [r1, #80]
	strd	r10, [r1, #88]
	add	lr, sp, #448
	add	r1, ip, #4896
	ldrd	r2, [r1]
	ldrd	r6, [lr]
	add	lr, sp, #1160
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [lr]
	add	r7, sp, #392
	ldrd	r6, [r7]
	ldrd	r10, [r1, #16]
	add	r3, sp, #416
	ldrd	r8, [r1, #8]
	ldrd	r2, [r3]
	eor	r10, r10, r6
	add	r6, sp, #400
	eor	r8, r8, r2
	eor	r9, r9, r3
	eor	fp, fp, r7
	ldrd	r2, [r6]
	ldrd	r6, [r1, #24]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #376
	add	r7, sp, #816
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #32]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #408
	add	r7, sp, #824
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #40]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #384
	add	r7, sp, #832
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #696
	strd	r2, [r7]
	ldrd	r6, [r1, #56]
	ldrd	r2, [r4]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #432
	add	r7, sp, #840
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #64]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #480
	add	r7, sp, #848
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #72]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #440
	add	r7, sp, #856
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r1, #80]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #864
	strd	r2, [r7]
	ldrd	r2, [lr]
	add	r7, sp, #816
	strd	r2, [r1]
	add	r3, sp, #824
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	strd	r6, [r1, #24]
	strd	r2, [r1, #32]
	add	r7, sp, #832
	add	r3, sp, #696
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	strd	r6, [r1, #40]
	strd	r2, [r1, #48]
	add	r7, sp, #840
	add	r3, sp, #848
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	strd	r6, [r1, #56]
	strd	r2, [r1, #64]
	add	r7, sp, #856
	add	r3, sp, #864
	ldrd	r6, [r7]
	ldrd	r2, [r3]
	add	lr, sp, #504
	strd	r6, [r1, #72]
	strd	r2, [r1, #80]
	ldrd	r6, [lr]
	ldrd	r2, [r1, #88]
	add	lr, sp, #976
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r0, sp, #1144
	strd	r8, [r1, #8]
	strd	r10, [r1, #16]
	strd	r6, [lr]
	strd	r6, [r1, #88]
	ldrd	r0, [r0]
	ldrd	r6, [sp, #248]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1008
	strd	r6, [r1]
	add	r0, sp, #1152
	add	r1, sp, #272
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #280
	add	r1, sp, #992
	strd	r6, [sp, #248]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #272
	strd	r6, [r1]
	add	r0, sp, #296
	add	r1, sp, #1000
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #280
	strd	r6, [r1]
	add	r0, sp, #312
	add	r1, sp, #1408
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #296
	strd	r6, [r1]
	add	r0, sp, #320
	add	r1, sp, #1416
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #312
	strd	r6, [r1]
	add	r0, sp, #328
	add	r1, sp, #1424
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #320
	strd	r6, [r1]
	add	r0, sp, #304
	add	r1, sp, #1432
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #328
	strd	r6, [r1]
	add	r0, sp, #344
	add	r1, sp, #1440
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #304
	strd	r6, [r1]
	add	r0, sp, #368
	add	r1, sp, #1448
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #344
	strd	r6, [r1]
	add	r0, sp, #352
	add	r1, sp, #1672
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #368
	strd	r6, [r1]
	add	r0, sp, #560
	add	r1, sp, #1680
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #352
	strd	r6, [r1]
	add	r0, sp, #1008
	add	r1, sp, #464
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #464
	strd	r6, [r1]
	add	r1, sp, #488
	ldrd	r6, [r1]
	ldrd	r0, [sp, #248]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #584
	add	r1, sp, #272
	strd	r6, [sp, #248]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #272
	strd	r6, [r1]
	add	r0, sp, #768
	add	r1, sp, #280
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #280
	strd	r6, [r1]
	add	r0, sp, #776
	add	r1, sp, #296
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #296
	strd	r6, [r1]
	add	r0, sp, #640
	add	r1, sp, #312
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #312
	strd	r6, [r1]
	add	r0, sp, #928
	add	r1, sp, #320
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #320
	strd	r6, [r1]
	add	r0, sp, #936
	add	r1, sp, #328
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #328
	strd	r6, [r1]
	add	r0, sp, #1040
	add	r1, sp, #304
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #304
	strd	r6, [r1]
	add	r0, sp, #1048
	add	r1, sp, #344
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #344
	strd	r6, [r1]
	add	r0, sp, #1168
	add	r1, sp, #368
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #368
	strd	r6, [r1]
	add	r0, sp, #1056
	add	r1, sp, #352
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #352
	strd	r6, [r1]
	add	r0, sp, #464
	add	r1, sp, #656
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #464
	strd	r6, [r1]
	add	r1, sp, #664
	ldrd	r6, [r1]
	ldrd	r0, [sp, #248]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #672
	add	r1, sp, #272
	strd	r6, [sp, #248]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #272
	strd	r6, [r1]
	add	r0, sp, #680
	add	r1, sp, #280
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #280
	strd	r6, [r1]
	add	r0, sp, #608
	add	r1, sp, #296
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #296
	strd	r6, [r1]
	add	r0, sp, #688
	add	r1, sp, #312
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #312
	strd	r6, [r1]
	add	r0, sp, #808
	add	r1, sp, #320
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #320
	strd	r6, [r1]
	add	r0, sp, #952
	add	r1, sp, #328
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #328
	strd	r6, [r1]
	add	r0, sp, #960
	add	r1, sp, #304
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #304
	strd	r6, [r1]
	add	r0, sp, #968
	add	r1, sp, #344
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #344
	strd	r6, [r1]
	add	r0, sp, #1112
	add	r1, sp, #368
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #368
	strd	r6, [r1]
	add	r0, sp, #1120
	add	r1, sp, #352
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #352
	strd	r6, [r1]
	add	r0, sp, #464
	add	r1, sp, #1160
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	add	r2, sp, #272
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r5, #96]
	ldrd	r0, [r2]
	ldrd	r6, [sp, #248]
	eor	r0, r0, r10
	eor	r6, r6, r8
	eor	r7, r7, r9
	eor	r1, r1, fp
	strd	r6, [r5, #104]
	strd	r0, [r5, #112]
	add	r1, sp, #816
	add	r0, sp, #280
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #296
	add	r1, sp, #824
	strd	r6, [r5, #120]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #312
	add	r1, sp, #832
	strd	r6, [r5, #128]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #320
	add	r1, sp, #696
	strd	r6, [r5, #136]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #328
	add	r1, sp, #840
	strd	r6, [r5, #144]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #304
	add	r1, sp, #848
	strd	r6, [r5, #152]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #344
	add	r1, sp, #856
	strd	r6, [r5, #160]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #368
	add	r1, sp, #864
	strd	r6, [r5, #168]
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #352
	ldrd	r0, [r0]
	strd	r6, [r5, #176]
	ldrd	r6, [lr]
	add	r3, ip, #4704
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #1160
	strd	r6, [r5, #184]
	ldrd	r6, [r0]
	ldrd	r0, [r3]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #344
	strd	r6, [r1]
	ldrd	r0, [r3, #16]
	ldrd	r6, [r3, #8]
	eor	r10, r10, r0
	add	r0, sp, #816
	eor	r8, r8, r6
	eor	r9, r9, r7
	eor	fp, fp, r1
	ldrd	r6, [r0]
	ldrd	r0, [r3, #24]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #352
	strd	r6, [r1]
	add	r1, sp, #824
	ldrd	r6, [r1]
	ldrd	r0, [r3, #32]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #832
	strd	r6, [sp, #248]
	ldrd	r6, [r0]
	ldrd	r0, [r3, #40]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #696
	strd	r6, [r2]
	ldrd	r6, [r0]
	ldrd	r0, [r3, #48]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #840
	add	r1, sp, #280
	strd	r6, [r1]
	ldrd	r6, [r0]
	ldrd	r0, [r3, #56]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #848
	add	r1, sp, #296
	strd	r6, [r1]
	ldrd	r6, [r0]
	ldrd	r0, [r3, #64]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #856
	add	r1, sp, #312
	strd	r6, [r1]
	ldrd	r6, [r0]
	ldrd	r0, [r3, #72]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #320
	strd	r6, [r1]
	add	r7, sp, #344
	ldrd	r6, [r7]
	add	r1, sp, #352
	strd	r6, [r3]
	ldrd	r0, [r1]
	ldrd	r6, [sp, #248]
	strd	r0, [r3, #24]
	strd	r6, [r3, #32]
	ldrd	r0, [r2]
	add	r7, sp, #280
	ldrd	r6, [r7]
	strd	r0, [r3, #40]
	add	r1, sp, #296
	strd	r6, [r3, #48]
	ldrd	r0, [r1]
	add	r7, sp, #312
	ldrd	r6, [r7]
	strd	r0, [r3, #56]
	add	r1, sp, #320
	strd	r8, [r3, #8]
	strd	r10, [r3, #16]
	strd	r6, [r3, #64]
	ldrd	r0, [r1]
	strd	r0, [r3, #72]
	add	r0, sp, #1632
	ldrd	r0, [r0]
	ldrd	r6, [sp, #176]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #328
	strd	r6, [r1]
	add	r1, sp, #1640
	ldrd	r0, [r1]
	ldrd	r6, [sp, #208]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1648
	ldrd	r0, [r1]
	strd	r6, [sp, #208]
	ldrd	r6, [sp, #216]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1656
	ldrd	r0, [r1]
	strd	r6, [sp, #216]
	ldrd	r6, [sp, #224]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1664
	ldrd	r0, [r1]
	strd	r6, [sp, #224]
	ldrd	r6, [sp, #232]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1136
	ldrd	r0, [r1]
	strd	r6, [sp, #232]
	ldrd	r6, [sp, #240]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	add	r1, sp, #872
	strd	r6, [sp, #240]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #256
	strd	r6, [r1]
	add	r0, sp, #288
	add	r1, sp, #880
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #288
	strd	r6, [r1]
	add	r0, sp, #336
	add	r1, sp, #888
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #336
	strd	r6, [r1]
	add	r0, sp, #360
	add	r1, sp, #896
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #360
	strd	r6, [r1]
	add	r0, sp, #264
	add	r1, sp, #984
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #1304
	add	r1, sp, #264
	strd	r6, [r1]
	ldrd	r0, [r0]
	ldrd	r6, [sp, #168]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #304
	strd	r6, [r1]
	add	r1, sp, #864
	ldrd	r6, [r1]
	ldrd	r0, [r3, #80]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [sp, #168]
	ldrd	r0, [r3, #88]
	ldrd	r6, [lr]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #704
	add	r1, sp, #328
	strd	r6, [sp, #176]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #328
	strd	r6, [r1]
	add	r1, sp, #712
	ldrd	r6, [r1]
	ldrd	r0, [sp, #208]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #912
	strd	r6, [sp, #208]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #216]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #920
	strd	r6, [sp, #216]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #224]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #720
	strd	r6, [sp, #224]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #232]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #728
	strd	r6, [sp, #232]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #240]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #736
	add	r1, sp, #256
	strd	r6, [sp, #240]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #256
	strd	r6, [r1]
	add	r0, sp, #744
	add	r1, sp, #288
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #288
	strd	r6, [r1]
	add	r0, sp, #752
	add	r1, sp, #336
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #336
	strd	r6, [r1]
	add	r0, sp, #456
	add	r1, sp, #360
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #360
	strd	r6, [r1]
	add	r0, sp, #472
	add	r1, sp, #264
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #264
	strd	r6, [r1]
	add	r0, sp, #496
	add	r1, sp, #304
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #304
	strd	r6, [r1]
	ldrd	r6, [sp, #168]
	ldrd	r0, [sp, #176]
	strd	r6, [r3, #80]
	add	r7, sp, #1016
	add	r6, sp, #328
	strd	r0, [r3, #88]
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	ldrd	r0, [sp, #192]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [sp, #208]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #192]
	ldrd	r6, [sp, #216]
	ldrd	r0, [sp, #184]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #184]
	ldrd	r6, [sp, #224]
	ldrd	r0, [sp, #200]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #1024
	strd	r0, [sp, #200]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #232]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #1032
	strd	r0, [sp, #208]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #240]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #256
	add	r7, sp, #616
	strd	r0, [sp, #216]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #288
	add	r7, sp, #760
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #336
	add	r7, sp, #568
	strd	r0, [sp, #232]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #576
	add	r7, sp, #360
	strd	r0, [sp, #240]
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #256
	strd	r0, [r7]
	add	r6, sp, #624
	add	r7, sp, #264
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #288
	strd	r0, [r7]
	add	r6, sp, #632
	add	r7, sp, #304
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #336
	strd	r0, [r7]
	add	r1, sp, #1176
	ldrd	r0, [r1]
	eors	r3, r3, r1
	add	r1, sp, #1184
	ldrd	r6, [r1]
	eors	r2, r2, r0
	ldrd	r0, [sp, #192]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1192
	strd	r6, [sp, #192]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #184]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1200
	strd	r6, [sp, #184]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #200]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1208
	strd	r6, [sp, #200]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #208]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1064
	strd	r6, [sp, #208]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #216]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1072
	strd	r6, [sp, #216]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #224]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1080
	strd	r6, [sp, #224]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #232]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1088
	strd	r6, [sp, #232]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #240]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #1096
	add	r1, sp, #256
	strd	r6, [sp, #240]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #256
	strd	r6, [r1]
	add	r0, sp, #784
	add	r1, sp, #288
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #288
	strd	r6, [r1]
	add	r0, sp, #944
	add	r1, sp, #336
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #336
	strd	r6, [r1]
	add	r7, sp, #792
	ldrd	r6, [r7]
	eors	r3, r3, r7
	add	r7, sp, #800
	ldrd	r0, [r7]
	eors	r2, r2, r6
	ldrd	r6, [sp, #192]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #592
	strd	r0, [sp, #192]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #184]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #1104
	strd	r0, [sp, #184]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #200]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #544
	strd	r0, [sp, #200]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #240]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #520
	strd	r0, [sp, #240]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #208]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #528
	strd	r0, [sp, #208]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #216]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #512
	strd	r0, [sp, #216]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #224]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #536
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #232]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #552
	add	r7, sp, #256
	strd	r0, [sp, #232]
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #256
	strd	r0, [r7]
	add	r6, sp, #600
	add	r7, sp, #288
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #288
	strd	r0, [r7]
	add	r6, sp, #648
	add	r7, sp, #336
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #336
	strd	r0, [r7]
	add	r1, sp, #1216
	ldrd	r0, [r1]
	eors	r3, r3, r1
	add	r1, sp, #1224
	ldrd	r6, [r1]
	eors	r2, r2, r0
	ldrd	r0, [sp, #192]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1232
	strd	r6, [sp, #192]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #184]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1240
	strd	r6, [sp, #184]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #200]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1248
	strd	r6, [sp, #200]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #208]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1256
	strd	r6, [sp, #208]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #216]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1128
	strd	r6, [sp, #216]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #224]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1264
	strd	r6, [sp, #224]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #232]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1272
	strd	r6, [sp, #232]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #240]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #1280
	add	r1, sp, #256
	strd	r6, [sp, #240]
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #256
	strd	r6, [r1]
	add	r0, sp, #1288
	add	r1, sp, #288
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #288
	strd	r6, [r1]
	add	r0, sp, #1296
	add	r1, sp, #336
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #336
	strd	r6, [r1]
	add	r7, sp, #448
	ldrd	r6, [r7]
	eors	r3, r3, r7
	add	r7, sp, #416
	ldrd	r0, [r7]
	eors	r2, r2, r6
	ldrd	r6, [sp, #192]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #392
	strd	r0, [sp, #192]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #184]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #400
	strd	r0, [sp, #184]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #200]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #376
	strd	r0, [sp, #200]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #208]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #408
	strd	r0, [sp, #208]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #216]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #384
	strd	r0, [sp, #216]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #224]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #424
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #232]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #432
	strd	r0, [sp, #232]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #240]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #480
	add	r7, sp, #256
	strd	r0, [sp, #240]
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #256
	strd	r0, [r7]
	add	r6, sp, #440
	add	r7, sp, #288
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #288
	strd	r0, [r7]
	add	r6, sp, #504
	add	r7, sp, #336
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #344
	add	r7, sp, #336
	strd	r0, [r7]
	ldrd	r0, [r6]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	ldrd	r0, [sp, #192]
	eor	r0, r0, r8
	eor	r1, r1, r9
	strd	r0, [r5, #8]
	add	r1, sp, #352
	ldrd	r0, [r1]
	ldrd	r2, [sp, #184]
	ldrd	r6, [sp, #200]
	eor	r2, r2, r10
	eor	r3, r3, fp
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r2, [r5, #16]
	strd	r6, [r5, #24]
	ldrd	r2, [sp, #248]
	ldrd	r6, [sp, #208]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5, #32]
	add	r3, sp, #272
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5, #40]
	add	r1, sp, #280
	ldrd	r6, [r1]
	ldrd	r0, [sp, #224]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r5, #48]
	add	r7, sp, #296
	ldrd	r2, [r7]
	ldrd	r6, [sp, #232]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5, #56]
	add	r3, sp, #312
	ldrd	r0, [r3]
	ldrd	r2, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5, #64]
	add	r1, sp, #320
	add	r0, sp, #256
	ldrd	r6, [r1]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r5, #72]
	add	r7, sp, #288
	ldrd	r6, [r7]
	ldrd	r2, [sp, #168]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5, #80]
	add	r3, sp, #336
	ldrd	r2, [r3]
	ldrd	r0, [sp, #176]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r4, ip, #4608
	strd	r0, [r5, #88]
	add	r1, sp, #344
	ldrd	r2, [r4, #8]
	ldrd	r6, [r1]
	ldrd	r0, [r4]
	eor	r9, r9, r3
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r3, sp, #352
	ldrd	r0, [r3]
	strd	r6, [r4]
	eor	r8, r8, r2
	ldrd	r6, [r4, #16]
	ldrd	r2, [r4, #24]
	eor	r10, r10, r6
	eor	fp, fp, r7
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r6, [sp, #248]
	ldrd	r2, [r4, #32]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #272
	strd	r6, [r4, #32]
	ldrd	r6, [r3]
	ldrd	r2, [r4, #40]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #280
	strd	r6, [r4, #40]
	ldrd	r6, [r3]
	ldrd	r2, [r4, #48]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #296
	strd	r6, [r4, #48]
	ldrd	r6, [r3]
	ldrd	r2, [r4, #56]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r4, #56]
	add	r7, sp, #312
	ldrd	r2, [r7]
	ldrd	r6, [r4, #64]
	strd	r8, [r4, #8]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r9, sp, #320
	strd	r10, [r4, #16]
	strd	r0, [r4, #24]
	strd	r2, [r4, #64]
	ldrd	r6, [r4, #72]
	ldrd	r8, [r9]
	ldrd	r0, [r4, #80]
	ldrd	r2, [r4, #88]
	ldrd	r10, [sp, #168]
	eor	r6, r6, r8
	eor	r7, r7, r9
	ldrd	r8, [sp, #176]
	eor	r0, r0, r10
	eor	r2, r2, r8
	eor	r3, r3, r9
	eor	r1, r1, fp
	strd	r6, [r4, #72]
	strd	r0, [r4, #80]
	strd	r2, [r4, #88]
	mov	r1, r4
	add	r0, sp, #3792
	bl	vec_copy
	ldr	ip, [sp, #36]
	add	r6, ip, #1536
	ldrd	r0, [r4]
	ldrd	r2, [r6]
	eor	r8, r0, r2
	eor	r9, r1, r3
	strd	r8, [r6]
	add	r6, ip, #1544
	ldrd	r0, [r4, #8]
	ldrd	r2, [r6]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1552
	ldrd	r0, [r4, #16]
	ldrd	r2, [r6]
	strd	r10, [sp, #184]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1560
	ldrd	r0, [r4, #24]
	ldrd	r2, [r6]
	strd	r10, [sp, #200]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1568
	ldrd	r0, [r4, #32]
	ldrd	r2, [r6]
	strd	r10, [sp, #208]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1576
	ldrd	r0, [r4, #40]
	ldrd	r2, [r6]
	strd	r10, [sp, #216]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1584
	ldrd	r0, [r4, #48]
	ldrd	r2, [r6]
	strd	r10, [sp, #224]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1592
	ldrd	r0, [r4, #56]
	ldrd	r2, [r6]
	strd	r10, [sp, #232]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1600
	ldrd	r0, [r4, #64]
	ldrd	r2, [r6]
	strd	r10, [sp, #240]
	add	lr, sp, #256
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [lr]
	strd	r10, [r6]
	add	r6, ip, #1608
	ldrd	r2, [r6]
	ldrd	r0, [r4, #72]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1616
	ldrd	r2, [r6]
	ldrd	r0, [r4, #80]
	add	lr, sp, #288
	strd	r10, [lr]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r6, ip, #1624
	ldrd	r0, [r4, #88]
	ldrd	r2, [r6]
	add	lr, sp, #336
	strd	r10, [lr]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r6]
	add	r4, ip, #1632
	ldrd	r6, [r4]
	addw	r1, sp, #2424
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r4]
	strd	r8, [r1]
	add	r1, ip, #1640
	ldrd	r2, [r1]
	ldrd	r8, [sp, #184]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	lr, sp, #360
	strd	r10, [lr]
	add	r1, ip, #1648
	add	r10, sp, #264
	ldrd	r2, [r1]
	strd	r8, [r10]
	ldrd	r8, [sp, #200]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r1, ip, #1656
	ldrd	r2, [r1]
	ldrd	r10, [sp, #208]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r1, ip, #1664
	ldrd	r2, [r1]
	strd	r8, [sp, #248]
	ldrd	r8, [sp, #216]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	lr, sp, #272
	strd	r10, [lr]
	add	r1, ip, #1672
	add	r10, sp, #280
	ldrd	r2, [r1]
	strd	r8, [r10]
	ldrd	r8, [sp, #224]
	add	r10, sp, #296
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r1, ip, #1680
	ldrd	r2, [r1]
	ldrd	r8, [sp, #232]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #312
	add	r1, ip, #1688
	strd	r8, [r10]
	ldrd	r2, [r1]
	ldrd	r8, [sp, #240]
	add	r10, sp, #320
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1696
	add	r10, sp, #256
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #328
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1704
	add	r10, sp, #288
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #304
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #1712
	add	r10, sp, #336
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #344
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	ldrd	r10, [r5, #16]
	add	lr, sp, #2592
	strd	r10, [lr]
	ldrd	r10, [r5, #32]
	ldrd	r2, [r5, #8]
	add	lr, sp, #2608
	strd	r10, [lr]
	addw	r8, sp, #2584
	add	fp, sp, #344
	strd	r2, [r8]
	ldrd	r10, [fp]
	ldrd	r2, [r5, #24]
	addw	r8, sp, #2600
	strd	r10, [r0]
	strd	r2, [r8]
	ldrd	r2, [r5]
	add	r1, ip, #1720
	add	r8, sp, #2576
	add	r10, sp, #360
	strd	r2, [r8]
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #368
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r3, ip, #1824
	ldrd	r0, [r3]
	add	lr, sp, #2432
	strd	r6, [lr]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	add	r1, ip, #1832
	add	r10, sp, #264
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #352
	add	r1, ip, #1840
	strd	r8, [r10]
	ldrd	r2, [r1]
	ldrd	r8, [sp, #248]
	add	r10, sp, #560
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1848
	add	r10, sp, #272
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #704
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1856
	add	r10, sp, #280
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #712
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1864
	add	r10, sp, #296
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #912
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1872
	add	r10, sp, #312
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #920
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1880
	add	r10, sp, #320
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #720
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1888
	add	r10, sp, #328
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #728
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r0, ip, #1896
	add	r10, sp, #304
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #736
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #1904
	add	r10, sp, #344
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #744
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1912
	add	r10, sp, #368
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #1728
	ldrd	r0, [r3]
	addw	lr, sp, #2440
	strd	r6, [lr]
	add	r10, sp, #752
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	add	r1, ip, #1736
	add	r10, sp, #352
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #560
	add	r1, ip, #1744
	ldrd	r2, [r1]
	strd	r8, [sp, #192]
	ldrd	r8, [r10]
	add	r10, sp, #456
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1752
	add	r10, sp, #704
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #472
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1760
	add	r10, sp, #712
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #496
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1768
	add	r10, sp, #912
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #448
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #920
	add	r1, ip, #1776
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #416
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #720
	add	r1, ip, #1784
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #392
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #728
	add	r1, ip, #1792
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #400
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #736
	add	r1, ip, #1800
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #376
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #744
	add	r1, ip, #1808
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #408
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #752
	add	r1, ip, #1816
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r4, sp, #3312
	eor	r8, r8, r2
	eor	r9, r9, r3
	mov	fp, r4
	add	r10, sp, #384
	strd	r8, [r10]
	strd	r8, [r1]
	ldrd	r8, [fp, #264]!
	add	r10, sp, #2400
	str	fp, [sp, #424]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #272]!
	add	r3, ip, #2112
	ldrd	r0, [r3]
	addw	r10, sp, #2408
	str	fp, [sp, #432]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #280]!
	add	lr, sp, #1824
	strd	r6, [lr]
	add	r10, sp, #2416
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r8, [r10]
	strd	r6, [r3]
	addw	r1, ip, #2120
	ldrd	r2, [r1]
	ldrd	r8, [sp, #192]
	add	r10, sp, #440
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #456
	add	r1, ip, #2128
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #504
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #472
	addw	r1, ip, #2136
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1016
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #496
	add	r1, ip, #2144
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1024
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #448
	addw	r1, ip, #2152
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1032
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #416
	add	r1, ip, #2160
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #616
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #392
	addw	r1, ip, #2168
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #760
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #400
	add	r1, ip, #2176
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #568
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	str	fp, [sp, #480]
	add	r10, sp, #376
	strd	r8, [r1]
	addw	r1, ip, #2184
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #576
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2192
	add	r10, sp, #408
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #624
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2200
	add	r10, sp, #384
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2208
	ldrd	r0, [r3]
	add	lr, sp, #2448
	strd	r6, [lr]
	add	r10, sp, #632
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2216
	add	r10, sp, #440
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #464
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2224
	add	r10, sp, #504
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #488
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2232
	add	r10, sp, #1016
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #584
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2240
	add	r10, sp, #1024
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #768
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r0, ip, #2248
	add	r10, sp, #1032
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #776
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r0]
	add	r1, ip, #2256
	add	r10, sp, #616
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #640
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2264
	add	r10, sp, #760
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #928
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2272
	add	r10, sp, #568
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #936
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2280
	add	r10, sp, #576
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1040
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2288
	add	r10, sp, #624
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1048
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2296
	add	r10, sp, #632
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2016
	ldrd	r0, [r3]
	addw	lr, sp, #2456
	strd	r6, [lr]
	add	r10, sp, #1168
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	add	r1, ip, #2024
	add	r10, sp, #464
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1056
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2032
	add	r10, sp, #488
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1176
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #584
	add	r1, ip, #2040
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1184
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2048
	add	r10, sp, #768
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1192
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2056
	add	r10, sp, #776
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1200
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2064
	add	r10, sp, #640
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1208
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2072
	add	r10, sp, #928
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1064
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2080
	add	r10, sp, #936
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1072
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2088
	add	r10, sp, #1040
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1080
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #2096
	add	r10, sp, #1048
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1088
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	addw	r1, ip, #2104
	add	r10, sp, #1168
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1096
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r3, ip, #1920
	ldrd	r0, [r3]
	add	lr, sp, #2464
	strd	r6, [lr]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	add	r1, ip, #1928
	add	r10, sp, #1056
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #1176
	add	r1, ip, #1936
	ldrd	r2, [r1]
	strd	r8, [sp, #176]
	ldrd	r8, [r10]
	add	r10, sp, #784
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1944
	add	r10, sp, #1184
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #944
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1952
	add	r10, sp, #1192
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #592
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1960
	add	r10, sp, #1200
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #520
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1968
	add	r10, sp, #1208
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #528
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1976
	add	r10, sp, #1064
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #512
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1984
	add	r10, sp, #1072
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #536
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1080
	add	r1, ip, #1992
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #544
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1088
	add	r1, ip, #2000
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	add	r10, sp, #552
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1096
	add	r1, ip, #2008
	ldrd	r8, [r10]
	ldrd	r2, [r1]
	mov	fp, r4
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r10, sp, #600
	strd	r8, [r10]
	strd	r8, [r1]
	ldrd	r8, [fp, #296]!
	add	r10, sp, #1160
	str	fp, [sp, #648]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #304]!
	add	r10, sp, #1576
	str	fp, [sp, #656]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #312]!
	add	r10, sp, #1584
	str	fp, [sp, #664]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #328]!
	add	r10, sp, #1592
	str	fp, [sp, #672]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #336]!
	add	r10, sp, #1600
	str	fp, [sp, #680]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #344]!
	add	r10, sp, #1608
	str	fp, [sp, #608]
	mov	fp, r4
	strd	r8, [r10]
	ldrd	r8, [fp, #360]!
	add	r3, ip, #2688
	add	lr, sp, #1008
	add	r10, sp, #1624
	ldrd	r0, [r3]
	strd	r6, [lr]
	strd	r8, [r10]
	str	fp, [sp, #688]
	mov	fp, r4
	ldrd	r8, [fp, #368]!
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r10, sp, #1840
	str	fp, [sp, #792]
	mov	fp, r4
	strd	r8, [r10]
	strd	r6, [r3]
	ldrd	r8, [fp, #376]!
	addw	r1, ip, #2696
	addw	r10, sp, #2616
	strd	r8, [r10]
	ldrd	r2, [r1]
	ldrd	r8, [sp, #176]
	add	r10, sp, #1104
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2704
	add	r10, sp, #784
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #808
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2712
	add	r10, sp, #944
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #952
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2720
	add	r10, sp, #592
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #960
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2728
	add	r10, sp, #520
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #968
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2736
	add	r10, sp, #528
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1112
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2744
	add	r10, sp, #512
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1120
	eor	r8, r8, r2
	eor	r9, r9, r3
	str	fp, [sp, #800]
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #536
	add	r1, ip, #2752
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1216
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2760
	add	r10, sp, #544
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1224
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2768
	add	r10, sp, #552
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1232
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2776
	add	r10, sp, #600
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2784
	ldrd	r0, [r3]
	addw	lr, sp, #2472
	strd	r6, [lr]
	add	r10, sp, #1240
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2792
	add	r10, sp, #1104
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1248
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2800
	add	r10, sp, #808
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1256
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2808
	add	r10, sp, #952
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1128
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2816
	add	r10, sp, #960
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1264
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	addw	r0, ip, #2824
	add	r10, sp, #968
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1272
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #2832
	add	r10, sp, #1112
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1280
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2840
	add	r10, sp, #1120
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1288
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2848
	add	r10, sp, #1216
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1296
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2856
	add	r10, sp, #1224
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #816
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2864
	add	r10, sp, #1232
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #824
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2872
	add	r10, sp, #1240
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2976
	ldrd	r0, [r3]
	add	lr, sp, #2480
	strd	r6, [lr]
	add	r10, sp, #832
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2984
	add	r10, sp, #1248
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #696
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1256
	add	r1, ip, #2992
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #840
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #3000
	add	r10, sp, #1128
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #848
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #3008
	add	r10, sp, #1264
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #856
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #3016
	add	r10, sp, #1272
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #864
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #3024
	add	r10, sp, #1280
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #976
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #3032
	add	r10, sp, #1288
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1632
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #3040
	add	r10, sp, #1296
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1640
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #3048
	add	r10, sp, #816
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1648
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #3056
	add	r10, sp, #824
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1656
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r0]
	addw	r1, ip, #3064
	add	r10, sp, #832
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2880
	ldrd	r0, [r3]
	addw	lr, sp, #2488
	strd	r6, [lr]
	add	r10, sp, #1664
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2888
	add	r10, sp, #696
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1136
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2896
	add	r10, sp, #840
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #872
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2904
	add	r10, sp, #848
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #880
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2912
	add	r10, sp, #856
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #888
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2920
	add	r10, sp, #864
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #896
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2928
	add	r10, sp, #976
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #984
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2936
	add	r10, sp, #1632
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1304
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1640
	add	r1, ip, #2944
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1144
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2952
	add	r10, sp, #1648
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1152
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2960
	add	r10, sp, #1656
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #992
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2968
	add	r10, sp, #1664
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2496
	ldrd	r0, [r3]
	add	lr, sp, #1832
	strd	r6, [lr]
	add	r10, sp, #1000
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2504
	add	r10, sp, #1136
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1408
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2512
	add	r10, sp, #872
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1416
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r0, ip, #2520
	add	r10, sp, #880
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1424
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #2528
	add	r10, sp, #888
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1432
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #896
	addw	r1, ip, #2536
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1440
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2544
	add	r10, sp, #984
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1448
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2552
	add	r10, sp, #1304
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1672
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2560
	add	r10, sp, #1144
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1680
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2568
	add	r10, sp, #1152
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1312
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2576
	add	r10, sp, #992
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1320
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2584
	add	r10, sp, #1000
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2592
	ldrd	r0, [r3]
	add	lr, sp, #2496
	strd	r6, [lr]
	add	r10, sp, #1456
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2600
	add	r10, sp, #1408
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1464
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1416
	add	r1, ip, #2608
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1472
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2616
	add	r10, sp, #1424
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1688
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2624
	add	r10, sp, #1432
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1696
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2632
	add	r10, sp, #1440
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1704
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2640
	add	r10, sp, #1448
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1480
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2648
	add	r10, sp, #1672
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1488
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #2656
	add	r10, sp, #1680
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1496
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	addw	r1, ip, #2664
	add	r10, sp, #1312
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1712
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2672
	add	r10, sp, #1320
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1720
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1456
	addw	r1, ip, #2680
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2400
	ldrd	r0, [r3]
	addw	lr, sp, #2504
	strd	r6, [lr]
	add	r10, sp, #1728
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	addw	r1, ip, #2408
	add	r10, sp, #1464
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1736
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2416
	add	r10, sp, #1472
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1744
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2424
	add	r10, sp, #1688
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1752
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2432
	add	r10, sp, #1696
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1848
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2440
	add	r10, sp, #1704
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1856
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2448
	add	r10, sp, #1480
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1864
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2456
	add	r10, sp, #1488
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1872
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1496
	add	r1, ip, #2464
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1880
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2472
	add	r10, sp, #1712
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1888
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #2480
	add	r10, sp, #1720
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1896
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	addw	r1, ip, #2488
	add	r10, sp, #1728
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #2304
	ldrd	r0, [r3]
	add	lr, sp, #2512
	strd	r6, [lr]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	add	r10, sp, #1904
	strd	r8, [r10]
	addw	r0, ip, #2312
	add	r8, sp, #1736
	ldrd	r2, [r0]
	strd	r6, [sp, #168]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r0]
	add	r1, ip, #2320
	add	lr, sp, #1744
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #1360
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	addw	r1, ip, #2328
	add	r8, sp, #1752
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #1504
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	add	r1, ip, #2336
	add	lr, sp, #1848
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #1512
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	lr, sp, #1520
	strd	r6, [r8]
	strd	r10, [lr]
	strd	r10, [r1]
	add	r8, sp, #1856
	addw	r1, ip, #2344
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #1864
	add	r1, ip, #2352
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #1528
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	addw	r1, ip, #2360
	add	r8, sp, #1872
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #1536
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	add	r1, ip, #2368
	add	lr, sp, #1880
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	add	r8, sp, #1544
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	addw	r1, ip, #2376
	add	r8, sp, #1888
	ldrd	r2, [r1]
	ldrd	r6, [r8]
	add	lr, sp, #1328
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	add	r1, ip, #2384
	add	lr, sp, #1896
	ldrd	r2, [r1]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	addw	r1, ip, #2392
	ldrd	r2, [r1]
	mov	r9, r4
	strd	r2, [sp, #128]
	ldrd	r2, [r9, #432]!
	add	r8, sp, #1336
	strd	r6, [r8]
	str	r1, [sp, #1616]
	mov	r6, r4
	add	r1, sp, #1376
	strd	r2, [r1]
	ldrd	r2, [r6, #424]!
	mov	r5, r4
	add	r1, sp, #1368
	strd	r2, [r1]
	ldrd	r2, [r5, #408]!
	mov	r7, r4
	mov	r0, r4
	add	lr, sp, #1344
	add	r1, sp, #1560
	strd	r10, [lr]
	ldrd	r10, [r7, #392]!
	strd	r2, [r1]
	ldrd	r2, [r0, #400]!
	add	r1, sp, #1768
	strd	r2, [r1]
	add	r1, sp, #1360
	ldrd	r2, [r1]
	add	r8, sp, #3696
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r7]
	ldrd	r10, [r8]
	ldrd	r2, [sp, #168]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	r10, sp, #1904
	strd	r2, [r8]
	ldrd	r2, [r10]
	ldrd	r10, [sp, #128]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #1352
	strd	r2, [fp]
	add	r10, sp, #1376
	add	fp, sp, #1536
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	r10, sp, #1368
	add	fp, sp, #1528
	strd	r2, [r9]
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	add	lr, sp, #3728
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #1520
	strd	r2, [r6]
	ldrd	r2, [fp]
	ldrd	r10, [lr]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	r10, sp, #1560
	add	fp, sp, #1512
	strd	r2, [lr]
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	r10, sp, #1768
	add	fp, sp, #1504
	strd	r2, [r5]
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	eor	r2, r2, r10
	add	r10, sp, #1352
	eor	r3, r3, fp
	ldrd	r10, [r10]
	ldr	r7, [sp, #1616]
	strd	r10, [r7]
	mov	r1, ip
	strd	r2, [r0]
	ldrd	r8, [sp, #168]
	ldrd	r2, [r1, #768]!
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #1360
	mov	r1, ip
	ldrd	r2, [r1, #776]!
	ldrd	r6, [r10]
	add	r10, sp, #1616
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r10]
	strd	r6, [r1]
	add	r10, sp, #1504
	mov	r1, ip
	ldrd	r2, [r1, #784]!
	ldrd	r6, [r10]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1512
	ldrd	r2, [r1, #792]!
	ldrd	r6, [r10]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1520
	ldrd	r2, [r1, #800]!
	ldrd	r6, [r10]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1528
	ldrd	r2, [r1, #808]!
	ldrd	r6, [r10]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1536
	ldrd	r2, [r1, #816]!
	ldrd	r6, [r10]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1544
	ldrd	r2, [r1, #824]!
	ldrd	r6, [r10]
	add	r10, sp, #1552
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1328
	ldrd	r2, [r1, #832]!
	ldrd	r6, [r10]
	add	r10, sp, #1760
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1336
	ldrd	r2, [r1, #840]!
	ldrd	r6, [r10]
	add	r10, sp, #1768
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [r10]
	mov	r1, ip
	add	r10, sp, #1344
	ldrd	r2, [r1, #848]!
	ldrd	r6, [r10]
	add	r10, sp, #1560
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r10]
	strd	r6, [r1]
	mov	r1, r4
	ldrd	r2, [r1, #440]!
	mov	r5, r4
	ldrd	r10, [r5, #456]!
	mov	r6, r4
	strd	r2, [sp, #168]
	add	r2, sp, #1360
	strd	r10, [r2]
	ldrd	r10, [r6, #464]!
	mov	lr, ip
	add	r2, sp, #1368
	strd	r10, [r2]
	ldrd	r10, [lr, #856]!
	mov	r7, r4
	add	r2, sp, #1776
	strd	r10, [r2]
	ldrd	r10, [r7, #472]!
	add	r2, sp, #1376
	add	r3, sp, #1544
	strd	r10, [r2]
	ldrd	r10, [r3]
	ldrd	r2, [sp, #168]
	add	r0, sp, #3760
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1328
	strd	r10, [r1]
	ldrd	r10, [r3]
	ldrd	r2, [r0]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #1336
	add	r3, sp, #1360
	strd	r10, [r0]
	ldrd	r10, [r3]
	ldrd	r2, [r2]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #1368
	add	r3, sp, #1344
	strd	r10, [r5]
	ldrd	r10, [r3]
	ldrd	r2, [r2]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #1352
	add	r3, sp, #1776
	strd	r10, [r6]
	ldrd	r10, [r2]
	ldrd	r2, [r3]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1544
	strd	r10, [r3]
	add	r2, sp, #1376
	add	r3, sp, #1352
	ldrd	r10, [r3]
	ldrd	r2, [r2]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r7]
	add	r7, sp, #1544
	ldrd	r6, [r7]
	strd	r6, [lr]
	mov	r3, ip
	ldrd	r6, [r3, #864]!
	addw	r10, sp, #2520
	eor	r6, r6, r8
	eor	r7, r7, r9
	mov	r1, ip
	strd	r8, [r10]
	add	r10, sp, #1616
	strd	r6, [r3]
	ldrd	r2, [r1, #872]!
	ldrd	r8, [r10]
	add	r10, sp, #1328
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1504
	ldrd	r2, [r1, #880]!
	ldrd	r8, [r10]
	add	r10, sp, #1336
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1512
	ldrd	r2, [r1, #888]!
	ldrd	r8, [r10]
	add	r10, sp, #1344
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1520
	ldrd	r2, [r1, #896]!
	ldrd	r8, [r10]
	add	r10, sp, #1352
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1528
	ldrd	r2, [r1, #904]!
	ldrd	r8, [r10]
	add	r10, sp, #1360
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1536
	ldrd	r2, [r1, #912]!
	ldrd	r8, [r10]
	add	r10, sp, #1368
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1552
	ldrd	r2, [r1, #920]!
	ldrd	r8, [r10]
	add	r10, sp, #1376
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1760
	ldrd	r2, [r1, #928]!
	ldrd	r8, [r10]
	add	r10, sp, #1776
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1768
	ldrd	r2, [r1, #936]!
	ldrd	r8, [r10]
	add	r10, sp, #1912
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1560
	mov	r1, ip
	ldrd	r2, [r1, #944]!
	ldrd	r8, [r10]
	add	r10, sp, #1920
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1544
	ldrd	r2, [r1, #952]!
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #1056
	ldrd	r0, [r3]
	add	lr, sp, #2528
	strd	r6, [lr]
	add	r10, sp, #1928
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	add	r1, ip, #1064
	add	r10, sp, #1328
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1936
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1072
	add	r10, sp, #1336
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1944
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1080
	add	r10, sp, #1344
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1952
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #1088
	add	r10, sp, #1352
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1960
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #1096
	add	r10, sp, #1360
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1968
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1104
	add	r10, sp, #1368
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1976
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1376
	add	r1, ip, #1112
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1984
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1120
	add	r10, sp, #1776
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #1992
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1128
	add	r10, sp, #1912
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2000
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1136
	add	r10, sp, #1920
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2008
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1144
	add	r10, sp, #1928
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	mov	r3, ip
	ldrd	r0, [r3, #960]!
	addw	lr, sp, #2536
	strd	r6, [lr]
	add	r10, sp, #2016
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1936
	ldrd	r2, [r1, #968]!
	ldrd	r8, [r10]
	add	r10, sp, #1784
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1944
	ldrd	r2, [r1, #976]!
	ldrd	r8, [r10]
	add	r10, sp, #2024
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1952
	ldrd	r2, [r1, #984]!
	ldrd	r8, [r10]
	add	r10, sp, #2032
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #1960
	mov	r1, ip
	ldrd	r2, [r1, #992]!
	ldrd	r8, [r10]
	add	r10, sp, #2040
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1968
	ldrd	r2, [r1, #1000]!
	ldrd	r8, [r10]
	add	r10, sp, #2048
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1976
	ldrd	r2, [r1, #1008]!
	ldrd	r8, [r10]
	addw	r10, sp, #2056
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #1984
	ldrd	r2, [r1, #1016]!
	ldrd	r8, [r10]
	add	r10, sp, #2064
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1024
	add	r10, sp, #1992
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2072
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #1032
	add	r10, sp, #2000
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #1792
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #1040
	add	r10, sp, #2008
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2080
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1048
	add	r10, sp, #2016
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #1344
	ldrd	r0, [r3]
	addw	r10, sp, #2088
	add	lr, sp, #2544
	strd	r8, [r10]
	strd	r6, [lr]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	add	r1, ip, #1352
	add	r10, sp, #1784
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2096
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1360
	add	r10, sp, #2024
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2104
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1368
	add	r10, sp, #2032
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2112
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1376
	add	r10, sp, #2040
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2120
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1384
	add	r10, sp, #2048
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2128
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1392
	addw	r10, sp, #2056
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2136
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1400
	add	r10, sp, #2064
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2144
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1408
	addw	r10, sp, #2072
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2152
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1416
	add	r10, sp, #1792
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2160
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #2080
	add	r1, ip, #1424
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2168
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1432
	addw	r10, sp, #2088
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #1440
	ldrd	r0, [r3]
	addw	lr, sp, #2552
	strd	r6, [lr]
	add	r10, sp, #2176
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	add	r1, ip, #1448
	add	r10, sp, #2096
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2184
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r0, ip, #1456
	addw	r10, sp, #2104
	ldrd	r2, [r0]
	ldrd	r8, [r10]
	add	r10, sp, #2192
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r0]
	strd	r8, [r10]
	add	r1, ip, #1464
	add	r10, sp, #2112
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2200
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1472
	addw	r10, sp, #2120
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2208
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1480
	add	r10, sp, #2128
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2216
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1488
	addw	r10, sp, #2136
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2224
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #2144
	add	r1, ip, #1496
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2232
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1504
	addw	r10, sp, #2152
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2240
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1512
	add	r10, sp, #2160
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2248
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1520
	addw	r10, sp, #2168
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2256
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1528
	add	r10, sp, #2176
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r3, ip, #1248
	ldrd	r0, [r3]
	add	lr, sp, #2560
	strd	r6, [lr]
	addw	r10, sp, #2264
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r8, [r10]
	add	r1, ip, #1256
	addw	r10, sp, #2184
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2272
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1264
	add	r10, sp, #2192
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2280
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1272
	addw	r10, sp, #2200
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2288
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #2208
	add	r1, ip, #1280
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2296
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1288
	addw	r10, sp, #2216
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2304
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1296
	add	r10, sp, #2224
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2312
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1304
	addw	r10, sp, #2232
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2320
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1312
	add	r10, sp, #2240
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2328
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1320
	addw	r10, sp, #2248
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	add	r10, sp, #2336
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1328
	add	r10, sp, #2256
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	addw	r10, sp, #2344
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r1, ip, #1336
	addw	r10, sp, #2264
	ldrd	r2, [r1]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #2352
	add	r1, ip, #1152
	addw	lr, sp, #2568
	strd	r8, [r10]
	strd	r6, [lr]
	ldrd	r2, [r1]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	r5, ip, #1160
	add	r3, sp, #2272
	ldrd	r0, [r5]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	addw	r9, sp, #2280
	add	r5, ip, #1168
	ldrd	r8, [r9]
	strd	r6, [sp, #168]
	ldrd	r6, [r5]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r5]
	add	fp, sp, #2288
	add	r5, ip, #1176
	ldrd	r8, [r5]
	ldrd	r10, [fp]
	eor	r8, r8, r10
	eor	r9, r9, fp
	strd	r8, [r5]
	addw	lr, sp, #2296
	add	r5, ip, #1184
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	add	lr, sp, #1568
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	strd	r10, [lr]
	add	r5, ip, #1192
	add	lr, sp, #2304
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	add	lr, sp, #1808
	add	r5, ip, #1200
	addw	r2, sp, #2312
	strd	r10, [lr]
	ldrd	r10, [r2]
	ldrd	r2, [r5]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	add	r3, sp, #1384
	add	r5, ip, #1208
	add	r2, sp, #2320
	strd	r10, [r3]
	ldrd	r10, [r2]
	ldrd	r2, [r5]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r2, sp, #1160
	add	r3, sp, #1392
	strd	r10, [r3]
	strd	r10, [r5]
	ldrd	r2, [r2]
	ldrd	r10, [sp, #176]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1160
	strd	r10, [r3]
	add	r2, sp, #1008
	add	r3, sp, #3600
	ldrd	r10, [r2]
	ldrd	r2, [r3]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1008
	strd	r10, [r3]
	add	r5, ip, #1216
	addw	r3, sp, #2328
	ldrd	r10, [r3]
	ldrd	r2, [r5]
	add	lr, sp, #1160
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	strd	r10, [sp, #176]
	ldrd	r10, [lr]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [sp, #120]
	add	fp, sp, #1008
	ldrd	r10, [fp]
	ldrd	r2, [sp, #168]
	add	lr, sp, #3600
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [lr]
	add	r5, ip, #1224
	add	lr, sp, #2336
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	add	lr, sp, #1008
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	strd	r10, [lr]
	add	r5, ip, #1232
	addw	lr, sp, #2344
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	add	lr, sp, #1400
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	strd	r10, [lr]
	add	r5, ip, #1240
	add	lr, sp, #2352
	ldrd	r2, [r5]
	ldrd	r10, [lr]
	add	lr, sp, #1160
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	strd	r10, [lr]
	ldrd	r10, [sp, #120]
	ldr	lr, [sp, #648]
	mov	r5, ip
	ldrd	r2, [r5, #384]!
	strd	r10, [lr]
	ldrd	r10, [sp, #168]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r5]
	mov	r5, ip
	ldrd	r2, [r5, #392]!
	strd	r10, [sp, #168]
	eor	r10, r0, r2
	eor	fp, r1, r3
	strd	r10, [r5]
	mov	r1, ip
	ldrd	r2, [r1, #400]!
	add	lr, sp, #648
	strd	r10, [lr]
	eor	r10, r6, r2
	eor	fp, r7, r3
	add	lr, sp, #1800
	strd	r10, [lr]
	strd	r10, [r1]
	mov	r1, ip
	ldrd	r2, [r1, #408]!
	addw	lr, sp, #2360
	eor	r10, r8, r2
	eor	fp, r9, r3
	strd	r10, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #1568
	ldrd	r2, [r1, #416]!
	ldrd	r10, [lr]
	add	lr, sp, #2368
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #1808
	ldrd	r2, [r1, #424]!
	ldrd	r10, [lr]
	addw	lr, sp, #2376
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #1384
	ldrd	r2, [r1, #432]!
	ldrd	r10, [lr]
	add	lr, sp, #2384
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [lr]
	strd	r10, [r1]
	add	r10, sp, #784
	add	fp, sp, #1576
	ldrd	r2, [r10]
	ldrd	r10, [fp]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #1576
	strd	r2, [fp]
	add	r2, sp, #944
	add	r3, sp, #1584
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1584
	strd	r0, [r3]
	add	r2, sp, #520
	add	r3, sp, #1592
	ldrd	r10, [r2]
	ldrd	r2, [r3]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #1592
	strd	r10, [r3]
	add	r2, sp, #528
	add	r3, sp, #1600
	ldrd	r10, [r2]
	ldrd	r2, [r3]
	mov	r1, ip
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	lr, sp, #1392
	add	r3, sp, #528
	strd	r10, [r3]
	ldrd	r2, [r1, #440]!
	ldrd	r10, [lr]
	add	lr, sp, #784
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [lr]
	strd	r10, [r1]
	add	r10, sp, #512
	add	fp, sp, #1608
	ldrd	r2, [r10]
	ldrd	r10, [fp]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #512
	strd	r2, [fp]
	add	r2, sp, #544
	add	r3, sp, #1624
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1600
	strd	r0, [r3]
	add	r0, sp, #552
	add	r1, sp, #1840
	ldrd	r10, [r0]
	ldrd	r0, [r1]
	eor	r10, r10, r0
	eor	fp, fp, r1
	add	r1, sp, #1608
	strd	r10, [r1]
	add	r10, sp, #600
	addw	fp, sp, #2616
	ldrd	r2, [r10]
	ldrd	r10, [fp]
	mov	r1, ip
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #1624
	strd	r2, [fp]
	ldrd	r2, [r1, #448]!
	ldrd	r10, [sp, #176]
	add	lr, sp, #944
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r10, [lr]
	add	r10, sp, #592
	add	fp, sp, #3632
	ldrd	r2, [r10]
	ldrd	r10, [fp]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #520
	strd	r2, [fp]
	add	r2, sp, #536
	add	r3, sp, #3664
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	add	r5, sp, #1584
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	fp, sp, #1576
	add	r3, sp, #552
	strd	r0, [r3]
	ldrd	r10, [fp]
	ldrd	r2, [r5]
	mov	r1, ip
	eor	r6, r6, r10
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r10, sp, #1008
	ldrd	r8, [r10]
	strd	r2, [sp, #16]
	ldrd	r2, [r1, #456]!
	add	r10, sp, #592
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	add	r9, sp, #1384
	add	r8, sp, #528
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	add	r1, sp, #1808
	add	r0, sp, #1592
	eor	r7, r7, fp
	ldrd	r10, [r1]
	ldrd	r0, [r0]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #112]
	add	r3, sp, #1392
	add	r2, sp, #512
	eor	r10, r10, r0
	eor	fp, fp, r1
	ldrd	r0, [r3]
	ldrd	r2, [r2]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #1600
	add	r3, sp, #1008
	strd	r0, [sp, #104]
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1608
	add	r3, sp, #1400
	strd	r8, [sp, #96]
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1624
	add	r3, sp, #1160
	strd	r8, [sp, #88]
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1568
	add	r3, sp, #520
	strd	r8, [sp, #80]
	ldrd	r8, [r2]
	ldrd	r2, [r3]
	mov	r1, ip
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	lr, sp, #1400
	add	r3, sp, #3632
	strd	r8, [r3]
	ldrd	r2, [r1, #464]!
	ldrd	r8, [lr]
	add	lr, sp, #520
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r3, sp, #552
	strd	r8, [lr]
	strd	r8, [r1]
	ldrd	r2, [r3]
	ldrd	r8, [sp, #176]
	ldr	r5, [sp, #656]
	ldr	r0, [sp, #672]
	mov	r1, ip
	add	lr, sp, #1160
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r6, [r5]
	ldrd	r2, [r1, #472]!
	ldrd	r6, [lr]
	add	lr, sp, #528
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [lr]
	ldrd	r6, [sp, #16]
	ldr	lr, [sp, #664]
	strd	r6, [lr]
	ldrd	r6, [sp, #112]
	strd	r10, [r0]
	ldr	r10, [sp, #680]
	strd	r6, [r10]
	ldrd	r6, [sp, #104]
	ldr	r10, [sp, #608]
	strd	r6, [r10]
	ldrd	r6, [sp, #96]
	ldr	r10, [sp, #688]
	strd	r6, [r10]
	ldrd	r6, [sp, #88]
	ldr	r10, [sp, #792]
	strd	r6, [r10]
	ldrd	r6, [sp, #80]
	ldr	r10, [sp, #800]
	strd	r6, [r10]
	add	r7, sp, #528
	ldrd	r6, [r7]
	strd	r6, [r1]
	mov	r3, ip
	add	fp, sp, #3664
	ldrd	r6, [r3, #480]!
	strd	r8, [fp]
	ldrd	r8, [sp, #168]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r3]
	mov	r1, ip
	add	lr, sp, #648
	ldrd	r2, [r1, #488]!
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	lr, sp, #512
	strd	r10, [lr]
	mov	r1, ip
	add	r10, sp, #1800
	ldrd	r2, [r1, #496]!
	ldrd	r8, [r10]
	add	r10, sp, #536
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	addw	r10, sp, #2360
	ldrd	r2, [r1, #504]!
	ldrd	r8, [r10]
	add	r10, sp, #544
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #2368
	ldrd	r2, [r1, #512]!
	ldrd	r8, [r10]
	add	r10, sp, #552
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	addw	r10, sp, #2376
	ldrd	r2, [r1, #520]!
	ldrd	r8, [r10]
	add	r10, sp, #600
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #2384
	mov	r1, ip
	ldrd	r2, [r1, #528]!
	ldrd	r8, [r10]
	add	r10, sp, #656
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #784
	ldrd	r2, [r1, #536]!
	ldrd	r8, [r10]
	add	r10, sp, #664
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #944
	ldrd	r2, [r1, #544]!
	ldrd	r8, [r10]
	add	r10, sp, #672
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #592
	ldrd	r2, [r1, #552]!
	ldrd	r8, [r10]
	add	r10, sp, #680
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #520
	ldrd	r2, [r1, #560]!
	ldrd	r8, [r10]
	add	r10, sp, #608
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #528
	ldrd	r2, [r1, #568]!
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	mov	r3, ip
	ldrd	r0, [r3, #672]!
	add	lr, sp, #1624
	strd	r6, [lr]
	add	r10, sp, #688
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r8, [r10]
	strd	r6, [r3]
	mov	r1, ip
	add	r10, sp, #512
	ldrd	r2, [r1, #680]!
	ldrd	r8, [r10]
	add	r10, sp, #792
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #536
	ldrd	r2, [r1, #688]!
	ldrd	r8, [r10]
	add	r10, sp, #800
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	strd	r8, [r1]
	add	r10, sp, #544
	mov	r1, ip
	ldrd	r2, [r1, #696]!
	ldrd	r8, [r10]
	add	r10, sp, #1568
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #552
	ldrd	r2, [r1, #704]!
	ldrd	r8, [r10]
	add	r10, sp, #1384
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #600
	ldrd	r2, [r1, #712]!
	ldrd	r8, [r10]
	add	r10, sp, #1392
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #656
	ldrd	r2, [r1, #720]!
	ldrd	r8, [r10]
	add	r10, sp, #1008
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #664
	ldrd	r2, [r1, #728]!
	ldrd	r8, [r10]
	add	r10, sp, #1400
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #672
	ldrd	r2, [r1, #736]!
	ldrd	r8, [r10]
	add	r10, sp, #1160
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r10, sp, #680
	ldrd	r2, [r1, #744]!
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #1576
	strd	r8, [r10]
	mov	r1, ip
	add	lr, sp, #1840
	add	r8, sp, #608
	ldrd	r2, [r1, #752]!
	strd	r6, [lr]
	ldrd	r6, [r8]
	add	r8, sp, #1584
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r8]
	add	lr, sp, #688
	strd	r6, [r1]
	mov	r1, ip
	ldrd	r2, [r1, #760]!
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r8, sp, #1840
	mov	r1, ip
	ldrd	r2, [r1, #576]!
	ldrd	r6, [r8]
	add	lr, sp, #1808
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #792
	ldrd	r2, [r1, #584]!
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r5, sp, #800
	mov	r1, ip
	ldrd	r2, [r1, #592]!
	ldrd	r8, [r5]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r6, [sp, #176]
	mov	r1, ip
	addw	lr, sp, #2616
	add	r6, sp, #1568
	ldrd	r2, [r1, #600]!
	strd	r10, [lr]
	ldrd	r10, [r6]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	add	r5, sp, #1384
	mov	r1, ip
	ldrd	r6, [r1, #608]!
	ldrd	r2, [r5]
	add	r5, sp, #1592
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5]
	strd	r2, [r1]
	add	r5, sp, #1392
	mov	r1, ip
	ldrd	r6, [r1, #616]!
	ldrd	r2, [r5]
	add	r5, sp, #1600
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5]
	strd	r2, [r1]
	add	r5, sp, #1008
	mov	r1, ip
	ldrd	r6, [r1, #624]!
	ldrd	r2, [r5]
	add	r5, sp, #1608
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5]
	strd	r2, [r1]
	add	r5, sp, #1400
	mov	r1, ip
	ldrd	r6, [r1, #632]!
	ldrd	r2, [r5]
	add	r5, sp, #1816
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r5]
	strd	r2, [r1]
	add	r2, sp, #376
	add	r3, sp, #2400
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #2400
	strd	r0, [r3]
	add	r0, sp, #408
	addw	r1, sp, #2408
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	addw	r1, sp, #2408
	strd	r6, [r1]
	add	r6, sp, #384
	add	r7, sp, #2416
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1824
	add	r7, sp, #2416
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r4, #192]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #416
	add	r7, sp, #376
	strd	r2, [r7]
	ldrd	r2, [r6]
	ldrd	r6, [r4, #240]
	mov	r1, ip
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	lr, sp, #1160
	add	r7, sp, #384
	strd	r2, [r7]
	ldrd	r2, [r1, #640]!
	ldrd	r6, [lr]
	add	lr, sp, #416
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [lr]
	strd	r6, [r1]
	add	r6, sp, #392
	ldrd	r2, [r6]
	ldrd	r6, [r4, #248]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1824
	strd	r2, [r7]
	add	r2, sp, #400
	add	r3, sp, #3568
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	addw	r3, sp, #2392
	ldrd	r6, [sp, #192]
	strd	r0, [r3]
	ldrd	r0, [r4, #200]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [sp, #192]
	add	r6, sp, #456
	ldrd	r2, [r6]
	ldrd	r6, [r4, #208]
	mov	r1, ip
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	lr, sp, #1576
	add	r7, sp, #392
	strd	r2, [r7]
	ldrd	r2, [r1, #648]!
	ldrd	r6, [lr]
	add	lr, sp, #456
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [lr]
	strd	r6, [r1]
	add	r6, sp, #472
	ldrd	r2, [r6]
	ldrd	r6, [r4, #216]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #400
	strd	r2, [r7]
	add	r2, sp, #496
	ldrd	r0, [r2]
	ldrd	r2, [r4, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #448
	add	r3, sp, #408
	strd	r0, [r3]
	ldrd	r6, [r2]
	ldrd	r2, [r4, #232]
	mov	r1, ip
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	lr, sp, #1584
	add	r3, sp, #448
	strd	r6, [r3]
	ldrd	r2, [r1, #656]!
	ldrd	r6, [lr]
	add	lr, sp, #472
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r6, [lr]
	add	r6, sp, #1832
	add	r7, sp, #376
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1832
	strd	r2, [r7]
	add	r2, sp, #1152
	add	r3, sp, #2400
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1152
	strd	r0, [r3]
	add	r0, sp, #992
	addw	r1, sp, #2408
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #992
	strd	r6, [r1]
	add	r6, sp, #1000
	add	r7, sp, #2416
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	mov	r1, ip
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	lr, sp, #1808
	add	r7, sp, #1000
	strd	r2, [r7]
	ldrd	r2, [r1, #664]!
	ldrd	r6, [lr]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #1136
	strd	r6, [r1]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #192]
	add	lr, sp, #496
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #872
	add	r3, sp, #392
	strd	r6, [lr]
	ldrd	r6, [r2]
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #2400
	strd	r6, [r3]
	add	r2, sp, #880
	add	r3, sp, #400
	ldrd	r6, [r2]
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #872
	strd	r6, [r3]
	add	r2, sp, #888
	add	r3, sp, #408
	ldrd	r6, [r2]
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #880
	strd	r6, [r3]
	ldrd	r6, [ip, #192]
	ldrd	r2, [sp, #176]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #896
	add	r3, sp, #448
	strd	r6, [ip, #192]
	strd	r6, [sp, #192]
	ldrd	r6, [r2]
	ldrd	r2, [r3]
	addw	r5, sp, #2616
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #888
	strd	r6, [r3]
	ldrd	r6, [ip, #200]
	ldrd	r2, [r5]
	add	r5, sp, #448
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #984
	add	r7, sp, #384
	strd	r2, [r5]
	strd	r2, [ip, #200]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #896
	strd	r2, [r7]
	ldrd	r6, [ip, #208]
	add	r5, sp, #392
	eor	r2, r6, r8
	eor	r3, r7, r9
	add	r6, sp, #1304
	add	r7, sp, #1824
	strd	r2, [r5]
	strd	r2, [ip, #208]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #984
	strd	r2, [r7]
	ldrd	r6, [ip, #216]
	add	r5, sp, #400
	eor	r2, r6, r10
	eor	r3, r7, fp
	add	r6, sp, #1144
	addw	r7, sp, #2392
	strd	r2, [r5]
	strd	r2, [ip, #216]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1592
	add	r7, sp, #1304
	strd	r2, [r7]
	ldrd	r6, [r6]
	ldrd	r2, [ip, #224]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #376
	strd	r2, [r7]
	add	r6, sp, #2544
	add	r7, sp, #1832
	strd	r2, [ip, #224]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1600
	add	r7, sp, #1144
	strd	r2, [r7]
	ldrd	r2, [ip, #232]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #408
	strd	r2, [r7]
	add	r6, sp, #1792
	add	r7, sp, #1152
	strd	r2, [ip, #232]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1608
	add	r7, sp, #1792
	strd	r2, [r7]
	ldrd	r2, [ip, #240]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #384
	strd	r2, [r7]
	add	r6, sp, #2080
	add	r7, sp, #992
	strd	r2, [ip, #240]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #1816
	add	r7, sp, #992
	strd	r2, [r7]
	ldrd	r2, [ip, #248]
	ldrd	r6, [r6]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1136
	strd	r2, [r7]
	addw	r6, sp, #2088
	add	r7, sp, #1000
	strd	r2, [ip, #248]
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	add	r5, sp, #1784
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #1000
	strd	r2, [r7]
	ldrd	r2, [r5]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #2024
	add	r1, sp, #2400
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #1152
	strd	r6, [r1]
	add	r0, sp, #2032
	add	r1, sp, #872
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	add	r5, sp, #1824
	strd	r2, [r5]
	eors	r6, r6, r0
	mov	r3, ip
	eors	r7, r7, r1
	add	r1, sp, #872
	strd	r6, [r1]
	ldrd	r6, [r3, #256]!
	add	lr, sp, #1784
	strd	r6, [lr]
	add	r6, sp, #2040
	add	r7, sp, #880
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #880
	strd	r0, [r7]
	add	r6, sp, #2048
	add	r7, sp, #888
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #888
	strd	r0, [r7]
	addw	r6, sp, #2056
	add	r7, sp, #896
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #896
	strd	r0, [r7]
	add	r6, sp, #2064
	add	r7, sp, #984
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #984
	strd	r0, [r7]
	addw	r6, sp, #2072
	add	r7, sp, #1304
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #1304
	strd	r0, [r7]
	add	r7, sp, #1144
	ldrd	r6, [r7]
	ldrd	r0, [sp, #176]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #1792
	add	r7, sp, #456
	strd	r0, [r4, #192]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #992
	add	r7, sp, #472
	strd	r0, [sp, #72]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #1000
	add	r7, sp, #496
	strd	r0, [sp, #64]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	addw	r7, sp, #2616
	strd	r0, [sp, #56]
	ldrd	r0, [r7]
	ldrd	r6, [r5]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #872
	ldrd	r6, [r7]
	strd	r0, [r4, #200]
	add	r1, sp, #1152
	ldrd	r0, [r1]
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	r6, sp, #880
	add	r7, sp, #1592
	eor	r8, r8, r0
	eor	r9, r9, r1
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #888
	add	r7, sp, #1600
	strd	r0, [r4, #224]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #896
	add	r7, sp, #1608
	strd	r0, [r4, #232]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #984
	add	r7, sp, #1816
	strd	r0, [r4, #240]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #416
	add	r7, sp, #1304
	strd	r0, [r4, #248]
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r6, sp, #416
	add	r7, sp, #3568
	strd	r0, [r7]
	ldrd	r0, [r6]
	ldrd	r6, [lr]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #416
	strd	r0, [r7]
	ldrd	r6, [sp, #72]
	ldr	lr, [sp, #424]
	strd	r6, [lr]
	ldrd	r6, [sp, #64]
	ldr	lr, [sp, #432]
	strd	r6, [lr]
	ldrd	r6, [sp, #56]
	ldr	lr, [sp, #480]
	strd	r6, [lr]
	add	r7, sp, #416
	ldrd	r6, [r7]
	strd	r6, [r3]
	mov	r1, ip
	strd	r10, [r4, #216]
	add	r10, sp, #456
	ldrd	r2, [r1, #264]!
	strd	r8, [r4, #208]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	strd	r8, [r10]
	mov	r1, ip
	add	r8, sp, #472
	ldrd	r2, [r1, #272]!
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r8]
	strd	r6, [r1]
	add	lr, sp, #496
	mov	r1, ip
	ldrd	r2, [r1, #280]!
	ldrd	r10, [lr]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	mov	r3, ip
	ldrd	r0, [r3, #288]!
	ldrd	r6, [sp, #192]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [r3]
	strd	r10, [lr]
	mov	r1, ip
	add	r10, sp, #448
	ldrd	r2, [r1, #296]!
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r1]
	add	r10, sp, #992
	strd	r8, [r10]
	mov	r1, ip
	add	r8, sp, #392
	ldrd	r2, [r1, #304]!
	strd	r6, [sp, #176]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #400
	mov	r1, ip
	ldrd	r2, [r1, #312]!
	ldrd	r10, [lr]
	add	r8, sp, #424
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	mov	r1, ip
	add	r8, sp, #376
	ldrd	r2, [r1, #320]!
	ldrd	r6, [r8]
	add	lr, sp, #1000
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #408
	ldrd	r2, [r1, #328]!
	ldrd	r10, [lr]
	add	r8, sp, #432
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [r1]
	strd	r6, [r8]
	mov	r1, ip
	add	r8, sp, #384
	ldrd	r2, [r1, #336]!
	ldrd	r6, [r8]
	add	lr, sp, #480
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	strd	r10, [lr]
	mov	r1, ip
	add	lr, sp, #1136
	ldrd	r2, [r1, #344]!
	ldrd	r10, [lr]
	add	r8, sp, #872
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	lr, sp, #880
	strd	r6, [r8]
	strd	r10, [lr]
	strd	r10, [r1]
	add	r8, sp, #416
	mov	r1, ip
	ldrd	r2, [r1, #352]!
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [r1]
	add	lr, sp, #456
	mov	r1, ip
	ldrd	r2, [r1, #360]!
	ldrd	r10, [lr]
	add	r8, sp, #888
	eor	fp, fp, r3
	addw	r3, sp, #2584
	strd	r6, [r8]
	eor	r10, r10, r2
	ldrd	r8, [sp, #184]
	ldrd	r2, [r3]
	addw	r7, sp, #2424
	add	r6, sp, #2576
	strd	r10, [r1]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r7]
	ldrd	r6, [r6]
	mov	r1, ip
	add	lr, sp, #896
	addw	r0, sp, #2440
	strd	r10, [lr]
	eors	r2, r2, r6
	ldrd	r10, [r1, #368]!
	eors	r3, r3, r7
	ldrd	r6, [r0]
	add	r5, sp, #352
	add	lr, sp, #984
	strd	r10, [lr]
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [r5]
	add	r10, sp, #440
	add	lr, sp, #2448
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [r10]
	ldrd	r10, [lr]
	add	lr, sp, #2464
	eor	r10, r10, r6
	eor	fp, fp, r7
	ldrd	r6, [lr]
	eor	r9, r9, r3
	add	r3, sp, #1056
	eor	r8, r8, r2
	ldrd	r2, [r3]
	eor	r6, r6, r10
	eor	r7, r7, fp
	strd	r6, [r5]
	add	r6, sp, #272
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r6]
	ldrd	r6, [r4, #120]
	add	fp, sp, #2432
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #272
	strd	r2, [r7]
	ldrd	r6, [fp]
	ldrd	r10, [r4, #96]
	eor	r6, r6, r10
	add	r10, sp, #264
	ldrd	r2, [r10]
	eor	r7, r7, fp
	ldrd	r10, [r4, #104]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #264
	strd	r2, [fp]
	ldrd	r10, [r4, #112]
	ldrd	r2, [sp, #248]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #248]
	add	r3, sp, #984
	add	r2, sp, #472
	ldrd	r10, [r3]
	ldrd	r2, [r2]
	mov	lr, r5
	add	r5, sp, #1104
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r5]
	add	r5, sp, #440
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [r5]
	addw	r2, sp, #2472
	ldrd	r8, [r2]
	ldrd	r2, [lr]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #584
	add	r3, sp, #272
	strd	r8, [lr]
	ldrd	r8, [r2]
	ldrd	r2, [r3]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r3, sp, #272
	strd	r8, [r3]
	addw	r9, sp, #2456
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #464
	add	r9, sp, #264
	ldrd	r2, [r8]
	ldrd	r8, [r9]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #264
	strd	r2, [r9]
	add	r9, sp, #488
	ldrd	r2, [r9]
	ldrd	r8, [sp, #248]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #248]
	add	r3, sp, #696
	ldrd	r2, [r3]
	strd	r10, [r1]
	ldrd	r0, [r5]
	addw	r9, sp, #2488
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5]
	ldrd	r0, [r9]
	ldrd	r8, [lr]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #1128
	add	r9, sp, #272
	ldrd	r2, [r8]
	ldrd	r8, [r9]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #272
	strd	r2, [r9]
	add	r3, sp, #2480
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #1248
	add	r3, sp, #264
	ldrd	r8, [r2]
	ldrd	r2, [r3]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r3, sp, #264
	strd	r8, [r3]
	add	r3, sp, #1256
	ldrd	r8, [r3]
	ldrd	r2, [sp, #248]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1408
	strd	r8, [sp, #248]
	ldrd	r8, [r2]
	ldrd	r2, [r5]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [lr]
	add	lr, sp, #2496
	ldrd	r8, [lr]
	add	r2, sp, #1688
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r3, sp, #272
	strd	r8, [r5]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #272
	strd	r0, [r3]
	add	r2, sp, #1464
	add	r3, sp, #264
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	addw	r9, sp, #2504
	ldrd	r8, [r9]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #264
	strd	r0, [r3]
	add	r1, sp, #1472
	eor	r6, r6, r8
	eor	r7, r7, r9
	ldrd	r8, [r1]
	ldrd	r0, [sp, #248]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #1736
	add	r1, sp, #352
	strd	r8, [sp, #248]
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #352
	strd	r8, [r1]
	add	r1, sp, #2512
	ldrd	r0, [r1]
	ldrd	r8, [r5]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #696
	strd	r8, [r1]
	add	r0, sp, #1344
	add	r1, sp, #272
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #488
	strd	r8, [r1]
	add	r9, sp, #2528
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #1328
	add	r9, sp, #264
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #1336
	strd	r0, [r5]
	ldrd	r0, [r8]
	ldrd	r8, [sp, #248]
	mov	r3, ip
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #464
	strd	r0, [r9]
	ldrd	r0, [r3, #376]!
	add	r2, sp, #584
	strd	r0, [r2]
	add	r1, sp, #312
	ldrd	r8, [r1]
	ldrd	r0, [r4, #144]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #320
	strd	r8, [sp, #248]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #152]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #328
	add	r1, sp, #272
	strd	r8, [r1]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #160]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #304
	add	r1, sp, #312
	strd	r8, [r1]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #168]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #344
	add	r1, sp, #320
	strd	r8, [r1]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #176]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #368
	add	r1, sp, #328
	strd	r8, [r1]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #184]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #304
	strd	r8, [r1]
	add	r0, sp, #1616
	add	r1, sp, #352
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #344
	strd	r8, [r1]
	add	r0, sp, #696
	addw	r1, sp, #2520
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r0, sp, #296
	add	r1, sp, #696
	strd	r8, [r1]
	ldrd	r8, [r0]
	ldrd	r0, [r4, #136]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #264
	strd	r8, [r1]
	addw	r0, sp, #2200
	add	r1, sp, #488
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	add	lr, sp, #2560
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #352
	strd	r8, [r1]
	ldrd	r8, [lr]
	eor	r8, r8, r6
	addw	r6, sp, #2184
	ldrd	r0, [r6]
	eor	r9, r9, r7
	ldrd	r6, [r5]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	lr, sp, #368
	strd	r0, [r5]
	add	r0, sp, #2192
	add	r1, sp, #464
	strd	r8, [lr]
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #464
	strd	r8, [r1]
	add	r9, sp, #280
	ldrd	r6, [r9]
	ldrd	r8, [r4, #128]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #1936
	add	r9, sp, #344
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #344
	strd	r0, [r9]
	add	r8, sp, #696
	addw	r9, sp, #2536
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #696
	strd	r0, [r9]
	add	r8, sp, #1168
	add	r9, sp, #304
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #304
	strd	r0, [r9]
	add	r8, sp, #1048
	add	r9, sp, #328
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #328
	strd	r0, [r9]
	add	r8, sp, #1040
	add	r9, sp, #320
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #296
	strd	r0, [r9]
	add	r8, sp, #936
	add	r9, sp, #312
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #280
	strd	r0, [r9]
	add	r8, sp, #928
	add	r9, sp, #272
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #272
	strd	r0, [r9]
	add	r9, sp, #640
	ldrd	r0, [r9]
	ldrd	r8, [sp, #248]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #776
	add	r9, sp, #264
	strd	r0, [sp, #248]
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #264
	strd	r0, [r9]
	add	r8, sp, #544
	add	r9, sp, #352
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #1624
	add	r9, sp, #488
	strd	r0, [r9]
	ldrd	r0, [r8]
	ldrd	r8, [lr]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #512
	add	r9, sp, #352
	strd	r0, [r9]
	ldrd	r0, [r8]
	ldrd	r8, [r5]
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r8, sp, #536
	add	r9, sp, #464
	strd	r0, [r5]
	ldrd	r0, [r8]
	ldrd	r8, [r9]
	add	r2, sp, #768
	eor	r0, r0, r8
	eor	r1, r1, r9
	add	r9, sp, #464
	strd	r0, [r9]
	ldrd	r0, [r2]
	add	r8, sp, #2096
	add	r9, sp, #344
	eors	r0, r0, r6
	eors	r1, r1, r7
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [lr]
	addw	r6, sp, #2552
	add	r7, sp, #696
	strd	r0, [sp, #184]
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #344
	strd	r0, [r7]
	add	r0, sp, #832
	add	r1, sp, #304
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #320
	strd	r8, [r1]
	add	r8, sp, #824
	add	r9, sp, #328
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #312
	strd	r6, [r9]
	add	r6, sp, #816
	add	r7, sp, #296
	ldrd	r0, [r6]
	ldrd	r6, [r7]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #296
	strd	r0, [r7]
	add	r0, sp, #1296
	add	r1, sp, #280
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #280
	strd	r8, [r1]
	add	r8, sp, #1288
	add	r9, sp, #272
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #272
	strd	r6, [r9]
	add	r7, sp, #1280
	ldrd	r0, [r7]
	ldrd	r6, [sp, #248]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #248]
	add	r0, sp, #1272
	add	r1, sp, #264
	ldrd	r8, [r0]
	ldrd	r0, [r1]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r1, sp, #264
	strd	r8, [r1]
	add	r9, sp, #488
	add	r8, sp, #1000
	ldrd	r6, [r9]
	ldrd	r8, [r8]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r4, #120]
	add	r7, sp, #352
	ldrd	r0, [r7]
	ldrd	r6, [sp, #176]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [r4, #96]
	add	r0, sp, #992
	ldrd	r8, [r5]
	ldrd	r0, [r0]
	eor	r8, r8, r0
	eor	r9, r9, r1
	strd	r8, [r4, #104]
	add	r9, sp, #464
	add	r8, sp, #424
	ldrd	r6, [r9]
	ldrd	r8, [r8]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [r4, #112]
	add	r7, sp, #496
	add	r6, sp, #584
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	eors	r1, r1, r7
	add	r7, sp, #1264
	ldrd	r8, [r7]
	eors	r0, r0, r6
	ldrd	r6, [sp, #184]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r6, sp, #2272
	strd	r8, [sp, #184]
	ldrd	r8, [r6]
	ldrd	r6, [lr]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #304
	strd	r8, [r7]
	addw	r6, sp, #2568
	add	r7, sp, #344
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #328
	strd	r8, [r7]
	add	r6, sp, #1728
	add	r7, sp, #320
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #320
	strd	r8, [r7]
	add	r6, sp, #1720
	add	r7, sp, #312
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #312
	strd	r8, [r7]
	add	r6, sp, #1712
	add	r7, sp, #296
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #296
	strd	r8, [r7]
	add	r6, sp, #1496
	add	r7, sp, #280
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #280
	strd	r8, [r7]
	add	r6, sp, #1488
	add	r7, sp, #272
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #272
	strd	r8, [r7]
	add	r7, sp, #1480
	ldrd	r8, [r7]
	ldrd	r6, [sp, #248]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r6, sp, #1704
	add	r7, sp, #264
	strd	r8, [sp, #248]
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #264
	strd	r8, [r7]
	add	r9, sp, #1696
	strd	r0, [r3]
	ldrd	r2, [r9]
	ldrd	r8, [sp, #184]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #648
	add	r9, sp, #304
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #328
	add	r9, sp, #304
	strd	r6, [r9]
	ldrd	r8, [r8]
	ldrd	r6, [sp, #168]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #328
	strd	r6, [r9]
	add	r8, sp, #1928
	add	r9, sp, #320
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #320
	strd	r6, [r9]
	add	r8, sp, #1920
	add	r9, sp, #312
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #312
	strd	r6, [r9]
	add	r8, sp, #1912
	add	r9, sp, #296
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #296
	strd	r6, [r9]
	add	r8, sp, #1776
	add	r9, sp, #280
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #280
	strd	r6, [r9]
	add	r8, sp, #1376
	add	r9, sp, #272
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #272
	strd	r6, [r9]
	add	r9, sp, #1368
	ldrd	r6, [r9]
	ldrd	r8, [sp, #248]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #264
	add	r9, sp, #1360
	strd	r6, [sp, #184]
	ldrd	r6, [r9]
	ldrd	r8, [r8]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [sp, #168]
	add	r7, sp, #1352
	ldrd	r6, [r7]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r6, sp, #792
	add	r7, sp, #304
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #304
	strd	r8, [r7]
	add	r6, sp, #1840
	add	r7, sp, #328
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #328
	strd	r8, [r7]
	addw	r6, sp, #2264
	add	r7, sp, #320
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #320
	strd	r8, [r7]
	add	r6, sp, #2256
	add	r7, sp, #312
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #312
	strd	r8, [r7]
	addw	r6, sp, #2248
	add	r7, sp, #296
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #296
	strd	r8, [r7]
	add	r6, sp, #280
	add	r7, sp, #2240
	ldrd	r8, [r7]
	ldrd	r6, [r6]
	eor	r8, r8, r6
	eor	r9, r9, r7
	addw	r6, sp, #2232
	add	r7, sp, #272
	strd	r8, [sp, #248]
	ldrd	r8, [r6]
	ldrd	r6, [r7]
	eor	r8, r8, r6
	eor	r9, r9, r7
	add	r7, sp, #264
	strd	r8, [r7]
	add	r7, sp, #2224
	ldrd	r8, [r7]
	ldrd	r6, [sp, #184]
	eor	r8, r8, r6
	eor	r9, r9, r7
	addw	r7, sp, #2216
	strd	r8, [sp, #184]
	ldrd	r8, [r7]
	ldrd	r6, [sp, #168]
	eor	r8, r8, r6
	eor	r9, r9, r7
	strd	r8, [sp, #168]
	add	r9, sp, #2208
	ldrd	r8, [r9]
	eor	r2, r2, r8
	add	r8, sp, #328
	ldrd	r6, [r8]
	eor	r3, r3, r9
	ldrd	r8, [sp, #192]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #328
	strd	r6, [r9]
	add	r8, sp, #304
	add	r9, sp, #448
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #304
	strd	r6, [r9]
	add	r8, sp, #688
	add	r9, sp, #320
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #320
	strd	r6, [r9]
	add	r8, sp, #608
	add	r9, sp, #312
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #280
	strd	r6, [r9]
	add	r8, sp, #680
	add	r9, sp, #296
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #272
	strd	r6, [r9]
	add	r9, sp, #672
	ldrd	r6, [r9]
	ldrd	r8, [sp, #248]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #664
	add	r9, sp, #264
	strd	r6, [sp, #248]
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #264
	strd	r6, [r9]
	add	r9, sp, #656
	ldrd	r6, [r9]
	ldrd	r8, [sp, #184]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r9, sp, #600
	strd	r6, [sp, #184]
	ldrd	r6, [r9]
	ldrd	r8, [sp, #168]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r8, sp, #552
	strd	r6, [sp, #192]
	ldrd	r6, [r8]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [sp, #168]
	add	r7, sp, #992
	ldrd	r2, [ip, #104]
	ldrd	r6, [r7]
	ldrd	r8, [sp, #176]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [ip, #96]
	eor	r7, r7, r9
	add	r9, sp, #480
	eor	r6, r6, r8
	strd	r2, [ip, #104]
	ldrd	r8, [r9]
	ldrd	r2, [sp, #192]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #872
	ldrd	r8, [r9]
	strd	r2, [r4, #136]
	ldrd	r2, [sp, #184]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #880
	add	r9, sp, #264
	strd	r2, [r4, #144]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #888
	strd	r2, [r4, #152]
	ldrd	r8, [r9]
	ldrd	r2, [sp, #248]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #896
	add	r9, sp, #272
	strd	r2, [r4, #160]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	add	r5, sp, #280
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	lr, sp, #320
	strd	r2, [r4, #168]
	ldrd	r2, [r5]
	ldrd	r8, [lr]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [r4, #176]
	eor	r8, r8, r0
	eor	r9, r9, r1
	add	r3, sp, #1000
	strd	r8, [r4, #184]
	ldrd	r8, [r3]
	ldrd	r2, [ip, #120]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [ip, #184]
	eors	r2, r2, r0
	eors	r3, r3, r1
	ldrd	r0, [ip, #176]
	add	r5, sp, #296
	strd	r2, [r5]
	eor	r0, r0, r10
	eor	r1, r1, fp
	add	r2, sp, #280
	strd	r0, [r2]
	add	r0, sp, #896
	ldrd	r0, [r0]
	ldrd	r10, [ip, #168]
	eor	r10, r10, r0
	eor	fp, fp, r1
	add	r1, sp, #272
	strd	r10, [r1]
	add	fp, sp, #888
	ldrd	r2, [ip, #160]
	ldrd	r10, [fp]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #248]
	add	r2, sp, #880
	ldrd	r2, [r2]
	ldrd	r0, [ip, #152]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #264
	strd	r0, [r3]
	add	r1, sp, #872
	ldrd	r0, [r1]
	ldrd	r10, [ip, #144]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [sp, #184]
	add	fp, sp, #480
	ldrd	r2, [ip, #136]
	ldrd	r10, [fp]
	add	r1, sp, #424
	ldrd	r0, [r1]
	eor	r2, r2, r10
	eor	r3, r3, fp
	ldrd	r10, [ip, #112]
	eor	fp, fp, r1
	add	r1, sp, #432
	eor	r10, r10, r0
	strd	r2, [sp, #192]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #432
	strd	r2, [r4, #128]
	ldrd	r2, [ip, #128]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #304
	strd	r2, [sp, #176]
	ldrd	r2, [r1]
	ldrd	r0, [ip, #104]
	eors	r3, r3, r1
	add	r1, sp, #296
	eors	r2, r2, r0
	ldrd	r0, [r1]
	strd	r0, [ip, #184]
	add	r1, sp, #280
	ldrd	r0, [r1]
	strd	r0, [ip, #176]
	add	r1, sp, #272
	ldrd	r0, [r1]
	strd	r0, [ip, #168]
	ldrd	r0, [sp, #248]
	strd	r0, [ip, #160]
	add	r1, sp, #264
	ldrd	r0, [r1]
	add	r5, sp, #328
	strd	r0, [ip, #152]
	ldrd	r0, [sp, #184]
	strd	r2, [r4, #8]
	ldrd	r2, [r5]
	strd	r0, [ip, #144]
	ldrd	r0, [sp, #192]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r4]
	ldrd	r2, [ip]
	strd	r0, [ip, #136]
	ldrd	r0, [sp, #176]
	ldr	r5, [sp, #908]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r8, [ip, #120]
	strd	r10, [ip, #112]
	strd	r0, [ip, #128]
	strd	r6, [ip, #96]
	strd	r2, [r5]
	ldrd	r0, [ip, #8]
	ldrd	r2, [ip, #104]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #8]
	ldrd	r0, [ip, #16]
	ldrd	r2, [ip, #112]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #16]
	ldrd	r0, [ip, #24]
	ldrd	r2, [ip, #120]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #24]
	ldrd	r0, [ip, #32]
	ldrd	r2, [ip, #128]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #32]
	ldrd	r0, [ip, #40]
	ldrd	r2, [ip, #136]
	eors	r2, r2, r0
	add	r0, sp, #2592
	eors	r3, r3, r1
	ldrd	r6, [sp, #200]
	ldrd	r0, [r0]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #312
	strd	r6, [r1]
	addw	r6, sp, #2600
	ldrd	r6, [r6]
	strd	r2, [r5, #40]
	ldrd	r2, [sp, #208]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #304
	strd	r2, [r7]
	add	r2, sp, #2608
	ldrd	r0, [sp, #216]
	ldrd	r2, [r2]
	ldrd	r6, [r4, #40]
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [sp, #224]
	eors	r2, r2, r6
	add	r6, sp, #360
	strd	r0, [lr]
	eors	r3, r3, r7
	ldrd	r0, [r6]
	ldrd	r6, [r4, #88]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #360
	strd	r0, [r7]
	add	r7, sp, #336
	ldrd	r0, [r7]
	ldrd	r6, [r4, #80]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #288
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	ldrd	r6, [r4, #72]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #256
	strd	r0, [sp, #216]
	ldrd	r0, [r7]
	ldrd	r6, [r4, #64]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #208]
	ldrd	r6, [r4, #56]
	ldrd	r0, [sp, #240]
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #200]
	ldrd	r6, [r4, #48]
	ldrd	r0, [sp, #232]
	add	r5, sp, #912
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #168]
	ldrd	r0, [r5]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #232]
	add	r1, sp, #712
	ldrd	r0, [r1]
	ldrd	r6, [lr]
	add	r3, sp, #304
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r2, sp, #704
	add	r1, sp, #288
	strd	r6, [r1]
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #560
	add	r3, sp, #312
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #256
	strd	r0, [r3]
	add	r2, sp, #360
	add	r3, sp, #752
	ldrd	r0, [r3]
	ldrd	r2, [r2]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #744
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #736
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #728
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #720
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #920
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #168]
	ldrd	r2, [ip, #144]
	ldrd	r0, [ip, #48]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #288
	add	r3, sp, #1024
	strd	r0, [sp, #48]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #304
	strd	r0, [r3]
	add	r1, sp, #1016
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	add	r1, sp, #504
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #632
	add	r1, sp, #288
	strd	r2, [r1]
	ldrd	r2, [r0]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #624
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1032
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #576
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #568
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #760
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #616
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #168]
	ldrd	r2, [sp, #48]
	ldr	r5, [sp, #908]
	strd	r2, [r5, #48]
	add	r2, sp, #304
	add	r3, sp, #1192
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #304
	strd	r0, [r3]
	add	r1, sp, #1184
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #288
	add	r1, sp, #1176
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r0, sp, #1096
	add	r1, sp, #256
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #1088
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1200
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1080
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1072
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1064
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1208
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #304
	add	r1, sp, #960
	strd	r2, [sp, #168]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #304
	strd	r2, [r1]
	add	r3, sp, #952
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #288
	add	r3, sp, #808
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	add	r2, sp, #256
	add	r3, sp, #1240
	ldrd	r0, [r3]
	ldrd	r2, [r2]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1232
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #968
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1224
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1216
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1120
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1112
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #304
	add	r3, sp, #856
	strd	r0, [sp, #168]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #304
	strd	r0, [r3]
	add	r1, sp, #848
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #288
	add	r1, sp, #840
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #1664
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1656
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #864
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1648
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1640
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1632
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #976
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #304
	add	r1, sp, #1432
	strd	r2, [sp, #168]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r3, sp, #1424
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #256
	add	r3, sp, #1416
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #256
	strd	r0, [r3]
	add	r3, sp, #1456
	ldrd	r0, [r3]
	ldrd	r2, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1320
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1440
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1312
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1680
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1672
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1448
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #288
	add	r3, sp, #1848
	strd	r0, [sp, #168]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	add	r1, sp, #1752
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	add	r1, sp, #1744
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #1904
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1896
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1856
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1888
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1880
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1872
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1864
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	add	r1, sp, #1520
	strd	r2, [sp, #168]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r3, sp, #1512
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #256
	add	r3, sp, #1504
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #256
	strd	r0, [r3]
	add	r3, sp, #1544
	ldrd	r0, [r3]
	ldrd	r2, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1560
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1528
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1768
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1760
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1552
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1536
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [sp, #168]
	ldrd	r2, [ip, #152]
	ldrd	r0, [ip, #56]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #288
	add	r3, sp, #1960
	strd	r0, [sp, #40]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	add	r1, sp, #1952
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	add	r1, sp, #1944
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #2016
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2008
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1968
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2000
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1992
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1984
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #1976
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [sp, #168]
	ldrd	r2, [sp, #40]
	strd	r2, [r5, #56]
	add	r2, sp, #288
	addw	r3, sp, #2120
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	add	r1, sp, #2112
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	addw	r1, sp, #2104
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #2176
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	addw	r1, sp, #2168
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2128
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2160
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	addw	r1, sp, #2152
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2144
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	addw	r1, sp, #2136
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	addw	r1, sp, #2296
	strd	r2, [sp, #168]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #288
	strd	r2, [r1]
	add	r3, sp, #2288
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #256
	addw	r3, sp, #2280
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #256
	strd	r0, [r3]
	add	r3, sp, #2352
	ldrd	r0, [r3]
	ldrd	r2, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	addw	r3, sp, #2344
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #2304
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #2336
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	addw	r3, sp, #2328
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #2320
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	addw	r3, sp, #2312
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #288
	add	r3, sp, #2368
	strd	r0, [sp, #168]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	addw	r1, sp, #2360
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r0, sp, #256
	add	r1, sp, #1800
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r1]
	add	r1, sp, #528
	ldrd	r2, [r1]
	ldrd	r0, [sp, #240]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #520
	strd	r2, [sp, #240]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #232]
	eors	r2, r2, r0
	eors	r3, r3, r1
	addw	r1, sp, #2376
	strd	r2, [sp, #232]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #224]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #592
	strd	r2, [sp, #224]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #216]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #944
	strd	r2, [sp, #216]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #208]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #784
	strd	r2, [sp, #208]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #200]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #2384
	strd	r2, [sp, #200]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r0, sp, #288
	add	r1, sp, #1384
	strd	r2, [sp, #168]
	ldrd	r2, [r0]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #304
	strd	r2, [r1]
	add	r3, sp, #1568
	ldrd	r2, [r3]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #256
	add	r3, sp, #800
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #288
	strd	r0, [r3]
	add	r3, sp, #1808
	ldrd	r0, [r3]
	ldrd	r2, [sp, #240]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1584
	strd	r0, [sp, #240]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #232]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1392
	strd	r0, [sp, #232]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #224]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1576
	strd	r0, [sp, #224]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #216]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1160
	strd	r0, [sp, #216]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #208]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1400
	strd	r0, [sp, #208]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #200]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r3, sp, #1008
	strd	r0, [sp, #200]
	ldrd	r0, [r3]
	ldrd	r2, [sp, #168]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #376
	add	r3, sp, #304
	strd	r0, [sp, #168]
	ldrd	r0, [r2]
	ldrd	r2, [r3]
	eors	r0, r0, r2
	eors	r1, r1, r3
	add	r2, sp, #400
	add	r3, sp, #256
	strd	r0, [r3]
	ldrd	r0, [r2]
	add	r2, sp, #304
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [r2]
	add	r0, sp, #392
	add	r1, sp, #288
	ldrd	r6, [r0]
	ldrd	r0, [r1]
	eors	r6, r6, r0
	eors	r7, r7, r1
	add	r1, sp, #288
	strd	r6, [r1]
	add	r7, sp, #496
	ldrd	r2, [r7]
	ldrd	r6, [sp, #240]
	eors	r3, r3, r7
	add	r7, sp, #472
	ldrd	r0, [r7]
	eors	r2, r2, r6
	ldrd	r6, [sp, #232]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #408
	strd	r0, [sp, #232]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #224]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #456
	strd	r0, [sp, #224]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #216]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #416
	strd	r0, [sp, #216]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #208]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #1136
	strd	r0, [sp, #208]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #200]
	eors	r0, r0, r6
	eors	r1, r1, r7
	add	r7, sp, #384
	strd	r0, [sp, #200]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #168]
	add	r5, sp, #304
	eors	r0, r0, r6
	eors	r1, r1, r7
	strd	r0, [sp, #168]
	ldrd	r0, [r5]
	eor	r0, r0, r8
	add	r8, sp, #296
	ldrd	r6, [r8]
	eor	r1, r1, r9
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r2, sp, #288
	strd	r0, [r4, #24]
	strd	r6, [r4, #88]
	ldrd	r0, [r2]
	eor	r0, r0, r10
	eor	r1, r1, fp
	strd	r0, [r4, #16]
	ldrd	r10, [sp, #224]
	ldrd	r0, [sp, #192]
	add	r9, sp, #280
	ldrd	r8, [r9]
	ldrd	r6, [sp, #232]
	eor	r10, r10, r0
	eor	fp, fp, r1
	strd	r10, [r4, #40]
	ldrd	r0, [sp, #248]
	ldrd	r10, [sp, #208]
	add	r3, sp, #272
	ldrd	r2, [r3]
	eor	r6, r6, r8
	eor	r7, r7, r9
	ldrd	r8, [sp, #216]
	eor	fp, fp, r1
	add	r1, sp, #264
	eor	r8, r8, r2
	eor	r9, r9, r3
	eor	r10, r10, r0
	ldrd	r2, [sp, #200]
	ldrd	r0, [r1]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #56]
	ldrd	r0, [sp, #184]
	ldrd	r2, [sp, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	add	r1, sp, #256
	strd	r2, [r4, #48]
	ldrd	r2, [r1]
	ldrd	r0, [sp, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r4, #32]
	ldrd	r0, [ip, #64]
	ldrd	r2, [ip, #160]
	ldr	r5, [sp, #908]
	eors	r0, r0, r2
	eors	r1, r1, r3
	strd	r0, [r5, #64]
	ldrd	r0, [ip, #72]
	ldrd	r2, [ip, #168]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #72]
	ldrd	r0, [ip, #80]
	ldrd	r2, [ip, #176]
	eors	r2, r2, r0
	eors	r3, r3, r1
	strd	r2, [r5, #80]
	ldrh	r5, [sp, #2628]
	ldrd	r0, [ip, #184]
	ldrd	r2, [ip, #88]
	strd	r8, [r4, #72]
	and	r9, r5, #1
	strd	r10, [r4, #64]
	ubfx	ip, r5, #2, #1
	ubfx	r10, r5, #6, #1
	eors	r2, r2, r0
	eors	r3, r3, r1
	uxth	r0, r9
	movs	r1, #0
	strd	r6, [r4, #80]
	ubfx	lr, r5, #3, #1
	str	r10, [sp, #200]
	strd	r0, [sp, #168]
	mov	r0, ip
	movs	r1, #0
	strd	r0, [sp, #176]
	ubfx	r7, r5, #4, #1
	mov	r0, lr
	movs	r1, #0
	strd	r0, [sp, #192]
	mov	r0, r7
	movs	r1, #0
	strd	r0, [sp, #184]
	ubfx	r10, r5, #8, #1
	ldr	r0, [sp, #200]
	str	r10, [sp, #208]
	movs	r1, #0
	strd	r0, [sp, #200]
	ubfx	r10, r5, #9, #1
	ldr	r0, [sp, #208]
	str	r10, [sp, #216]
	movs	r1, #0
	strd	r0, [sp, #208]
	ubfx	r10, r5, #10, #1
	ldr	r0, [sp, #216]
	str	r10, [sp, #224]
	movs	r1, #0
	strd	r0, [sp, #216]
	ldr	r0, [sp, #224]
	ubfx	r6, r5, #5, #1
	ubfx	fp, r5, #7, #1
	ubfx	r8, r5, #1, #1
	movs	r1, #0
	ubfx	r5, r5, #11, #1
	strd	r0, [sp, #224]
	mov	r0, r5
	movs	r1, #0
	strd	r0, [sp, #232]
	mov	r1, r4
	ldr	r4, [sp, #908]
	strd	r2, [r4, #88]
	ldrd	r2, [sp, #176]
	add	ip, sp, #2720
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #192]
	addw	ip, sp, #2728
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #184]
	movs	r7, #0
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	add	ip, sp, #2736
	strd	r2, [ip]
	negs	r2, r6
	sbc	r3, r7, r7, lsl #1
	addw	ip, sp, #2744
	strd	r2, [ip]
	ldrd	r2, [sp, #200]
	add	r6, sp, #2752
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #208]
	add	r6, sp, #2768
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #216]
	addw	r6, sp, #2776
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #224]
	ldrd	r4, [sp, #168]
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	add	r6, sp, #2784
	strd	r2, [r6]
	ldrd	r6, [sp, #232]
	ldr	ip, [sp, #908]
	mov	r10, fp
	mov	fp, #0
	negs	r10, r10
	sbc	fp, fp, fp, lsl #1
	addw	r3, sp, #2760
	negs	r4, r4
	sbc	r5, r5, r5, lsl #1
	add	r2, sp, #2704
	mov	r9, #0
	strd	r10, [r3]
	add	r0, ip, #96
	strd	r4, [r2]
	addw	lr, sp, #2712
	add	r10, sp, #3408
	negs	r8, r8
	sbc	r9, r9, r9, lsl #1
	negs	r6, r6
	sbc	r7, r7, r7, lsl #1
	addw	r4, sp, #2792
	addw	fp, sp, #2628
	strd	r8, [lr]
	strd	r6, [r4]
	bl	vec_mul
	mov	r3, r10
	ldr	ip, [sp, #908]
	mov	r10, fp
	mov	fp, r3
.L39:
	ldrh	r4, [r10, #2]!
	and	r0, r4, #1
	uxth	r0, r0
	movs	r1, #0
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	add	r3, sp, #2704
	strd	r0, [r3]
	ubfx	r2, r4, #1, #1
	movs	r3, #0
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	ubfx	r9, r4, #2, #1
	addw	r0, sp, #2712
	strd	r2, [r0]
	mov	r2, r9
	movs	r3, #0
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	ubfx	lr, r4, #3, #1
	add	r9, sp, #2720
	strd	r2, [r9]
	mov	r2, lr
	movs	r3, #0
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	ubfx	r7, r4, #4, #1
	addw	r9, sp, #2728
	strd	r2, [r9]
	mov	r2, r7
	movs	r3, #0
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	add	r7, sp, #2736
	strd	r2, [r7]
	ubfx	r5, r4, #6, #1
	ubfx	r6, r4, #5, #1
	movs	r7, #0
	negs	r6, r6
	sbc	r7, r7, r7, lsl #1
	ubfx	r1, r4, #8, #1
	mov	r2, r5
	addw	r9, sp, #2744
	movs	r3, #0
	strd	r6, [r9]
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	ubfx	lr, r4, #10, #1
	mov	r6, r1
	add	r1, sp, #2752
	strd	r2, [r1]
	mov	r2, lr
	movs	r3, #0
	ubfx	r0, r4, #9, #1
	strd	r2, [sp, #168]
	movs	r1, #0
	negs	r2, r0
	sbc	r3, r1, r1, lsl #1
	ldrd	r0, [sp, #168]
	addw	r5, sp, #2776
	strd	r2, [r5]
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
	ubfx	r8, r4, #7, #1
	add	r2, sp, #2784
	mov	r9, #0
	strd	r0, [r2]
	negs	r8, r8
	sbc	r9, r9, r9, lsl #1
	addw	r3, sp, #2760
	add	r0, sp, #2704
	ubfx	r4, r4, #11, #1
	movs	r7, #0
	movs	r5, #0
	strd	r8, [r3]
	negs	r4, r4
	sbc	r5, r5, r5, lsl #1
	negs	r6, r6
	sbc	r7, r7, r7, lsl #1
	mov	r1, fp
	mov	r2, r0
	add	r8, sp, #2768
	addw	r9, sp, #2792
	strd	r4, [r9]
	strd	r6, [r8]
	str	ip, [sp, #36]
	bl	vec_mul
	ldr	ip, [sp, #36]
	add	r4, sp, #2704
	addw	r8, sp, #2712
	ldrd	r0, [ip, #96]
	ldrd	r6, [r8]
	ldrd	r2, [r4]
	ldrd	r4, [ip, #104]
	eors	r3, r3, r1
	eor	r1, r5, r7
	add	r5, sp, #2720
	eors	r2, r2, r0
	eor	r0, r4, r6
	ldrd	r6, [r5]
	ldrd	r4, [ip, #112]
	addw	r8, sp, #2728
	eors	r6, r6, r4
	eors	r7, r7, r5
	ldrd	r4, [r8]
	ldrd	r8, [ip, #120]
	eor	r5, r5, r9
	add	r9, sp, #2736
	eor	r4, r4, r8
	strd	r2, [ip, #96]
	ldrd	r2, [r9]
	ldrd	r8, [ip, #128]
	strd	r0, [ip, #104]
	addw	r0, sp, #2744
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r0]
	ldrd	r0, [ip, #136]
	strd	r6, [ip, #112]
	add	r6, sp, #2752
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r6]
	ldrd	r6, [ip, #144]
	strd	r4, [ip, #120]
	addw	r4, sp, #2760
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [r4]
	ldrd	r4, [ip, #152]
	strd	r8, [ip, #128]
	add	r8, sp, #2768
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [r8]
	ldrd	r8, [ip, #160]
	strd	r0, [ip, #136]
	addw	r0, sp, #2776
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r2, [r0]
	ldrd	r0, [ip, #168]
	strd	r6, [ip, #144]
	add	r6, sp, #2784
	eors	r0, r0, r2
	eors	r1, r1, r3
	ldrd	r2, [r6]
	ldrd	r6, [ip, #176]
	strd	r4, [ip, #152]
	addw	r4, sp, #2792
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [r4]
	ldrd	r4, [ip, #184]
	strd	r8, [ip, #160]
	eors	r3, r3, r5
	ldr	r5, [sp, #904]
	add	fp, fp, #96
	eors	r2, r2, r4
	cmp	fp, r5
	strd	r0, [ip, #168]
	strd	r6, [ip, #176]
	strd	r2, [ip, #184]
	bne	.L39
	add	sp, sp, #9920
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	butterflies_tr, .-butterflies_tr
	.align	2
	.global	fft_tr
	.thumb
	.thumb_func
	.type	fft_tr, %function
fft_tr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	butterflies_tr
	mov	r0, r4
	pop	{r4, lr}
	b	radix_conversions_tr
	.size	fft_tr, .-fft_tr
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 4344
.LC3:
	.word	572662306
	.word	572662306
	.word	1145324612
	.word	1145324612
	.word	202116108
	.word	202116108
	.word	808464432
	.word	808464432
	.word	15728880
	.word	15728880
	.word	251662080
	.word	251662080
	.word	65280
	.word	65280
	.word	16711680
	.word	16711680
	.word	-65536
	.word	0
	.word	0
	.word	65535
	.word	0
	.word	-1
	.word	-1
	.word	0
.LC4:
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
	.word	-1010814196
	.word	787392
	.word	-1072745536
	.word	-214904836
	.word	255591219
	.word	-856477456
	.word	-15929152
	.word	-16515085
	.word	265039932
	.word	1019477232
	.word	-1023212557
	.word	251661327
	.word	859623228
	.word	-821050369
	.word	-1057017025
	.word	4145091
	.word	-821039089
	.word	1019474163
	.word	1069747392
	.word	-202163008
	.word	-1020005569
	.word	1019424975
	.word	-205258756
	.word	1019228223
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
	.word	0
	.word	251719695
	.word	61440
	.word	-268435456
	.word	240
	.word	3840
	.word	15728640
	.word	251719680
	.word	251719695
	.word	983040
	.word	-267452416
	.word	15732480
	.word	0
	.word	251719680
	.word	251658240
	.word	0
	.word	983280
	.word	15728640
	.word	3840
	.word	61455
	.word	61455
	.word	-268435216
	.word	-267452176
	.word	3840
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
	.word	-16777216
	.word	-16711681
	.word	-16777216
	.word	-16776961
	.word	-16777216
	.word	-65281
	.word	-256
	.word	-16711681
	.word	-16711936
	.word	0
	.word	16711680
	.word	-1
	.word	16711680
	.word	16777215
	.word	-16711681
	.word	-65281
	.word	-1
	.word	-65536
	.word	16711680
	.word	-16777216
	.word	16711935
	.word	255
	.word	16776960
	.word	16711935
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
	.word	0
	.word	0
	.word	0
	.word	-65536
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65535
	.word	-65536
	.word	0
	.word	0
	.word	0
	.word	65535
	.word	65535
	.word	-65536
	.word	-65536
	.word	0
	.word	0
	.word	0
	.word	65535
	.word	-65536
	.word	-65536
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
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	-1
.LC0:
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
.LC1:
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
.LC2:
	.short	8
	.short	1300
	.short	3408
	.short	1354
	.short	2341
	.short	1154
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
