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
	.file	"bm.c"
	.text
	.align	2
	.global	bm
	.thumb
	.thumb_func
	.type	bm, %function
bm:
	@ args = 0, pretend = 0, frame = 1368
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1372
	add	r3, sp, #1368
	mov	ip, r3
	movs	r4, #0
	mov	r5, #-2147483648
	movs	r6, #0
	mov	r7, #1073741824
	strd	r4, [r3, #-576]!
	strd	r6, [ip, #-480]!
	str	r0, [sp, #784]
	movs	r2, #88
	mov	fp, r1
	add	r0, sp, #800
	movs	r1, #0
	str	ip, [sp, #20]
	str	r3, [sp, #788]
	bl	memset
	add	r0, sp, #896
	movs	r1, #0
	movs	r2, #88
	bl	memset
	movs	r4, #0
	movs	r5, #0
	ldr	ip, [sp, #20]
	ldr	r10, [sp, #788]
	strd	r4, [sp, #128]
	movs	r6, #0
	movs	r5, #1
	str	r5, [sp, #652]
	str	r6, [sp, #648]
	mov	r4, ip
	b	.L5
.L8:
	ldr	r8, [sp, #128]
	ldr	r1, [fp, #16]
	ldr	r0, [fp, #8]
	ldr	r6, [fp, #12]
	ldr	r3, [fp, #20]
	ldr	ip, [fp, #52]
	sub	r2, r8, #63
	lsrs	r1, r1, r2
	ldmia	fp, {r5, r7}
	str	r1, [sp, #496]
	ldr	r1, [fp, #24]
	lsrs	r1, r1, r2
	lsrs	r5, r5, r2
	str	r1, [sp, #512]
	ldr	r1, [fp, #32]
	str	r5, [sp, #464]
	ldr	r9, [sp, #464]
	lsrs	r0, r0, r2
	lsrs	r1, r1, r2
	rsb	r5, r2, #32
	sub	lr, r8, #95
	str	r0, [sp, #480]
	lsl	r5, r7, r5
	str	r1, [sp, #528]
	lsr	lr, r7, lr
	ldr	r1, [fp, #40]
	ldr	r0, [fp, #28]
	ldr	r8, [fp, #96]
	lsrs	r7, r7, r2
	orr	r5, r9, r5
	str	r7, [sp, #468]
	ldr	r9, [sp, #480]
	str	r5, [sp, #464]
	rsb	r7, r2, #32
	lsrs	r1, r1, r2
	lsl	r7, r6, r7
	orr	r7, r9, r7
	str	r1, [sp, #544]
	ldr	r9, [sp, #128]
	ldr	r1, [sp, #464]
	str	r7, [sp, #480]
	orr	lr, r1, lr
	sub	r7, r9, #95
	ldr	r1, [fp, #48]
	ldr	r9, [sp, #480]
	ldr	r5, [fp, #36]
	str	lr, [sp, #464]
	lsr	r7, r6, r7
	lsrs	r1, r1, r2
	orr	r7, r9, r7
	lsrs	r6, r6, r2
	ldr	lr, [fp, #44]
	str	r1, [sp, #560]
	ldr	r1, [fp, #100]
	str	r7, [sp, #480]
	ldr	r7, [sp, #496]
	str	r6, [sp, #484]
	rsb	r6, r2, #32
	ldr	r9, [sp, #128]
	lsl	r6, r3, r6
	orrs	r6, r6, r7
	str	r6, [sp, #496]
	sub	r6, r9, #95
	ldr	r7, [sp, #496]
	ldr	r9, [sp, #512]
	lsr	r6, r3, r6
	lsrs	r3, r3, r2
	str	r3, [sp, #500]
	rsb	r3, r2, #32
	orrs	r6, r6, r7
	lsl	r3, r0, r3
	orr	r3, r9, r3
	str	r6, [sp, #496]
	ldr	r6, [sp, #128]
	str	r3, [sp, #512]
	ldr	r7, [sp, #512]
	sub	r3, r6, #95
	lsr	r3, r0, r3
	orrs	r3, r3, r7
	str	r3, [sp, #512]
	rsb	r3, r6, #127
	lsls	r1, r1, r3
	str	r1, [sp, #460]
	ldr	r1, [fp, #108]
	ldr	r7, [fp, #112]
	lsls	r1, r1, r3
	str	r1, [sp, #476]
	ldr	r1, [fp, #116]
	lsrs	r0, r0, r2
	lsls	r1, r1, r3
	str	r1, [sp, #492]
	str	r0, [sp, #516]
	rsb	r1, r2, #32
	ldr	r0, [sp, #528]
	lsl	r1, r5, r1
	orrs	r1, r1, r0
	str	r1, [sp, #528]
	mov	r9, r6
	sub	r1, r9, #95
	ldr	r9, [sp, #528]
	ldr	r0, [sp, #544]
	ldr	r6, [fp, #104]
	lsr	r1, r5, r1
	orr	r1, r9, r1
	str	r1, [sp, #528]
	ldr	r1, [fp, #124]
	lsls	r1, r1, r3
	str	r1, [sp, #508]
	rsb	r1, r2, #32
	lsrs	r5, r5, r2
	lsl	r1, lr, r1
	orrs	r1, r1, r0
	str	r5, [sp, #532]
	ldr	r5, [sp, #128]
	str	r1, [sp, #544]
	ldr	r9, [sp, #544]
	sub	r1, r5, #95
	lsr	r1, lr, r1
	orr	r1, r9, r1
	str	r1, [sp, #544]
	ldr	r1, [fp, #132]
	lsr	lr, lr, r2
	lsls	r1, r1, r3
	str	r1, [sp, #524]
	str	lr, [sp, #548]
	rsb	r1, r2, #32
	ldr	lr, [sp, #560]
	ldr	r9, [sp, #460]
	lsl	r1, ip, r1
	orr	r1, lr, r1
	str	r1, [sp, #560]
	sub	r1, r5, #95
	ldr	r5, [sp, #560]
	ldr	lr, [fp, #128]
	lsr	r1, ip, r1
	orrs	r1, r1, r5
	str	r1, [sp, #560]
	ldr	r1, [fp, #140]
	ldr	r5, [fp, #144]
	lsls	r1, r1, r3
	str	r1, [sp, #540]
	sub	r1, r3, #32
	lsl	r1, r8, r1
	orr	r1, r9, r1
	str	r1, [sp, #460]
	lsr	ip, ip, r2
	str	ip, [sp, #564]
	rsb	r1, r3, #32
	ldr	ip, [sp, #460]
	lsr	r1, r8, r1
	orr	r1, ip, r1
	str	r1, [sp, #460]
	ldr	r1, [fp, #148]
	ldr	ip, [fp, #136]
	lsl	r8, r8, r3
	lsls	r1, r1, r3
	str	r8, [sp, #456]
	add	r9, sp, #456
	add	r8, sp, #464
	str	r1, [sp, #556]
	ldrd	r0, [r9]
	ldrd	r8, [r8]
	orr	r0, r0, r8
	orr	r1, r1, r9
	add	r9, sp, #1080
	strd	r0, [r9]
	ldr	r0, [sp, #476]
	sub	r1, r3, #32
	lsl	r1, r6, r1
	orrs	r1, r1, r0
	str	r1, [sp, #476]
	ldr	r8, [sp, #476]
	rsb	r1, r3, #32
	lsr	r1, r6, r1
	orr	r1, r8, r1
	lsls	r6, r6, r3
	str	r6, [sp, #472]
	str	r1, [sp, #476]
	add	r9, sp, #472
	add	r8, sp, #480
	ldrd	r0, [r9]
	ldrd	r8, [r8]
	orr	r0, r0, r8
	orr	r1, r1, r9
	add	r9, sp, #1088
	strd	r0, [r9]
	ldr	r0, [sp, #492]
	sub	r1, r3, #32
	lsl	r1, r7, r1
	orrs	r1, r1, r0
	str	r1, [sp, #492]
	ldr	r6, [sp, #492]
	rsb	r1, r3, #32
	lsr	r1, r7, r1
	orrs	r1, r1, r6
	lsls	r7, r7, r3
	str	r1, [sp, #492]
	str	r7, [sp, #488]
	ldr	r7, [fp, #120]
	ldr	r8, [sp, #508]
	ldr	r9, [sp, #524]
	ldr	r0, [sp, #540]
	ldr	r6, [sp, #556]
	sub	r1, r3, #32
	lsl	r1, r7, r1
	orr	r1, r8, r1
	str	r1, [sp, #508]
	sub	r1, r3, #32
	lsl	r1, lr, r1
	orr	r1, r9, r1
	str	r1, [sp, #524]
	sub	r1, r3, #32
	lsl	r1, ip, r1
	orrs	r1, r1, r0
	str	r1, [sp, #540]
	sub	r1, r3, #32
	lsl	r1, r5, r1
	orrs	r1, r1, r6
	add	r9, sp, #488
	add	r8, sp, #496
	str	r1, [sp, #556]
	ldrd	r0, [r9]
	ldrd	r8, [r8]
	orr	r0, r0, r8
	orr	r1, r1, r9
	add	r9, sp, #1096
	strd	r0, [r9]
	ldr	r0, [sp, #508]
	ldr	r6, [sp, #524]
	ldr	r8, [sp, #556]
	rsb	r1, r3, #32
	lsr	r1, r7, r1
	orrs	r1, r1, r0
	str	r1, [sp, #508]
	lsl	r1, r7, r3
	str	r1, [sp, #504]
	rsb	r1, r3, #32
	lsr	r1, lr, r1
	orrs	r1, r1, r6
	ldr	r7, [sp, #540]
	str	r1, [sp, #524]
	rsb	r1, r3, #32
	lsr	r1, ip, r1
	orrs	r1, r1, r7
	str	r1, [sp, #540]
	rsb	r1, r3, #32
	lsr	r1, r5, r1
	orr	r1, r8, r1
	add	r7, sp, #504
	add	r6, sp, #512
	str	r1, [sp, #556]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	lsl	lr, lr, r3
	str	lr, [sp, #520]
	orrs	r0, r0, r6
	orrs	r1, r1, r7
	add	r9, sp, #520
	add	r7, sp, #1104
	add	r8, sp, #528
	strd	r0, [r7]
	ldrd	r0, [r9]
	ldrd	r8, [r8]
	lsl	ip, ip, r3
	str	ip, [sp, #536]
	orr	r0, r0, r8
	orr	r1, r1, r9
	add	r7, sp, #536
	add	r9, sp, #1112
	add	r6, sp, #544
	strd	r0, [r9]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	lsls	r5, r5, r3
	str	r5, [sp, #552]
	orrs	r0, r0, r6
	orrs	r1, r1, r7
	add	r9, sp, #552
	add	r7, sp, #1120
	add	r8, sp, #560
	strd	r0, [r7]
	ldrd	r0, [r9]
	ldrd	r8, [r8]
	orr	r0, r0, r8
	orr	r1, r1, r9
	add	r9, sp, #1128
	strd	r0, [r9]
	ldr	r5, [fp, #56]
	ldr	r0, [fp, #156]
	ldr	r7, [fp, #60]
	ldr	r6, [fp, #152]
	ldr	r1, [fp, #164]
	lsrs	r5, r5, r2
	str	r5, [sp, #576]
	ldr	ip, [sp, #576]
	ldr	r5, [fp, #160]
	lsls	r0, r0, r3
	rsb	lr, r2, #32
	str	r0, [sp, #572]
	lsl	lr, r7, lr
	ldr	r0, [sp, #128]
	ldr	r9, [sp, #572]
	orr	lr, ip, lr
	str	lr, [sp, #576]
	sub	lr, r0, #95
	ldr	r0, [fp, #172]
	ldr	r8, [sp, #576]
	ldr	ip, [fp, #76]
	lsls	r0, r0, r3
	str	r0, [sp, #604]
	ldr	r0, [fp, #72]
	lsrs	r0, r0, r2
	str	r0, [sp, #608]
	ldr	r0, [fp, #180]
	lsls	r0, r0, r3
	str	r0, [sp, #620]
	sub	r0, r3, #32
	lsl	r0, r6, r0
	orr	r0, r9, r0
	str	r0, [sp, #572]
	lsr	lr, r7, lr
	lsrs	r7, r7, r2
	str	r7, [sp, #580]
	rsb	r0, r3, #32
	ldr	r7, [sp, #572]
	lsr	r0, r6, r0
	lsls	r1, r1, r3
	orrs	r0, r0, r7
	str	r1, [sp, #588]
	str	r0, [sp, #572]
	ldr	r1, [fp, #64]
	ldr	r0, [fp, #80]
	ldr	r7, [fp, #176]
	lsrs	r1, r1, r2
	orr	lr, r8, lr
	lsrs	r0, r0, r2
	lsls	r6, r6, r3
	str	r1, [sp, #592]
	str	lr, [sp, #576]
	ldr	r1, [fp, #68]
	ldr	lr, [fp, #168]
	str	r0, [sp, #624]
	str	r6, [sp, #568]
	sub	r0, r3, #32
	ldr	r8, [sp, #588]
	ldr	r6, [fp, #84]
	lsl	r0, r5, r0
	orr	r0, r8, r0
	str	r0, [sp, #588]
	ldr	r9, [sp, #588]
	ldr	r8, [sp, #128]
	rsb	r0, r3, #32
	lsr	r0, r5, r0
	orr	r0, r9, r0
	str	r0, [sp, #588]
	ldr	r0, [fp, #188]
	lsls	r5, r5, r3
	lsls	r0, r0, r3
	str	r0, [sp, #636]
	str	r5, [sp, #584]
	rsb	r0, r2, #32
	ldr	r5, [sp, #592]
	lsl	r0, r1, r0
	orrs	r0, r0, r5
	str	r0, [sp, #592]
	ldr	r9, [sp, #592]
	ldr	r5, [fp, #184]
	sub	r0, r8, #95
	lsr	r0, r1, r0
	orr	r0, r9, r0
	str	r0, [sp, #592]
	ldr	r0, [fp, #88]
	ldr	r9, [sp, #608]
	lsrs	r0, r0, r2
	lsrs	r1, r1, r2
	str	r0, [sp, #640]
	str	r1, [sp, #596]
	ldr	r0, [sp, #604]
	sub	r1, r3, #32
	lsl	r1, lr, r1
	orrs	r1, r1, r0
	str	r1, [sp, #604]
	rsb	r0, r2, #32
	rsb	r1, r3, #32
	lsr	r1, lr, r1
	lsl	r0, ip, r0
	lsl	lr, lr, r3
	ldr	r8, [sp, #604]
	str	lr, [sp, #600]
	orr	r0, r9, r0
	ldr	lr, [sp, #128]
	str	r0, [sp, #608]
	orr	r1, r8, r1
	sub	r0, lr, #95
	ldr	r8, [sp, #608]
	ldr	r9, [sp, #620]
	ldr	lr, [sp, #624]
	str	r1, [sp, #604]
	lsr	r0, ip, r0
	orr	r0, r8, r0
	str	r0, [sp, #608]
	sub	r0, r3, #32
	lsl	r0, r7, r0
	orr	r0, r9, r0
	str	r0, [sp, #620]
	lsr	ip, ip, r2
	str	ip, [sp, #612]
	rsb	r0, r3, #32
	ldr	ip, [sp, #620]
	ldr	r1, [fp, #92]
	lsr	r0, r7, r0
	orr	r0, ip, r0
	str	r0, [sp, #620]
	rsb	r0, r2, #32
	lsl	r0, r6, r0
	orr	r0, lr, r0
	str	r0, [sp, #624]
	ldr	r8, [sp, #636]
	ldr	r9, [sp, #640]
	ldr	ip, [sp, #128]
	ldr	lr, [sp, #624]
	sub	r0, r3, #32
	lsl	r0, r5, r0
	orr	r0, r8, r0
	str	r0, [sp, #636]
	rsb	r0, r2, #32
	lsl	r0, r1, r0
	orr	r0, r9, r0
	str	r0, [sp, #640]
	sub	r0, ip, #95
	lsr	r0, r6, r0
	lsls	r7, r7, r3
	orr	r0, lr, r0
	str	r7, [sp, #616]
	str	r0, [sp, #624]
	ldr	r7, [sp, #636]
	ldr	r9, [sp, #640]
	rsb	r0, r3, #32
	lsr	r0, r5, r0
	orrs	r0, r0, r7
	str	r0, [sp, #636]
	sub	r0, ip, #95
	lsr	r0, r1, r0
	orr	r0, r9, r0
	lsrs	r1, r1, r2
	str	r0, [sp, #640]
	str	r1, [sp, #644]
	add	r0, sp, #576
	add	r1, sp, #568
	lsrs	r6, r6, r2
	lsls	r5, r5, r3
	ldrd	r2, [r1]
	ldrd	r0, [r0]
	str	r6, [sp, #628]
	add	r7, sp, #584
	add	r6, sp, #592
	orrs	r2, r2, r0
	orrs	r3, r3, r1
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	add	r9, sp, #600
	orrs	r1, r1, r7
	add	r8, sp, #608
	add	r7, sp, #1136
	strd	r2, [r7]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	orrs	r0, r0, r6
	orr	r3, r3, r9
	add	r7, sp, #616
	add	r9, sp, #1144
	add	r6, sp, #624
	strd	r0, [r9]
	ldrd	r0, [r7]
	ldrd	r6, [r6]
	orr	r2, r2, r8
	orrs	r1, r1, r7
	add	r9, sp, #632
	str	r5, [sp, #632]
	add	r7, sp, #1152
	add	r8, sp, #640
	strd	r2, [r7]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	orrs	r0, r0, r6
	orr	r3, r3, r9
	orr	r2, r2, r8
	add	r9, sp, #1160
	add	ip, sp, #1168
	strd	r0, [r9]
	strd	r2, [ip]
.L3:
	add	r0, sp, #984
	mov	r1, r10
	add	r2, sp, #1080
	bl	vec_mul
	add	r0, sp, #1072
	ldrd	r6, [r0]
	add	r2, sp, #1064
	add	r5, sp, #1056
	ldrd	r0, [r2]
	ldrd	r2, [r5]
	movs	r5, #0
	str	r7, [sp, #120]
	str	r5, [sp, #124]
	ldrd	r8, [sp, #120]
	str	r1, [sp, #664]
	eor	r7, r7, r9
	str	r5, [sp, #668]
	add	r9, sp, #664
	eor	r6, r6, r8
	ldrd	r8, [r9]
	eor	r0, r0, r8
	eor	r1, r1, r9
	str	r3, [sp, #672]
	str	r5, [sp, #676]
	lsr	r8, r6, #16
	lsr	r9, r0, #16
	add	ip, sp, #672
	str	r8, [sp, #168]
	str	r9, [sp, #176]
	ldrd	r8, [ip]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #56]
	ldr	r9, [sp, #56]
	ldr	r8, [sp, #176]
	ldr	r5, [sp, #1052]
	ldr	r3, [sp, #1044]
	str	r5, [sp, #680]
	orr	r8, r8, r1, lsl #16
	movs	r2, #0
	lsr	r9, r9, #16
	str	r2, [sp, #684]
	str	r8, [sp, #176]
	str	r9, [sp, #184]
	add	r8, sp, #680
	add	r9, sp, #1048
	str	r3, [sp, #688]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	ldr	r5, [sp, #168]
	eor	r2, r2, r8
	eor	r3, r3, r9
	orr	r5, r5, r7, lsl #16
	strd	r2, [sp, #80]
	ldr	r3, [sp, #1036]
	str	r5, [sp, #168]
	lsr	r8, r1, #16
	lsrs	r5, r7, #16
	movs	r2, #0
	str	r2, [sp, #692]
	str	r3, [sp, #696]
	str	r5, [sp, #172]
	str	r8, [sp, #180]
	ldr	ip, [sp, #60]
	ldr	r9, [sp, #184]
	ldr	lr, [sp, #80]
	ldr	r5, [sp, #1020]
	orr	r9, r9, ip, lsl #16
	str	r9, [sp, #184]
	add	r8, sp, #1040
	add	r9, sp, #688
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [sp, #168]
	strd	r2, [sp, #48]
	movs	r2, #0
	eor	r7, r7, r9
	str	r2, [sp, #700]
	eor	r6, r6, r8
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #1028]
	str	r5, [sp, #712]
	ldrd	r8, [sp, #176]
	lsrs	r2, r2, #16
	eor	r1, r1, r9
	str	r2, [sp, #200]
	lsr	r9, ip, #16
	str	r3, [sp, #704]
	add	r2, sp, #1032
	add	r3, sp, #696
	eor	r0, r0, r8
	str	r9, [sp, #188]
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #64]
	movs	r3, #0
	lsr	r8, r6, #8
	lsr	r9, r0, #8
	lsr	lr, lr, #16
	str	r3, [sp, #708]
	str	r8, [sp, #264]
	ldrd	r2, [sp, #56]
	str	r9, [sp, #272]
	ldrd	r8, [sp, #184]
	mov	ip, lr
	ldr	lr, [sp, #84]
	eor	r2, r2, r8
	orr	ip, ip, lr, lsl #16
	eor	r3, r3, r9
	strd	r2, [sp, #104]
	lsr	r9, lr, #16
	str	ip, [sp, #192]
	ldr	lr, [sp, #52]
	ldr	ip, [sp, #200]
	ldr	r2, [sp, #64]
	str	r9, [sp, #196]
	orr	ip, ip, lr, lsl #16
	lsrs	r2, r2, #16
	str	ip, [sp, #200]
	add	r3, sp, #704
	str	r2, [sp, #208]
	add	r2, sp, #1024
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #72]
	ldr	r8, [sp, #264]
	ldr	r9, [sp, #272]
	ldr	ip, [sp, #104]
	ldr	r5, [sp, #1012]
	orr	r8, r8, r7, lsl #24
	orr	r9, r9, r1, lsl #24
	movs	r3, #0
	str	r3, [sp, #716]
	str	r8, [sp, #264]
	ldrd	r2, [sp, #80]
	str	r9, [sp, #272]
	ldrd	r8, [sp, #192]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #112]
	ldr	r2, [sp, #72]
	str	r5, [sp, #720]
	lsrs	r2, r2, #16
	lsr	r9, lr, #16
	lsr	ip, ip, #8
	str	r2, [sp, #216]
	add	r3, sp, #712
	add	r2, sp, #1016
	str	ip, [sp, #280]
	ldr	lr, [sp, #68]
	ldr	ip, [sp, #208]
	str	r9, [sp, #204]
	ldrd	r8, [r3]
	ldrd	r2, [r2]
	orr	ip, ip, lr, lsl #16
	eor	r8, r8, r2
	ldr	lr, [sp, #108]
	str	ip, [sp, #208]
	ldr	r2, [sp, #112]
	ldr	ip, [sp, #280]
	ldr	r5, [sp, #1004]
	eor	r9, r9, r3
	strd	r8, [sp, #80]
	orr	ip, ip, lr, lsl #24
	lsr	r8, r7, #8
	lsr	r9, r1, #8
	movs	r3, #0
	lsrs	r2, r2, #8
	str	r3, [sp, #724]
	str	r5, [sp, #728]
	str	r8, [sp, #268]
	str	r9, [sp, #276]
	str	ip, [sp, #280]
	str	r2, [sp, #288]
	ldrd	r2, [sp, #48]
	ldrd	r8, [sp, #200]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #56]
	ldr	r9, [sp, #80]
	ldr	r3, [sp, #68]
	ldr	r5, [sp, #216]
	ldr	r8, [sp, #76]
	ldr	ip, [sp, #56]
	lsr	r9, r9, #16
	str	r9, [sp, #224]
	orr	r5, r5, r8, lsl #16
	lsrs	r3, r3, #16
	add	r9, sp, #720
	add	r8, sp, #1008
	str	r3, [sp, #212]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #264
	ldrd	r8, [r9]
	strd	r2, [sp, #88]
	ldr	r3, [sp, #996]
	str	r5, [sp, #216]
	movs	r2, #0
	str	r3, [sp, #736]
	add	r3, sp, #272
	eor	r7, r7, r9
	eor	r6, r6, r8
	ldr	r9, [sp, #116]
	ldr	r8, [sp, #288]
	str	r2, [sp, #732]
	ldrd	r2, [r3]
	orr	r8, r8, r9, lsl #24
	eors	r1, r1, r3
	eors	r0, r0, r2
	str	r8, [sp, #288]
	ldrd	r2, [sp, #64]
	ldrd	r8, [sp, #208]
	lsr	r5, lr, #8
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #64]
	str	r5, [sp, #284]
	ldr	r8, [sp, #84]
	ldr	r5, [sp, #224]
	ldr	r3, [sp, #76]
	ldr	r9, [sp, #88]
	orr	r5, r5, r8, lsl #16
	lsr	ip, ip, #8
	lsrs	r3, r3, #16
	lsr	r9, r9, #16
	str	ip, [sp, #296]
	str	r3, [sp, #220]
	str	r5, [sp, #224]
	add	r8, sp, #1000
	str	r9, [sp, #232]
	add	r9, sp, #728
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #96]
	ldr	r3, [sp, #988]
	ldr	lr, [sp, #296]
	str	r3, [sp, #744]
	lsr	r8, r0, #4
	movs	r2, #0
	add	r9, sp, #280
	str	r2, [sp, #740]
	str	r8, [sp, #368]
	ldrd	r2, [sp, #104]
	ldrd	r8, [r9]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #136]
	ldr	r3, [sp, #64]
	ldr	r2, [sp, #60]
	ldr	ip, [sp, #116]
	lsrs	r3, r3, #8
	orr	lr, lr, r2, lsl #24
	ldrd	r8, [sp, #216]
	str	r3, [sp, #304]
	ldrd	r2, [sp, #72]
	eor	r8, r8, r2
	eor	r9, r9, r3
	lsrs	r5, r6, #4
	strd	r8, [sp, #72]
	ldr	r9, [sp, #96]
	str	r5, [sp, #360]
	ldr	r8, [sp, #92]
	ldr	r5, [sp, #232]
	ldr	r3, [sp, #84]
	str	lr, [sp, #296]
	lsr	r9, r9, #16
	orr	r5, r5, r8, lsl #16
	lsrs	r3, r3, #16
	str	r9, [sp, #240]
	add	r8, sp, #992
	add	r9, sp, #736
	str	r3, [sp, #228]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #104]
	ldr	r3, [sp, #360]
	str	r5, [sp, #232]
	orr	r3, r3, r7, lsl #28
	lsr	ip, ip, #8
	movs	r2, #0
	str	ip, [sp, #292]
	str	r2, [sp, #748]
	str	r3, [sp, #360]
	ldr	r8, [sp, #136]
	ldr	lr, [sp, #304]
	ldr	r5, [sp, #368]
	ldr	ip, [sp, #60]
	lsr	r8, r8, #4
	add	r9, sp, #288
	str	r8, [sp, #376]
	ldrd	r2, [r9]
	ldrd	r8, [sp, #112]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #48]
	ldr	r3, [sp, #72]
	ldr	r2, [sp, #68]
	lsrs	r3, r3, #8
	orr	lr, lr, r2, lsl #24
	ldrd	r8, [sp, #224]
	str	r3, [sp, #312]
	ldrd	r2, [sp, #80]
	eor	r8, r8, r2
	eor	r9, r9, r3
	orr	r5, r5, r1, lsl #28
	strd	r8, [sp, #80]
	ldr	r9, [sp, #104]
	ldr	r8, [sp, #100]
	str	r5, [sp, #368]
	ldr	r3, [sp, #92]
	ldr	r5, [sp, #240]
	str	lr, [sp, #304]
	lsr	r9, r9, #16
	orr	r5, r5, r8, lsl #16
	lsrs	r3, r3, #16
	str	r9, [sp, #248]
	add	r8, sp, #984
	add	r9, sp, #744
	str	r3, [sp, #236]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #112]
	ldr	lr, [sp, #376]
	ldr	r2, [sp, #140]
	ldr	r3, [sp, #48]
	str	r5, [sp, #240]
	lsr	ip, ip, #8
	lsr	r9, r7, #4
	orr	lr, lr, r2, lsl #28
	str	ip, [sp, #300]
	lsrs	r3, r3, #4
	lsr	ip, r1, #4
	str	r9, [sp, #364]
	str	ip, [sp, #372]
	str	lr, [sp, #376]
	str	r3, [sp, #384]
	add	r3, sp, #296
	ldrd	r8, [r3]
	ldrd	r2, [sp, #56]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #56]
	ldr	r8, [sp, #312]
	ldr	r9, [sp, #76]
	ldr	r5, [sp, #68]
	ldr	ip, [sp, #80]
	ldr	lr, [sp, #56]
	orr	r8, r8, r9, lsl #24
	ldrd	r2, [sp, #88]
	str	r8, [sp, #312]
	ldrd	r8, [sp, #232]
	lsrs	r5, r5, #8
	eor	r8, r8, r2
	eor	r9, r9, r3
	str	r5, [sp, #308]
	strd	r8, [sp, #88]
	ldr	r5, [sp, #248]
	ldr	r8, [sp, #108]
	ldr	r3, [sp, #100]
	ldr	r9, [sp, #112]
	orr	r5, r5, r8, lsl #16
	lsrs	r3, r3, #16
	str	r5, [sp, #248]
	add	r5, sp, #360
	str	r3, [sp, #244]
	ldrd	r2, [r5]
	lsr	ip, ip, #8
	eors	r3, r3, r7
	lsr	r9, r9, #16
	add	r7, sp, #368
	eors	r2, r2, r6
	str	ip, [sp, #320]
	ldrd	r6, [r7]
	ldr	ip, [sp, #52]
	str	r9, [sp, #256]
	ldr	r8, [sp, #140]
	ldr	r9, [sp, #384]
	ldr	r5, [sp, #76]
	strd	r2, [sp, #144]
	orr	r9, r9, ip, lsl #28
	lsr	r8, r8, #4
	lsr	lr, lr, #4
	add	r3, sp, #304
	lsrs	r5, r5, #8
	eors	r0, r0, r6
	str	r8, [sp, #380]
	str	r9, [sp, #384]
	str	lr, [sp, #392]
	ldrd	r8, [r3]
	ldrd	r2, [sp, #64]
	str	r5, [sp, #316]
	ldr	r6, [sp, #320]
	ldr	r7, [sp, #84]
	ldr	ip, [sp, #88]
	ldr	r5, [sp, #256]
	orr	r6, r6, r7, lsl #24
	eor	r8, r8, r2
	eor	r9, r9, r3
	str	r6, [sp, #320]
	ldrd	r2, [sp, #96]
	ldrd	r6, [sp, #240]
	eors	r7, r7, r3
	ldr	r3, [sp, #108]
	eors	r6, r6, r2
	strd	r6, [sp, #96]
	lsrs	r3, r3, #16
	ldr	r6, [sp, #116]
	ldr	r7, [sp, #144]
	str	r3, [sp, #252]
	add	r1, sp, #376
	and	lr, r0, #15
	ldrd	r2, [sp, #136]
	ldrd	r0, [r1]
	lsr	ip, ip, #8
	str	ip, [sp, #328]
	orr	r5, r5, r6, lsl #16
	and	ip, r7, #15
	ldr	r6, [sp, #392]
	ldr	r7, [sp, #60]
	str	r5, [sp, #256]
	eors	r2, r2, r0
	orr	r6, r6, r7, lsl #28
	lsr	r0, r8, #4
	add	r1, sp, #312
	str	r6, [sp, #392]
	str	r0, [sp, #400]
	ldrd	r6, [r1]
	ldrd	r0, [sp, #72]
	eors	r6, r6, r0
	eors	r7, r7, r1
	strd	r6, [sp, #64]
	ldr	r0, [sp, #96]
	ldr	r6, [sp, #328]
	ldr	r7, [sp, #92]
	ldr	r5, [sp, #52]
	orr	r6, r6, r7, lsl #24
	lsrs	r0, r0, #8
	lsrs	r5, r5, #4
	str	r6, [sp, #328]
	str	r0, [sp, #336]
	ldrd	r6, [sp, #248]
	ldrd	r0, [sp, #104]
	str	r5, [sp, #388]
	ldr	r5, [sp, #84]
	eors	r6, r6, r0
	eors	r7, r7, r1
	lsrs	r5, r5, #8
	str	r5, [sp, #324]
	strd	r6, [sp, #72]
	ldr	r1, [sp, #116]
	add	r3, sp, #384
	lsrs	r1, r1, #16
	ldrd	r6, [r3]
	str	r1, [sp, #260]
	and	r1, r2, #15
	ldrd	r2, [sp, #48]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [sp, #104]
	ldr	r7, [sp, #64]
	ldr	r6, [sp, #400]
	lsrs	r7, r7, #4
	str	r7, [sp, #408]
	orr	r6, r6, r9, lsl #28
	add	r7, sp, #320
	ldrd	r2, [r7]
	str	r6, [sp, #400]
	ldrd	r6, [sp, #80]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #48]
	ldr	r2, [sp, #336]
	ldr	r3, [sp, #100]
	orr	r2, r2, r3, lsl #24
	add	r3, sp, #256
	ldrd	r6, [r3]
	str	r2, [sp, #336]
	ldrd	r2, [sp, #112]
	movw	r5, #27030
	asr	r0, r5, lr
	asr	ip, r5, ip
	ldr	r5, [sp, #60]
	ldr	lr, [sp, #92]
	eors	r6, r6, r2
	eors	r7, r7, r3
	strd	r6, [sp, #80]
	lsrs	r5, r5, #4
	ldr	r6, [sp, #104]
	str	r5, [sp, #396]
	lsr	lr, lr, #8
	add	r7, sp, #392
	ldrd	r2, [r7]
	str	lr, [sp, #332]
	ldr	r5, [sp, #72]
	and	lr, r6, #15
	ldrd	r6, [sp, #56]
	lsrs	r5, r5, #8
	eors	r2, r2, r6
	eors	r3, r3, r7
	str	r5, [sp, #344]
	movw	r5, #27030
	asr	r1, r5, r1
	strd	r2, [sp, #104]
	ldr	r5, [sp, #68]
	ldr	r3, [sp, #408]
	ldr	r6, [sp, #48]
	lsr	r2, r9, #4
	orr	r3, r3, r5, lsl #28
	lsrs	r6, r6, #4
	add	r7, sp, #328
	str	r2, [sp, #404]
	str	r3, [sp, #408]
	str	r6, [sp, #416]
	ldrd	r2, [r7]
	ldrd	r6, [sp, #88]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #56]
	ldr	r5, [sp, #76]
	ldr	r3, [sp, #344]
	ldr	r2, [sp, #100]
	ldr	r6, [sp, #80]
	ldr	r9, [sp, #416]
	orr	r3, r3, r5, lsl #24
	lsrs	r2, r2, #8
	add	r5, sp, #400
	str	r2, [sp, #340]
	and	r7, r1, #1
	and	r0, r0, #1
	ldr	r1, [sp, #104]
	str	r3, [sp, #344]
	and	ip, ip, #1
	ldrd	r2, [r5]
	lsrs	r6, r6, #8
	orr	ip, r0, ip, lsl #1
	movw	r0, #27030
	str	r6, [sp, #352]
	asr	r6, r0, lr
	and	lr, r1, #15
	ldr	r1, [sp, #56]
	ldr	r0, [sp, #52]
	ldr	r5, [sp, #76]
	eor	r2, r2, r8
	ldr	r8, [sp, #68]
	lsrs	r1, r1, #4
	orr	r9, r9, r0, lsl #28
	str	r1, [sp, #424]
	lsr	r8, r8, #4
	add	r1, sp, #336
	str	r8, [sp, #412]
	str	r9, [sp, #416]
	ldrd	r8, [r1]
	ldrd	r0, [sp, #96]
	eor	r8, r8, r0
	eor	r9, r9, r1
	strd	r8, [sp, #88]
	ldr	r8, [sp, #352]
	ldr	r9, [sp, #84]
	ldr	r1, [sp, #60]
	orr	r8, r8, r9, lsl #24
	lsrs	r5, r5, #8
	orr	ip, r7, ip, lsl #1
	movw	r0, #27030
	add	r7, sp, #408
	str	r5, [sp, #348]
	str	r8, [sp, #352]
	asr	lr, r0, lr
	and	r8, r6, #1
	and	r5, r2, #15
	ldr	r9, [sp, #52]
	ldr	r0, [sp, #424]
	ldrd	r2, [r7]
	ldrd	r6, [sp, #64]
	lsr	r9, r9, #4
	orr	r0, r0, r1, lsl #28
	eors	r2, r2, r6
	str	r9, [sp, #420]
	str	r0, [sp, #424]
	ldr	r6, [sp, #88]
	ldr	r9, [sp, #84]
	lsrs	r6, r6, #4
	add	r7, sp, #344
	str	r6, [sp, #432]
	ldrd	r0, [r7]
	ldrd	r6, [sp, #72]
	eors	r1, r1, r7
	eors	r0, r0, r6
	add	r7, sp, #416
	movw	r6, #27030
	orr	ip, r8, ip, lsl #1
	asr	r5, r6, r5
	and	r8, r2, #15
	ldrd	r2, [r7]
	ldrd	r6, [sp, #48]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #72]
	ldr	r2, [sp, #432]
	ldr	r3, [sp, #92]
	lsr	r9, r9, #8
	str	r9, [sp, #356]
	lsrs	r6, r0, #4
	orr	r2, r2, r3, lsl #28
	add	r7, sp, #352
	str	r6, [sp, #440]
	str	r2, [sp, #432]
	ldr	r9, [sp, #60]
	ldrd	r2, [r7]
	ldrd	r6, [sp, #80]
	lsr	r9, r9, #4
	str	r9, [sp, #428]
	eors	r2, r2, r6
	movw	r9, #27030
	ldr	r6, [sp, #72]
	asr	r8, r9, r8
	and	lr, lr, #1
	add	r9, sp, #424
	str	r8, [sp, #48]
	eors	r3, r3, r7
	orr	lr, lr, ip, lsl #1
	and	ip, r6, #15
	ldrd	r6, [r9]
	ldrd	r8, [sp, #56]
	ldr	r9, [sp, #440]
	eor	r6, r6, r8
	ldr	r8, [sp, #92]
	orr	r9, r9, r1, lsl #28
	str	r9, [sp, #440]
	lsr	r8, r8, #4
	ldr	r9, [sp, #48]
	str	r8, [sp, #436]
	and	r5, r5, #1
	lsr	r8, r2, #4
	str	r8, [sp, #448]
	orr	lr, r5, lr, lsl #1
	movw	r8, #27030
	and	r5, r9, #1
	add	r7, sp, #432
	and	r9, r6, #15
	str	r9, [sp, #48]
	ldrd	r6, [r7]
	asr	ip, r8, ip
	ldrd	r8, [sp, #88]
	ldr	r7, [sp, #448]
	eor	r8, r8, r6
	lsrs	r6, r1, #4
	str	r6, [sp, #444]
	orr	r7, r7, r3, lsl #28
	ldr	r6, [sp, #48]
	str	r7, [sp, #448]
	orr	lr, r5, lr, lsl #1
	add	r7, sp, #440
	movw	r5, #27030
	asr	r9, r5, r6
	ldrd	r6, [r7]
	lsrs	r5, r3, #4
	eors	r0, r0, r6
	add	r1, sp, #448
	str	r5, [sp, #452]
	and	r5, r0, #15
	ldrd	r0, [r1]
	and	ip, ip, #1
	movw	r7, #27030
	and	r8, r8, #15
	orr	lr, ip, lr, lsl #1
	and	r6, r9, #1
	asr	r8, r7, r8
	eors	r2, r2, r0
	orr	lr, r6, lr, lsl #1
	asr	r0, r7, r5
	and	r8, r8, #1
	and	r2, r2, #15
	orr	lr, r8, lr, lsl #1
	asr	r2, r7, r2
	and	r0, r0, #1
	orr	r0, r0, lr, lsl #1
	and	r2, r2, #1
	orr	r5, r2, r0, lsl #1
	uxth	r3, r5
	ldr	r0, [sp, #652]
	str	r3, [sp, #656]
	bl	gf_inv
	mov	r1, r0
	ldr	r0, [sp, #656]
	bl	gf_mul
	and	r6, r0, #1
	strh	r6, [sp, #48]	@ movhi
	ubfx	r2, r0, #9, #1
	str	r2, [sp, #112]
	ldrh	r2, [sp, #48]
	ubfx	r3, r0, #10, #1
	ubfx	r9, r0, #1, #1
	str	r3, [sp, #136]
	uxth	r2, r2
	movs	r3, #0
	strd	r2, [sp, #48]
	ubfx	ip, r0, #3, #1
	mov	r2, r9
	movs	r3, #0
	ubfx	lr, r0, #4, #1
	strd	r2, [sp, #56]
	mov	r2, ip
	movs	r3, #0
	strd	r2, [sp, #64]
	ubfx	r7, r0, #5, #1
	mov	r2, lr
	ubfx	r1, r0, #7, #1
	movs	r3, #0
	str	r1, [sp, #88]
	strd	r2, [sp, #72]
	mov	r2, r7
	movs	r3, #0
	strd	r2, [sp, #80]
	ldr	r2, [sp, #88]
	ubfx	r1, r0, #8, #1
	movs	r3, #0
	strd	r2, [sp, #96]
	mov	r2, r1
	movs	r3, #0
	strd	r2, [sp, #104]
	ldr	r2, [sp, #112]
	movs	r3, #0
	strd	r2, [sp, #112]
	ldr	r2, [sp, #136]
	movs	r3, #0
	strd	r2, [sp, #88]
	ldrd	r2, [sp, #48]
	add	ip, sp, #1176
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #56]
	add	ip, sp, #1184
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #64]
	add	ip, sp, #1200
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #72]
	add	ip, sp, #1208
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [ip]
	ldrd	r2, [sp, #80]
	ubfx	r6, r0, #6, #1
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	movs	r7, #0
	add	ip, sp, #1216
	strd	r2, [ip]
	negs	r2, r6
	sbc	r3, r7, r7, lsl #1
	add	ip, sp, #1224
	strd	r2, [ip]
	ldrd	r2, [sp, #96]
	add	r6, sp, #1232
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #104]
	add	r6, sp, #1240
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #112]
	add	r6, sp, #1248
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	strd	r2, [r6]
	ldrd	r2, [sp, #88]
	ubfx	r8, r0, #2, #1
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
	ubfx	r0, r0, #11, #1
	movs	r1, #0
	add	r6, sp, #1256
	mov	r9, #0
	negs	r8, r8
	sbc	r9, r9, r9, lsl #1
	strd	r2, [r6]
	add	r7, sp, #1192
	negs	r2, r0
	sbc	r3, r1, r1, lsl #1
	add	r6, sp, #1264
	strd	r2, [r6]
	strd	r8, [r7]
	add	r0, sp, #1272
	add	r1, sp, #1176
	mov	r2, r4
	bl	vec_mul
	ldr	r8, [sp, #648]
	ldrd	r6, [sp, #128]
	sxth	r2, r5
	lsl	r0, r8, #1
	asrs	r3, r2, #31
	adds	r2, r2, #-1
	adc	r3, r3, #-1
	uxth	r0, r0
	movs	r1, #0
	subs	r0, r6, r0
	sbc	r1, r7, r1
	ldr	r0, [sp, #124]
	lsrs	r7, r3, #31
	add	r3, sp, #1272
	str	r7, [sp, #752]
	add	ip, sp, #1280
	ldrd	r6, [r3]
	ldrd	r2, [r10]
	ldrd	r8, [ip]
	str	r0, [sp, #756]
	lsr	ip, r1, #31
	str	r0, [sp, #764]
	ldrd	r0, [r10, #8]
	eors	r6, r6, r2
	add	r2, sp, #1288
	eors	r7, r7, r3
	eor	r0, r0, r8
	eor	r1, r1, r9
	ldrd	r8, [r2]
	ldrd	r2, [r10, #16]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1296
	add	r3, sp, #1288
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r10, #24]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1304
	add	r3, sp, #1296
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r10, #32]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1312
	add	r3, sp, #1304
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r10, #40]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	r2, sp, #1320
	add	r3, sp, #1312
	strd	r8, [r3]
	ldrd	r8, [r2]
	ldrd	r2, [r10, #48]
	str	ip, [sp, #760]
	eor	r8, r8, r2
	eor	r9, r9, r3
	add	ip, sp, #752
	add	r3, sp, #1320
	strd	r8, [r3]
	add	r5, sp, #760
	ldrd	r8, [ip]
	ldrd	r2, [r5]
	adds	r8, r8, #-1
	adc	r9, r9, #-1
	adds	r2, r2, #-1
	adc	r3, r3, #-1
	strd	r8, [sp, #48]
	add	ip, sp, #1328
	add	r9, sp, #1280
	strd	r0, [r9]
	strd	r2, [sp, #56]
	ldrd	r0, [ip]
	ldrd	r2, [r10, #56]
	add	r8, sp, #1272
	eors	r1, r1, r3
	add	r3, sp, #1336
	strd	r6, [r8]
	ldrd	r6, [r10, #64]
	ldrd	r8, [r3]
	eor	r9, r9, r7
	add	r7, sp, #1344
	eors	r0, r0, r2
	eor	r8, r8, r6
	ldrd	r2, [r7]
	ldrd	r6, [r10, #72]
	strd	r0, [ip]
	add	ip, sp, #1352
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r0, [r10, #80]
	ldrd	r2, [ip]
	add	r5, sp, #1360
	eors	r0, r0, r2
	add	r2, sp, #1344
	eors	r1, r1, r3
	strd	r6, [r2]
	ldrd	r2, [r5]
	ldrd	r6, [r10, #88]
	add	lr, sp, #1336
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r8, [lr]
	strd	r2, [r5]
	ldrd	r8, [sp, #48]
	ldrd	r2, [sp, #56]
	and	r3, r3, r9
	ldr	r9, [sp, #56]
	and	r2, r2, r8
	and	r5, r9, r8
	ldrd	r8, [r10]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #56]
	ldrd	r8, [r10, #8]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #64]
	ldrd	r8, [r10, #16]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #72]
	ldrd	r8, [r10, #24]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #88]
	ldrd	r8, [r10, #32]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #96]
	ldrd	r8, [r10, #40]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #104]
	ldrd	r8, [r10, #48]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #112]
	ldrd	r8, [r10, #56]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #136]
	ldrd	r8, [r10, #64]
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [sp, #144]
	ldrd	r8, [r10, #72]
	strd	r0, [ip]
	and	r8, r8, r2
	and	r9, r9, r3
	add	ip, sp, #768
	strd	r8, [ip]
	ldrd	r8, [r10, #80]
	and	r8, r8, r2
	and	r9, r9, r3
	ldrd	r6, [r4]
	strd	r8, [sp, #160]
	ldrd	r8, [r10, #88]
	add	ip, sp, #776
	and	r8, r8, r2
	and	r9, r9, r3
	strd	r8, [ip]
	ldrd	r8, [r4, #16]
	mvns	r0, r2
	mvns	r1, r3
	and	r2, r6, r0
	and	r3, r7, r1
	strd	r2, [sp, #48]
	and	r6, r8, r0
	and	r7, r9, r1
	strd	r6, [sp, #152]
	ldrd	r8, [sp, #48]
	ldrd	r6, [sp, #56]
	orr	r8, r8, r6
	orr	r9, r9, r7
	strd	r8, [r4]
	ldrd	r8, [r4, #24]
	ldrd	r2, [r4, #8]
	and	r6, r8, r0
	and	r7, r9, r1
	ldrd	r8, [sp, #64]
	ands	r2, r2, r0
	ands	r3, r3, r1
	orr	r8, r8, r2
	orr	r9, r9, r3
	ldrd	r2, [r4, #32]
	strd	r6, [sp, #80]
	strd	r8, [r4, #8]
	and	r6, r0, r2
	and	r7, r1, r3
	ldrd	r8, [sp, #72]
	ldrd	r2, [sp, #152]
	orr	r8, r8, r2
	orr	r9, r9, r3
	ldrd	r2, [r4, #40]
	strd	r6, [sp, #48]
	strd	r8, [r4, #16]
	ldrd	r6, [sp, #80]
	and	r8, r0, r2
	and	r9, r1, r3
	ldrd	r2, [sp, #88]
	orrs	r6, r6, r2
	orrs	r7, r7, r3
	ldrd	r2, [r4, #48]
	strd	r6, [r4, #24]
	and	r6, r2, r0
	and	r7, r3, r1
	strd	r6, [sp, #56]
	ldrd	r2, [sp, #96]
	ldrd	r6, [sp, #48]
	orrs	r2, r2, r6
	orrs	r3, r3, r7
	ldrd	r6, [r4, #56]
	strd	r2, [r4, #32]
	and	r2, r6, r0
	and	r3, r7, r1
	ldrd	r6, [sp, #104]
	orr	r6, r6, r8
	orr	r7, r7, r9
	strd	r2, [sp, #48]
	strd	r6, [r4, #40]
	ldrd	r2, [sp, #112]
	ldrd	r6, [sp, #56]
	orrs	r2, r2, r6
	orrs	r3, r3, r7
	ldrd	r8, [r4, #64]
	strd	r2, [r4, #48]
	ldrd	r6, [r4, #72]
	and	r2, r6, r0
	and	r3, r7, r1
	strd	r2, [sp, #152]
	ldrd	r6, [sp, #136]
	ldrd	r2, [sp, #48]
	orrs	r6, r6, r2
	orrs	r7, r7, r3
	strd	r6, [r4, #56]
	ldrd	r6, [sp, #144]
	and	r8, r8, r0
	and	r9, r9, r1
	orr	r6, r6, r8
	orr	r7, r7, r9
	ldrd	r2, [r4, #80]
	strd	r6, [r4, #64]
	ldrd	r6, [r4, #88]
	ands	r3, r3, r1
	ands	r1, r1, r7
	add	r7, sp, #768
	ands	r2, r2, r0
	ldrd	r8, [sp, #152]
	ands	r0, r0, r6
	ldrd	r6, [r7]
	orr	r8, r8, r6
	orr	r9, r9, r7
	strd	r8, [r4, #72]
	ldrd	r8, [sp, #160]
	orr	r8, r8, r2
	orr	r9, r9, r3
	ldrd	r2, [ip]
	orrs	r2, r2, r0
	orrs	r3, r3, r1
	strd	r2, [r4, #88]
	mov	r0, r10
	add	r1, sp, #1272
	strd	r8, [r4, #80]
	bl	vec_copy
	uxth	r5, r5
	ldr	ip, [sp, #660]
	ldr	r0, [sp, #648]
	ldr	r2, [sp, #652]
	ldr	r1, [sp, #656]
	uxth	r3, r5
	ldrd	r8, [r4, #16]
	add	lr, ip, #1
	mvn	ip, r3
	uxth	ip, ip
	and	r2, ip, r2
	rsb	lr, r0, lr
	str	r2, [sp, #48]
	and	lr, r3, lr
	movs	r3, r9, lsr #1
	mov	r2, r8, rrx
	strd	r2, [r4, #16]
	ldrd	r2, [r4, #32]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #32]
	ldrd	r2, [r4, #40]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #40]
	ldrd	r2, [r4, #48]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #48]
	ldrd	r2, [r4, #56]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #56]
	ldrd	r2, [r4, #64]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #64]
	ldrd	r2, [r4, #72]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #72]
	ldrd	r2, [r4, #80]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r2, [r4, #80]
	ldrd	r2, [r4, #88]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	ldrd	r6, [r4]
	ands	r5, r5, r1
	and	ip, ip, r0
	ldrd	r8, [r4, #24]
	ldrd	r0, [r4, #8]
	strd	r2, [r4, #88]
	ldrd	r2, [sp, #128]
	movs	r7, r7, lsr #1
	mov	r6, r6, rrx
	movs	r1, r1, lsr #1
	mov	r0, r0, rrx
	movs	r9, r9, lsr #1
	mov	r8, r8, rrx
	adds	r2, r2, #1
	adc	r3, r3, #0
	strd	r2, [sp, #128]
	ldr	r3, [sp, #48]
	orr	lr, ip, lr
	orrs	r5, r5, r3
	strd	r6, [r4]
	str	r5, [sp, #652]
	str	lr, [sp, #648]
	strd	r0, [r4, #8]
	strd	r8, [r4, #24]
	ldrd	r6, [sp, #128]
	cmp	r7, #0
	it eq
	cmpeq	r6, #124
	beq	.L7
.L5:
	ldrh	r7, [sp, #128]
	cmp	r7, #63
	str	r7, [sp, #660]
	bhi	.L8
	ldmia	fp, {r0, r1, r6}
	ldr	lr, [sp, #128]
	ldr	r2, [fp, #12]
	ldr	r5, [fp, #16]
	rsb	r3, lr, #63
	lsl	lr, r2, r3
	sub	ip, r3, #32
	rsb	r2, r3, #32
	lsl	ip, r0, ip
	lsr	r2, r0, r2
	lsls	r0, r0, r3
	str	r0, [sp, #1080]
	sub	r0, r3, #32
	lsl	r0, r6, r0
	orr	lr, lr, r0
	rsb	r0, r3, #32
	lsl	r7, r1, r3
	lsr	r0, r6, r0
	ldr	r1, [fp, #20]
	lsls	r6, r6, r3
	str	r6, [sp, #1088]
	sub	r6, r3, #32
	lsl	r6, r5, r6
	orr	r7, r7, ip
	lsls	r1, r1, r3
	orrs	r7, r7, r2
	orrs	r1, r1, r6
	rsb	r6, r3, #32
	lsr	r6, r5, r6
	str	r7, [sp, #1084]
	lsls	r5, r5, r3
	ldr	r7, [fp, #24]
	ldr	r2, [fp, #28]
	str	r5, [sp, #1096]
	sub	r5, r3, #32
	orrs	r1, r1, r6
	lsl	r5, r7, r5
	lsls	r2, r2, r3
	ldr	r6, [fp, #40]
	str	r1, [sp, #1100]
	orr	lr, lr, r0
	ldr	r1, [fp, #44]
	ldr	ip, [fp, #32]
	str	lr, [sp, #1092]
	orrs	r2, r2, r5
	rsb	r5, r3, #32
	lsr	r5, r7, r5
	ldr	r0, [fp, #36]
	lsls	r7, r7, r3
	sub	lr, r3, #32
	lsl	lr, r6, lr
	lsls	r1, r1, r3
	str	r7, [sp, #1104]
	sub	r7, r3, #32
	lsl	r7, ip, r7
	lsls	r0, r0, r3
	orr	r1, r1, lr
	rsb	lr, r3, #32
	orrs	r2, r2, r5
	lsr	lr, r6, lr
	orrs	r0, r0, r7
	rsb	r7, r3, #32
	ldr	r5, [fp, #48]
	str	r2, [sp, #1108]
	lsr	r7, ip, r7
	orr	r1, r1, lr
	ldr	r2, [fp, #52]
	str	r1, [sp, #1124]
	orrs	r0, r0, r7
	sub	r1, r3, #32
	ldr	r7, [fp, #56]
	str	r0, [sp, #1116]
	lsl	r1, r5, r1
	lsls	r2, r2, r3
	ldr	r0, [fp, #60]
	orrs	r2, r2, r1
	sub	r1, r3, #32
	lsl	r1, r7, r1
	lsls	r0, r0, r3
	orrs	r0, r0, r1
	rsb	r1, r3, #32
	lsr	r1, r5, r1
	orrs	r2, r2, r1
	rsb	r1, r3, #32
	lsr	r1, r7, r1
	lsl	ip, ip, r3
	lsls	r6, r6, r3
	lsls	r5, r5, r3
	orrs	r0, r0, r1
	lsls	r7, r7, r3
	ldr	r1, [fp, #64]
	str	ip, [sp, #1112]
	str	r6, [sp, #1120]
	str	r2, [sp, #1132]
	str	r5, [sp, #1128]
	str	r0, [sp, #1140]
	str	r7, [sp, #1136]
	ldr	r0, [fp, #68]
	ldr	r7, [fp, #72]
	ldr	r6, [fp, #80]
	sub	r5, r3, #32
	lsl	r5, r1, r5
	lsls	r0, r0, r3
	rsb	lr, r3, #32
	lsl	r2, r1, r3
	orrs	r0, r0, r5
	lsr	lr, r1, lr
	orr	r0, r0, lr
	str	r2, [sp, #1144]
	ldr	r2, [fp, #76]
	str	r0, [sp, #1148]
	sub	r0, r3, #32
	lsl	r0, r7, r0
	lsls	r2, r2, r3
	orrs	r2, r2, r0
	rsb	r0, r3, #32
	lsr	r0, r7, r0
	ldr	r1, [fp, #84]
	ldr	r5, [fp, #88]
	orrs	r2, r2, r0
	str	r2, [sp, #1156]
	sub	r2, r3, #32
	lsl	ip, r1, r3
	lsl	r2, r6, r2
	ldr	r1, [fp, #92]
	orr	ip, ip, r2
	sub	r2, r3, #32
	lsls	r1, r1, r3
	lsl	r2, r5, r2
	orrs	r1, r1, r2
	rsb	r2, r3, #32
	lsr	r2, r6, r2
	orr	ip, ip, r2
	rsb	r2, r3, #32
	lsr	r2, r5, r2
	lsls	r7, r7, r3
	lsls	r6, r6, r3
	orrs	r1, r1, r2
	lsl	r3, r5, r3
	str	r7, [sp, #1152]
	str	ip, [sp, #1164]
	str	r6, [sp, #1160]
	str	r1, [sp, #1172]
	str	r3, [sp, #1168]
	b	.L3
.L7:
	ldr	r1, [sp, #788]
	ldr	r0, [sp, #784]
	bl	vec_copy
	ldr	fp, [sp, #784]
	ldr	r7, [sp, #784]
	ldr	r8, [sp, #784]
	ldrd	r10, [fp, #40]
	strd	r10, [sp]
	ldr	fp, [sp, #784]
	ldrd	r10, [fp, #48]
	strd	r10, [sp, #32]
	ldrd	r10, [sp]
	movs	fp, fp, lsr #1
	mov	r10, r10, rrx
	strd	r10, [sp, #8]
	ldrd	r10, [sp, #32]
	ldrd	r2, [r7]
	movs	fp, fp, lsr #1
	mov	r10, r10, rrx
	strd	r10, [sp, #40]
	ldr	fp, [sp, #784]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	ldrd	r4, [r8, #16]
	ldrd	r0, [r8, #24]
	ldrd	r6, [r7, #8]
	ldrd	r8, [r8, #32]
	strd	r2, [fp]
	ldrd	r2, [fp, #56]
	movs	fp, r3, lsr #1
	mov	r10, r2, rrx
	strd	r10, [sp, #24]
	ldr	fp, [sp, #784]
	ldrd	r2, [fp, #64]
	movs	r7, r7, lsr #1
	mov	r6, r6, rrx
	movs	r9, r9, lsr #1
	mov	r8, r8, rrx
	strd	r6, [fp, #8]
	movs	r7, r3, lsr #1
	mov	r6, r2, rrx
	ldrd	r2, [fp, #72]
	strd	r8, [fp, #32]
	ldrd	r8, [sp, #8]
	movs	r5, r5, lsr #1
	mov	r4, r4, rrx
	strd	r4, [fp, #16]
	movs	r5, r3, lsr #1
	mov	r4, r2, rrx
	ldrd	r2, [fp, #80]
	strd	r8, [fp, #40]
	ldrd	r8, [sp, #40]
	movs	r1, r1, lsr #1
	mov	r0, r0, rrx
	strd	r0, [fp, #24]
	movs	r1, r3, lsr #1
	mov	r0, r2, rrx
	ldrd	r2, [fp, #88]
	strd	r8, [fp, #48]
	ldrd	r8, [sp, #24]
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
	strd	r8, [fp, #56]
	strd	r6, [fp, #64]
	strd	r4, [fp, #72]
	strd	r0, [fp, #80]
	strd	r2, [fp, #88]
	addw	sp, sp, #1372
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	bm, .-bm
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
