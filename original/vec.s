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
	.file	"vec.c"
	.text
	.align	2
	.global	vec_mul
	.thumb
	.thumb_func
	.type	vec_mul, %function
vec_mul:
	@ args = 0, pretend = 0, frame = 720
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrd	r4, [r1, #88]
	ldrd	r6, [r1, #40]
	sub	sp, sp, #724
	ldrd	r8, [r2, #80]
	ldrd	r10, [r2, #32]
	strd	r4, [sp, #128]
	strd	r6, [sp, #56]
	ldrd	r4, [r2, #88]
	ldrd	r6, [r2, #40]
	strd	r8, [sp, #104]
	ldrd	r8, [r1, #80]
	strd	r10, [sp, #112]
	strd	r4, [sp, #8]
	ldrd	r10, [r1, #32]
	ldrd	r4, [r2, #56]
	strd	r6, [sp, #64]
	ldrd	r6, [r2, #8]
	strd	r8, [sp, #40]
	add	r8, sp, #256
	strd	r10, [sp, #160]
	strd	r4, [sp, #88]
	ldrd	r10, [r1, #64]
	ldrd	r4, [r1, #16]
	strd	r6, [r8]
	ldrd	r8, [r2, #16]
	ldrd	r6, [r2, #64]
	strd	r10, [sp, #16]
	strd	r4, [sp, #136]
	ldrd	r10, [r1, #56]
	ldrd	r4, [r1, #8]
	strd	r8, [sp, #144]
	ldrd	r8, [r2, #24]
	strd	r6, [sp, #80]
	add	r6, sp, #264
	strd	r10, [sp, #48]
	strd	r4, [r6]
	strd	r8, [sp, #32]
	ldrd	r10, [r1, #24]
	ldrd	r4, [r2, #72]
	ldrd	r6, [r1, #72]
	ldrd	r8, [r2, #48]
	strd	r10, [sp, #120]
	ldrd	r10, [r1, #48]
	strd	r4, [sp, #72]
	strd	r6, [sp, #152]
	ldrd	r4, [sp, #56]
	ldrd	r6, [sp, #128]
	strd	r8, [sp, #24]
	strd	r10, [sp, #96]
	ldrd	r8, [sp, #112]
	ldrd	r10, [sp, #104]
	eors	r4, r4, r6
	eors	r5, r5, r7
	eor	r8, r8, r10
	add	r7, sp, #296
	eor	r9, r9, fp
	strd	r4, [r7]
	ldrd	r10, [sp, #40]
	ldrd	r6, [sp, #8]
	strd	r8, [sp, #208]
	ldrd	r4, [sp, #64]
	ldrd	r8, [sp, #160]
	eors	r4, r4, r6
	eors	r5, r5, r7
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	r6, sp, #256
	ldrd	r10, [sp, #16]
	strd	r4, [sp, #168]
	strd	r8, [sp, #240]
	ldrd	r4, [r6]
	ldrd	r8, [sp, #136]
	ldrd	r6, [sp, #88]
	eor	r8, r8, r10
	eors	r4, r4, r6
	eors	r5, r5, r7
	eor	r9, r9, fp
	add	r7, sp, #288
	add	fp, sp, #304
	strd	r4, [r7]
	strd	r8, [fp]
	ldrd	r8, [sp, #168]
	ldrd	r10, [sp, #240]
	add	r5, sp, #296
	add	lr, sp, #288
	ldrd	r6, [r5]
	and	r10, r10, r8
	ldrd	r4, [sp, #208]
	and	fp, fp, r9
	ldrd	r8, [lr]
	add	lr, sp, #432
	eor	r8, r8, r4
	eor	r9, r9, r5
	strd	r8, [lr]
	add	r8, sp, #304
	add	r9, sp, #296
	ands	r6, r6, r4
	ands	r7, r7, r5
	ldrd	r4, [r8]
	ldrd	r8, [r9]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r9, sp, #384
	strd	r4, [r9]
	ldrd	r8, [sp, #80]
	ldrd	r4, [sp, #144]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r8, sp, #264
	strd	r4, [sp, #224]
	ldrd	r4, [r8]
	ldrd	r8, [sp, #48]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r9, sp, #392
	strd	r4, [r9]
	ldrd	r4, [r2]
	strd	r4, [sp, #184]
	add	r5, sp, #256
	ldrd	r8, [r1]
	ldrd	r2, [sp, #136]
	ldrd	r4, [r5]
	strd	r8, [sp, #192]
	ands	r2, r2, r4
	ldrd	r8, [sp, #32]
	ands	r3, r3, r5
	ldrd	r4, [sp, #120]
	and	r4, r4, r8
	add	r8, sp, #256
	strd	r2, [sp, #176]
	and	r5, r5, r9
	ldrd	r2, [r8]
	ldrd	r8, [sp, #112]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #400
	strd	r2, [r9]
	ldrd	r8, [sp, #56]
	ldrd	r2, [sp, #136]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #424
	strd	r2, [r9]
	ldrd	r8, [sp, #64]
	ldrd	r2, [sp, #144]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #264
	add	r9, sp, #408
	strd	r2, [r9]
	ldrd	r2, [r8]
	ldrd	r8, [sp, #160]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #416
	strd	r2, [r9]
	add	r8, sp, #328
	eor	r2, r10, r6
	eor	r3, fp, r7
	strd	r2, [r8]
	ldrd	r6, [sp, #168]
	ldrd	r2, [sp, #224]
	add	fp, sp, #384
	ldrd	r8, [fp]
	ldrd	r10, [lr]
	eors	r2, r2, r6
	eors	r3, r3, r7
	add	r7, sp, #376
	strd	r2, [r7]
	add	r2, sp, #392
	and	r8, r8, r10
	and	r9, r9, fp
	ldrd	r10, [r2]
	ldrd	r2, [sp, #240]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #448
	strd	r10, [r3]
	add	r10, sp, #392
	ldrd	r6, [r10]
	ldrd	r10, [sp, #224]
	and	r6, r6, r10
	and	r7, r7, fp
	add	fp, sp, #312
	strd	r6, [fp]
	add	r6, sp, #304
	add	r7, sp, #288
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	ands	r2, r2, r6
	ands	r3, r3, r7
	add	r7, sp, #272
	strd	r2, [r7]
	ldrd	r10, [sp, #32]
	ldrd	r2, [sp, #72]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r6, [sp, #120]
	strd	r10, [sp, #200]
	ldrd	r10, [sp, #152]
	ldrd	r2, [sp, #176]
	eor	r6, r6, r10
	eor	r7, r7, fp
	strd	r6, [sp, #232]
	add	r6, sp, #264
	eors	r2, r2, r4
	eors	r3, r3, r5
	ldrd	r4, [r6]
	ldrd	r6, [sp, #144]
	strd	r2, [sp, #176]
	add	r3, sp, #424
	add	r2, sp, #400
	ldrd	r10, [r3]
	ldrd	r2, [r2]
	ands	r4, r4, r6
	ands	r5, r5, r7
	add	r7, sp, #280
	strd	r4, [r7]
	add	r6, sp, #416
	add	r7, sp, #408
	ldrd	r4, [r6]
	and	r10, r10, r2
	ldrd	r6, [r7]
	and	fp, fp, r3
	strd	r10, [sp, #248]
	ldrd	r2, [sp, #112]
	ldrd	r10, [sp, #56]
	ands	r4, r4, r6
	ands	r5, r5, r7
	add	r7, sp, #368
	strd	r4, [r7]
	and	r10, r10, r2
	ldrd	r6, [sp, #80]
	and	fp, fp, r3
	ldrd	r2, [sp, #8]
	ldrd	r4, [sp, #24]
	strd	r10, [sp, #216]
	ldrd	r10, [sp, #96]
	eors	r6, r6, r2
	eors	r7, r7, r3
	add	r3, sp, #344
	strd	r6, [r3]
	and	r10, r10, r4
	ldrd	r6, [sp, #128]
	and	fp, fp, r5
	ldrd	r4, [sp, #16]
	add	lr, sp, #328
	eors	r4, r4, r6
	eors	r5, r5, r7
	add	r7, sp, #320
	ldrd	r2, [sp, #88]
	strd	r4, [r7]
	ldrd	r4, [sp, #104]
	ldrd	r6, [lr]
	eors	r2, r2, r4
	eors	r3, r3, r5
	eor	r6, r6, r8
	add	r5, sp, #336
	eor	r7, r7, r9
	add	r8, sp, #272
	add	r9, sp, #312
	strd	r2, [r5]
	add	lr, sp, #360
	ldrd	r4, [r8]
	add	r3, sp, #448
	ldrd	r8, [r9]
	add	r2, sp, #376
	strd	r6, [lr]
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r9, sp, #352
	strd	r4, [r9]
	ands	r6, r6, r2
	ldrd	r4, [sp, #200]
	ands	r7, r7, r3
	ldrd	r2, [sp, #232]
	ands	r2, r2, r4
	add	r4, sp, #280
	ldrd	r8, [sp, #176]
	ands	r3, r3, r5
	ldrd	r4, [r4]
	eor	r8, r8, r4
	eor	r9, r9, r5
	add	r4, sp, #368
	add	r5, sp, #312
	strd	r8, [r5]
	ldrd	r4, [r4]
	ldrd	r8, [sp, #248]
	eor	r8, r8, r4
	eor	r9, r9, r5
	add	r5, sp, #280
	strd	r8, [r5]
	ldrd	r8, [sp, #8]
	ldrd	r4, [sp, #40]
	and	r4, r4, r8
	and	r5, r5, r9
	ldrd	r8, [sp, #216]
	add	lr, sp, #272
	eor	r8, r8, r10
	eor	r9, r9, fp
	strd	r8, [lr]
	ldrd	r10, [sp, #104]
	ldrd	r8, [sp, #128]
	and	r8, r8, r10
	and	r9, r9, fp
	eor	r10, r4, r8
	eor	fp, r5, r9
	strd	r10, [sp, #176]
	ldrd	r4, [sp, #64]
	ldrd	r10, [sp, #160]
	ldrd	r8, [sp, #152]
	and	r10, r10, r4
	and	fp, fp, r5
	ldrd	r4, [sp, #104]
	and	r8, r8, r4
	and	r9, r9, r5
	add	r5, sp, #472
	strd	r8, [r5]
	add	r9, sp, #360
	ldrd	r8, [r9]
	eor	r6, r6, r8
	add	r8, sp, #352
	ldrd	r4, [r8]
	add	r8, sp, #496
	eors	r4, r4, r2
	eors	r5, r5, r3
	strd	r4, [r8]
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #184]
	eors	r2, r2, r4
	eors	r3, r3, r5
	strd	r2, [sp, #216]
	eor	r7, r7, r9
	ldrd	r2, [sp, #96]
	ldrd	r8, [sp, #192]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #248]
	add	r9, sp, #280
	add	r8, sp, #312
	ldrd	r4, [r9]
	ldrd	r8, [r8]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r8, sp, #336
	add	r9, sp, #320
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	and	r2, r2, r8
	and	r3, r3, r9
	ldrd	r8, [lr]
	add	lr, sp, #464
	eor	r8, r8, r10
	eor	r9, r9, fp
	strd	r8, [lr]
	ldrd	r10, [sp, #40]
	ldrd	r8, [sp, #48]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #280
	strd	r8, [fp]
	ldrd	r8, [sp, #176]
	add	r10, sp, #456
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [r10]
	add	r3, sp, #496
	ldrd	r10, [sp, #200]
	ldrd	r8, [sp, #216]
	ldrd	r2, [r3]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #368
	strd	r8, [fp]
	eors	r6, r6, r2
	ldrd	r8, [sp, #232]
	eors	r7, r7, r3
	ldrd	r2, [sp, #248]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #440
	ldrd	r10, [sp, #184]
	strd	r2, [r9]
	ldrd	r2, [sp, #32]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #352
	ldrd	r8, [sp, #192]
	strd	r10, [r3]
	ldrd	r10, [sp, #120]
	ldrd	r2, [lr]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #360
	strd	r8, [fp]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r8, sp, #480
	strd	r2, [r8]
	ldrd	r10, [sp, #40]
	ldrd	r2, [sp, #72]
	add	r8, sp, #472
	ldrd	r4, [r8]
	and	r10, r10, r2
	and	fp, fp, r3
	eor	r4, r4, r10
	eor	r5, r5, fp
	strd	r4, [sp]
	add	fp, sp, #360
	ldrd	r4, [sp, #184]
	ldrd	r2, [sp, #192]
	add	r10, sp, #352
	ldrd	r8, [fp]
	ldrd	r10, [r10]
	ands	r2, r2, r4
	ands	r3, r3, r5
	add	lr, sp, #480
	add	r5, sp, #272
	strd	r2, [r5]
	and	r8, r8, r10
	ldrd	r4, [sp, #104]
	ldrd	r2, [sp, #40]
	and	r9, r9, fp
	ldrd	r10, [lr]
	ands	r2, r2, r4
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	lr, sp, #512
	ands	r3, r3, r5
	add	r5, sp, #520
	ldrd	r6, [sp, #88]
	strd	r10, [lr]
	strd	r2, [r5]
	ldrd	r10, [sp, #72]
	ldrd	r4, [sp, #16]
	ldrd	r2, [sp, #152]
	ands	r5, r5, r7
	and	r3, r3, fp
	eor	r7, r5, r3
	and	r2, r2, r10
	add	fp, sp, #320
	ands	r4, r4, r6
	add	r10, sp, #344
	add	r5, sp, #272
	eor	r6, r4, r2
	ldrd	r2, [fp]
	ldrd	r4, [r5]
	ldrd	r10, [r10]
	strd	r6, [sp, #40]
	add	lr, sp, #312
	add	r7, sp, #440
	add	r6, sp, #368
	eor	r8, r8, r4
	eor	r9, r9, r5
	and	r2, r2, r10
	ldrd	r4, [r7]
	and	r3, r3, fp
	ldrd	r6, [r6]
	ldrd	r10, [lr]
	ands	r4, r4, r6
	ands	r5, r5, r7
	eor	r10, r10, r8
	ldrd	r6, [sp, #248]
	eor	fp, fp, r9
	ldrd	r8, [sp, #216]
	add	lr, sp, #472
	and	r6, r6, r8
	and	r7, r7, r9
	add	r9, sp, #488
	strd	r10, [lr]
	strd	r6, [r9]
	add	r10, sp, #504
	eors	r6, r6, r4
	eors	r7, r7, r5
	strd	r6, [r10]
	add	r6, sp, #328
	ldrd	r4, [r6]
	ldrd	r6, [sp, #176]
	ldrd	r10, [sp, #8]
	ldrd	r8, [sp, #128]
	eors	r4, r4, r6
	eors	r5, r5, r7
	add	r7, sp, #528
	and	r8, r8, r10
	and	r9, r9, fp
	strd	r4, [r7]
	ldrd	r6, [sp, #152]
	ldrd	r4, [sp, #96]
	strd	r8, [sp, #104]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [sp, #152]
	eors	r4, r4, r6
	eors	r5, r5, r7
	add	r7, sp, #312
	strd	r4, [r7]
	and	r8, r8, r10
	ldrd	r4, [sp, #128]
	ldrd	r6, [sp, #24]
	and	r9, r9, fp
	ldrd	r10, [sp, #72]
	add	lr, sp, #320
	eor	r6, r6, r10
	eor	r7, r7, fp
	and	r4, r4, r10
	and	r5, r5, fp
	ldrd	r10, [lr]
	strd	r6, [sp, #8]
	and	r10, r10, r6
	add	r6, sp, #520
	eor	r8, r8, r4
	eor	r9, r9, r5
	ldrd	r4, [r6]
	and	fp, fp, r7
	add	lr, sp, #328
	strd	r10, [lr]
	eor	r4, r4, r8
	ldrd	r10, [sp, #80]
	eor	r5, r5, r9
	ldrd	r8, [sp, #16]
	strd	r4, [sp, #128]
	ldrd	r4, [sp]
	and	r8, r8, r10
	and	r9, r9, fp
	eor	r4, r4, r8
	ldrd	r10, [sp, #24]
	eor	r5, r5, r9
	add	r6, sp, #320
	ldrd	r8, [sp, #16]
	strd	r4, [r6]
	and	r8, r8, r10
	and	r9, r9, fp
	add	r10, sp, #320
	add	fp, sp, #520
	strd	r8, [fp]
	ldrd	r8, [r10]
	eor	r8, r8, r2
	eor	r9, r9, r3
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #88]
	ldrd	r6, [sp, #48]
	strd	r8, [sp, #152]
	ldrd	r8, [sp, #96]
	ands	r6, r6, r4
	ands	r7, r7, r5
	and	r8, r8, r2
	ldrd	r4, [sp, #80]
	and	r9, r9, r3
	ldrd	r2, [sp, #96]
	ldrd	r10, [sp, #80]
	ands	r2, r2, r4
	ands	r3, r3, r5
	ldrd	r4, [sp, #48]
	and	r4, r4, r10
	and	r5, r5, fp
	eor	r10, r8, r6
	eor	fp, r9, r7
	ldrd	r6, [sp, #40]
	eors	r6, r6, r4
	eors	r7, r7, r5
	ldrd	r8, [sp, #112]
	strd	r6, [sp, #24]
	ldrd	r6, [sp, #120]
	ldrd	r4, [sp, #64]
	strd	r10, [sp, #16]
	ldrd	r10, [sp, #120]
	and	r6, r6, r8
	and	r7, r7, r9
	ldrd	r8, [sp, #56]
	and	r10, r10, r4
	and	fp, fp, r5
	strd	r10, [sp, #72]
	and	r8, r8, r4
	ldrd	r10, [sp, #56]
	and	r9, r9, r5
	ldrd	r4, [sp, #32]
	and	r10, r10, r4
	and	fp, fp, r5
	strd	r10, [sp, #96]
	ldrd	r10, [sp, #32]
	ldrd	r4, [sp, #160]
	and	r4, r4, r10
	eor	r10, r6, r4
	and	r5, r5, fp
	add	r6, sp, #520
	eor	fp, r7, r5
	ldrd	r4, [r6]
	strd	r10, [sp, #64]
	add	fp, sp, #280
	add	r10, sp, #344
	add	r6, sp, #456
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	strd	r4, [sp, #40]
	ldrd	r4, [r6]
	and	r2, r2, r10
	and	r3, r3, fp
	eors	r4, r4, r2
	eors	r5, r5, r3
	strd	r4, [r6]
	add	r7, sp, #312
	add	r6, sp, #344
	ldrd	r4, [r7]
	add	fp, sp, #384
	ldrd	r6, [r6]
	add	r10, sp, #376
	ldrd	r2, [fp]
	ldrd	r10, [r10]
	ands	r4, r4, r6
	ands	r5, r5, r7
	and	r2, r2, r10
	and	r3, r3, fp
	strd	r4, [sp, #120]
	ldrd	r10, [sp, #48]
	ldrd	r4, [sp, #88]
	and	r10, r10, r4
	and	fp, fp, r5
	strd	r10, [sp, #80]
	add	fp, sp, #296
	ldrd	r6, [fp]
	ldrd	r10, [sp, #168]
	and	r6, r6, r10
	and	r7, r7, fp
	strd	r6, [sp, #88]
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [sp, #232]
	add	lr, sp, #520
	strd	r6, [lr]
	add	r7, sp, #296
	ldrd	r4, [r7]
	and	r2, r2, r10
	ldrd	r6, [sp, #200]
	and	r3, r3, fp
	ldrd	r10, [sp, #240]
	strd	r2, [sp, #168]
	ands	r4, r4, r6
	ldrd	r2, [sp, #232]
	ands	r5, r5, r7
	and	r10, r10, r6
	and	fp, fp, r7
	ldrd	r6, [sp, #208]
	ands	r2, r2, r6
	ands	r3, r3, r7
	strd	r2, [sp, #232]
	ldrd	r2, [sp, #16]
	add	r7, sp, #304
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #16]
	ldrd	r2, [r7]
	ldrd	r6, [sp, #224]
	ldrd	r8, [sp, #144]
	ands	r2, r2, r6
	ands	r3, r3, r7
	ldrd	r6, [sp, #136]
	eor	r10, r10, r2
	eor	fp, fp, r3
	and	r6, r6, r8
	ldrd	r2, [sp, #72]
	and	r7, r7, r9
	ldrd	r8, [sp, #96]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #288
	strd	r2, [sp, #48]
	ldrd	r8, [r9]
	ldrd	r2, [sp, #248]
	and	r2, r2, r8
	and	r3, r3, r9
	strd	r2, [sp, #200]
	ldrd	r8, [sp, #112]
	ldrd	r2, [sp, #160]
	and	r2, r2, r8
	and	r3, r3, r9
	add	r9, sp, #392
	strd	r2, [sp, #56]
	ldrd	r2, [r9]
	ldrd	r8, [sp, #216]
	and	r2, r2, r8
	and	r3, r3, r9
	strd	r2, [sp, #112]
	ldrd	r2, [sp, #64]
	add	r9, sp, #256
	ldrd	r8, [r9]
	eors	r2, r2, r6
	eors	r3, r3, r7
	ldrd	r6, [sp, #192]
	and	r6, r6, r8
	and	r7, r7, r9
	strd	r6, [sp, #32]
	add	r7, sp, #456
	strd	r2, [sp, #64]
	ldrd	r2, [r7]
	ldrd	r6, [sp, #24]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #72]
	add	r2, sp, #440
	add	r3, sp, #376
	ldrd	r8, [r2]
	ldrd	r2, [r3]
	and	r8, r8, r2
	and	r9, r9, r3
	add	r3, sp, #376
	strd	r8, [r3]
	add	r8, sp, #384
	add	r9, sp, #368
	ldrd	r6, [r8]
	ldrd	r8, [r9]
	and	r6, r6, r8
	and	r7, r7, r9
	add	r9, sp, #384
	strd	r6, [r9]
	add	r6, sp, #448
	add	r7, sp, #368
	ldrd	r2, [r6]
	ldrd	r6, [r7]
	ldrd	r8, [sp, #168]
	ands	r2, r2, r6
	ands	r3, r3, r7
	add	r7, sp, #368
	strd	r2, [r7]
	eor	r8, r8, r4
	ldrd	r6, [sp, #208]
	eor	r9, r9, r5
	ldrd	r4, [sp, #240]
	add	lr, sp, #344
	add	r3, sp, #264
	ands	r4, r4, r6
	ands	r5, r5, r7
	strd	r8, [lr]
	strd	r4, [sp, #208]
	ldrd	r8, [r3]
	ldrd	r4, [sp, #232]
	ldrd	r2, [sp, #184]
	eor	r4, r4, r10
	and	r8, r8, r2
	and	r9, r9, r3
	eor	r5, r5, fp
	add	r3, sp, #312
	add	fp, sp, #280
	add	r2, sp, #336
	ldrd	r6, [r3]
	ldrd	r2, [r2]
	strd	r4, [sp, #96]
	ldrd	r4, [fp]
	ldrd	r10, [sp, #8]
	ands	r6, r6, r2
	ands	r7, r7, r3
	and	r4, r4, r10
	ldrd	r2, [sp, #248]
	and	r5, r5, fp
	ldrd	r10, [sp, #224]
	and	r2, r2, r10
	and	r3, r3, fp
	add	r10, sp, #304
	strd	r2, [sp, #240]
	ldrd	r2, [r10]
	ldrd	r10, [sp, #216]
	and	r2, r2, r10
	and	r3, r3, fp
	add	fp, sp, #296
	strd	r2, [fp]
	ldrd	r10, [sp, #112]
	ldrd	r2, [sp, #200]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #328
	ldrd	r10, [fp]
	strd	r2, [sp, #200]
	ldrd	r2, [sp, #120]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	r10, sp, #520
	strd	r2, [sp, #232]
	ldrd	r2, [r10]
	ldrd	r10, [sp, #152]
	eor	r2, r2, r10
	eor	r3, r3, fp
	add	fp, sp, #328
	strd	r2, [fp]
	ldrd	r10, [sp, #80]
	ldrd	r2, [sp, #40]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #80]
	ldrd	r10, [sp, #56]
	ldrd	r2, [sp, #48]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #56]
	ldrd	r2, [sp, #32]
	add	fp, sp, #280
	add	r10, sp, #336
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [fp]
	ldrd	r10, [r10]
	strd	r2, [sp, #40]
	and	r8, r8, r10
	eor	r2, r6, r4
	eor	r3, r7, r5
	and	r9, r9, fp
	ldrd	r6, [sp, #16]
	ldrd	r4, [sp, #64]
	add	fp, sp, #424
	add	r10, sp, #408
	strd	r8, [sp, #32]
	ldrd	r8, [fp]
	ldrd	r10, [r10]
	eors	r4, r4, r6
	eors	r5, r5, r7
	strd	r4, [sp, #112]
	and	r8, r8, r10
	and	r9, r9, fp
	add	r4, sp, #360
	strd	r2, [sp, #224]
	strd	r8, [sp, #168]
	ldrd	r2, [r4]
	add	lr, sp, #416
	and	r2, r2, r10
	and	r3, r3, fp
	add	r9, sp, #424
	add	r4, sp, #512
	add	r8, sp, #352
	ldrd	r6, [r9]
	ldrd	r10, [lr]
	ldrd	r8, [r8]
	strd	r2, [sp, #120]
	ldrd	r2, [r4]
	ldrd	r4, [sp, #72]
	and	r6, r6, r8
	and	r7, r7, r9
	and	fp, fp, r9
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r9, sp, #464
	add	r5, sp, #280
	strd	r2, [r5]
	strd	r6, [sp, #160]
	and	r10, r10, r8
	ldrd	r6, [r9]
	add	r2, sp, #376
	ldrd	r8, [sp, #24]
	add	r3, sp, #384
	strd	r10, [sp, #48]
	ldrd	r10, [r2]
	ldrd	r2, [r3]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [sp, #216]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r7, sp, #440
	add	r3, sp, #304
	add	r6, sp, #432
	strd	r10, [r3]
	ldrd	r4, [r7]
	add	r10, sp, #448
	ldrd	r6, [r6]
	ldrd	r8, [r10]
	ands	r4, r4, r6
	ands	r5, r5, r7
	strd	r4, [sp, #248]
	and	r8, r8, r6
	and	r9, r9, r7
	add	r10, sp, #336
	add	r5, sp, #344
	ldrd	r2, [r5]
	strd	r8, [r10]
	ldrd	r4, [sp, #208]
	add	r8, sp, #368
	ldrd	r6, [r8]
	ldrd	r8, [sp, #200]
	eors	r2, r2, r4
	eors	r3, r3, r5
	strd	r2, [sp, #208]
	eor	r6, r6, r8
	eor	r7, r7, r9
	add	r2, sp, #296
	add	r9, sp, #344
	ldrd	r2, [r2]
	ldrd	r10, [sp, #240]
	strd	r6, [r9]
	add	r9, sp, #328
	ldrd	r6, [r9]
	eor	r10, r10, r2
	ldrd	r8, [sp, #96]
	eor	fp, fp, r3
	add	r5, sp, #392
	add	r3, sp, #296
	add	r4, sp, #288
	strd	r10, [r3]
	ldrd	r2, [r5]
	ldrd	r4, [r4]
	eor	r6, r6, r8
	eor	r7, r7, r9
	strd	r6, [sp, #240]
	ands	r2, r2, r4
	ldrd	r10, [sp, #144]
	ldrd	r6, [sp, #184]
	ldrd	r8, [sp, #136]
	ands	r3, r3, r5
	ldrd	r4, [sp, #192]
	and	r8, r8, r6
	and	r4, r4, r10
	and	r5, r5, fp
	and	r9, r9, r7
	ldrd	r10, [sp, #232]
	ldrd	r6, [sp, #32]
	eor	r10, r10, r6
	eor	fp, fp, r7
	strd	r10, [sp, #192]
	ldrd	r6, [sp, #80]
	ldrd	r10, [sp, #56]
	eor	r10, r10, r6
	eor	fp, fp, r7
	strd	r10, [sp, #32]
	ldrd	r6, [sp, #16]
	ldrd	r10, [sp, #224]
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	r7, sp, #312
	strd	r10, [sp, #184]
	ldrd	r10, [r7]
	ldrd	r6, [sp, #8]
	and	r10, r10, r6
	and	fp, fp, r7
	strd	r10, [sp, #136]
	ldrd	r6, [sp, #168]
	ldrd	r10, [sp, #112]
	eor	r10, r10, r6
	eor	fp, fp, r7
	strd	r10, [sp, #112]
	ldrd	r6, [sp, #160]
	ldrd	r10, [sp, #120]
	eor	r10, r10, r6
	eor	fp, fp, r7
	strd	r10, [sp, #24]
	ldrd	r6, [sp, #40]
	ldrd	r10, [sp, #48]
	eor	r10, r10, r6
	eor	fp, fp, r7
	add	r6, sp, #400
	add	r7, sp, #360
	strd	r10, [sp, #8]
	ldrd	r10, [r7]
	ldrd	r6, [r6]
	and	r10, r10, r6
	and	fp, fp, r7
	strd	r10, [sp, #16]
	ldrd	r10, [lr]
	and	r10, r10, r6
	and	fp, fp, r7
	strd	r10, [sp, #144]
	add	fp, sp, #280
	ldrd	r6, [fp]
	ldrd	r10, [sp, #176]
	eor	r6, r6, r10
	eor	r7, r7, fp
	add	r10, sp, #304
	add	fp, sp, #336
	strd	r6, [sp, #48]
	ldrd	r6, [r10]
	ldrd	r10, [fp]
	eor	r6, r6, r10
	eor	r7, r7, fp
	add	fp, sp, #288
	strd	r6, [fp]
	add	fp, sp, #344
	ldrd	r6, [sp, #248]
	ldrd	r10, [fp]
	add	lr, sp, #296
	eor	r6, r6, r10
	eor	r7, r7, fp
	strd	r6, [sp, #168]
	ldrd	r6, [lr]
	ldrd	r10, [sp, #104]
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [sp, #88]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #224]
	eor	r2, r8, r4
	eor	r3, r9, r5
	ldrd	r10, [sp, #192]
	strd	r2, [sp, #232]
	add	r9, sp, #264
	ldrd	r2, [sp, #128]
	add	r8, sp, #256
	ldrd	r4, [r9]
	ldrd	r8, [r8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	and	r4, r4, r8
	and	r5, r5, r9
	strd	r10, [sp, #88]
	ldrd	r8, [sp, #32]
	ldrd	r10, [sp, #208]
	eor	r8, r8, r10
	eor	r9, r9, fp
	strd	r8, [sp, #248]
	add	r9, sp, #320
	ldrd	r2, [sp, #184]
	ldrd	r8, [r9]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r10, [sp, #216]
	strd	r2, [sp, #160]
	ldrd	r2, [sp, #136]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r8, [sp, #112]
	strd	r10, [sp, #120]
	ldrd	r10, [sp, #240]
	ldrd	r2, [sp, #8]
	eor	r10, r10, r8
	eor	fp, fp, r9
	ldrd	r8, [sp, #16]
	eor	r2, r2, r8
	eor	r3, r3, r9
	strd	r2, [sp, #136]
	ldrd	r8, [sp, #144]
	ldrd	r2, [sp, #24]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #472
	add	r9, sp, #504
	strd	r2, [sp, #144]
	ldrd	r2, [r9]
	ldrd	r8, [r8]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #272
	strd	r2, [sp, #184]
	ldrd	r2, [r8]
	ldrd	r8, [sp, #48]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r9, sp, #264
	strd	r2, [r9]
	ldrd	r8, [sp, #96]
	ldrd	r2, [sp, #168]
	eor	r2, r2, r8
	eor	r3, r3, r9
	add	r8, sp, #288
	add	r9, sp, #256
	strd	r2, [r9]
	ldrd	r2, [r8]
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [sp, #192]
	ldrd	r2, [sp, #232]
	ldrd	r8, [sp, #80]
	eors	r2, r2, r4
	eors	r3, r3, r5
	ldrd	r4, [sp, #88]
	eor	r4, r4, r8
	eor	r5, r5, r9
	strd	r2, [sp, #16]
	strd	r4, [sp, #8]
	ldrd	r2, [sp, #128]
	ldrd	r4, [sp, #248]
	eors	r2, r2, r4
	eors	r3, r3, r5
	ldrd	r8, [sp, #224]
	strd	r2, [sp, #80]
	ldrd	r2, [sp, #160]
	eor	r8, r8, r2
	eor	r9, r9, r3
	strd	r8, [sp, #88]
	add	r9, sp, #528
	ldrd	r4, [r9]
	ldrd	r8, [sp, #120]
	ldrd	r2, [sp, #104]
	eor	r4, r4, r8
	eor	r5, r5, r9
	strd	r4, [sp, #24]
	ldrd	r8, [sp, #64]
	ldrd	r4, [sp, #136]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #96]
	ldrd	r10, [sp, #144]
	ldrd	r2, [sp, #56]
	eor	r4, r4, r8
	eor	r5, r5, r9
	add	r9, sp, #496
	ldrd	r8, [r9]
	strd	r4, [sp, #64]
	ldrd	r4, [sp, #184]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #56]
	ldrd	r2, [sp, #176]
	add	fp, sp, #488
	add	r10, sp, #272
	eor	r4, r4, r8
	eor	r5, r5, r9
	ldrd	r8, [fp]
	ldrd	r10, [r10]
	strd	r4, [sp, #136]
	add	r4, sp, #704
	strd	r2, [r4]
	ldrd	r4, [sp, #208]
	ldrd	r2, [sp, #192]
	eor	r8, r8, r10
	eor	r9, r9, fp
	ldrd	r10, [sp, #72]
	add	lr, sp, #680
	eors	r2, r2, r4
	eors	r3, r3, r5
	strd	r10, [lr]
	strd	r2, [sp, #144]
	ldrd	r10, [sp, #128]
	ldrd	r2, [sp, #152]
	add	lr, sp, #696
	add	r4, sp, #688
	strd	r2, [r4]
	strd	r10, [lr]
	ldrd	r2, [sp, #40]
	ldrd	r10, [sp, #200]
	ldrd	r4, [sp, #8]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [sp, #80]
	strd	r10, [sp, #168]
	add	r10, sp, #672
	strd	r4, [r10]
	add	r4, sp, #648
	strd	r2, [r4]
	ldrd	r2, [sp, #32]
	ldrd	r10, [sp, #88]
	ldrd	r4, [sp, #24]
	add	lr, sp, #664
	eors	r6, r6, r2
	eors	r7, r7, r3
	ldrd	r2, [sp, #96]
	strd	r10, [lr]
	add	r10, sp, #656
	strd	r4, [r10]
	add	r4, sp, #640
	strd	r2, [r4]
	add	r3, sp, #256
	ldrd	r10, [r3]
	ldrd	r2, [sp, #64]
	ldrd	r4, [sp, #48]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #32]
	add	r10, sp, #632
	ldrd	r2, [sp, #16]
	strd	r4, [r10]
	ldrd	r4, [sp, #56]
	add	fp, sp, #264
	eors	r2, r2, r4
	eors	r3, r3, r5
	ldrd	r10, [fp]
	ldrd	r4, [sp, #16]
	strd	r2, [sp, #56]
	add	r1, sp, #720
	add	r3, sp, #480
	strd	r10, [r1, #-184]!
	ldrd	r2, [r3]
	ldrd	r10, [sp, #120]
	eors	r6, r6, r4
	eors	r7, r7, r5
	ldrd	r4, [sp, #136]
	eor	r8, r8, r2
	eor	r9, r9, r3
	eor	r4, r4, r10
	ldrd	r2, [sp, #168]
	eor	r5, r5, fp
	ldrd	r10, [sp, #112]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #120]
	ldrd	r10, [sp, #160]
	ldrd	r2, [sp, #32]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #160]
	ldrd	r10, [sp, #56]
	ldrd	r2, [sp, #144]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #112]
	ldrd	r2, [sp, #72]
	eor	r2, r2, r8
	eor	r3, r3, r9
	ldrd	r8, [sp, #128]
	strd	r2, [sp, #32]
	add	r3, sp, #472
	ldrd	r10, [sp, #176]
	eor	r6, r6, r8
	eor	r7, r7, r9
	ldrd	r8, [r3]
	ldrd	r2, [sp, #24]
	eor	r4, r4, r10
	eor	r5, r5, fp
	eor	r8, r8, r2
	ldrd	r10, [sp, #120]
	eor	r9, r9, r3
	ldrd	r2, [sp, #152]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #136]
	ldrd	r2, [sp, #104]
	ldrd	r10, [sp, #160]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #120]
	ldrd	r2, [sp, #88]
	ldrd	r10, [sp, #64]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #64]
	ldrd	r2, [sp, #8]
	ldrd	r10, [sp, #112]
	eor	r10, r10, r2
	eor	fp, fp, r3
	strd	r10, [sp, #176]
	ldrd	r10, [sp, #56]
	eor	r2, r2, r10
	eor	r3, r3, fp
	strd	r2, [sp, #104]
	ldrd	r2, [sp, #8]
	add	r10, sp, #600
	eors	r2, r2, r6
	eors	r3, r3, r7
	strd	r2, [r10]
	ldrd	r2, [sp, #72]
	add	r6, sp, #608
	eors	r2, r2, r4
	eors	r3, r3, r5
	ldrd	r10, [sp, #24]
	ldrd	r4, [sp, #48]
	strd	r2, [r6]
	ldrd	r2, [sp, #32]
	eor	r4, r4, r8
	eor	r10, r10, r2
	eor	fp, fp, r3
	eor	r5, r5, r9
	add	r3, sp, #584
	add	r6, sp, #560
	strd	r10, [r3]
	strd	r4, [r6]
	ldrd	r10, [sp, #96]
	ldrd	r8, [sp, #40]
	ldrd	r4, [sp, #136]
	ldrd	r2, [sp, #88]
	eor	r8, r8, r10
	eor	r9, r9, fp
	add	fp, sp, #544
	ldrd	r6, [sp, #152]
	strd	r8, [fp]
	ldrd	r8, [sp, #120]
	eors	r2, r2, r4
	eors	r3, r3, r5
	add	r5, sp, #592
	ldrd	r10, [sp, #64]
	strd	r2, [r5]
	eor	r6, r6, r8
	ldrd	r2, [sp, #96]
	eor	r7, r7, r9
	add	r9, sp, #616
	ldrd	r4, [sp, #128]
	strd	r6, [r9]
	ldrd	r8, [sp, #176]
	eor	r10, r10, r2
	eor	fp, fp, r3
	add	r3, sp, #568
	strd	r10, [r3]
	eor	r8, r8, r4
	ldrd	r2, [sp, #80]
	eor	r9, r9, r5
	ldrd	r4, [sp, #16]
	ldrd	r6, [sp, #80]
	ldrd	r10, [sp, #104]
	eors	r5, r5, r3
	add	r3, sp, #624
	strd	r8, [r3]
	eors	r4, r4, r2
	eor	r6, r6, r10
	eor	r7, r7, fp
	movs	r2, #96
	add	r8, sp, #576
	add	r9, sp, #552
	strd	r6, [r8]
	strd	r4, [r9]
	bl	memcpy
	add	sp, sp, #724
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	vec_mul, .-vec_mul
	.align	2
	.global	vec_sq
	.thumb
	.thumb_func
	.type	vec_sq, %function
vec_sq:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrd	r10, [r1, #56]
	sub	sp, sp, #100
	ldrd	r2, [r1, #88]
	ldrd	r4, [r1, #16]
	strd	r10, [sp, #40]
	ldrd	r10, [r1, #64]
	eors	r4, r4, r2
	eors	r5, r5, r3
	ldrd	r8, [r1]
	ldrd	r6, [r1, #40]
	eor	r4, r4, r10
	eor	r5, r5, fp
	ldrd	r10, [r1, #48]
	eors	r6, r6, r2
	eors	r7, r7, r3
	eor	r10, r10, r8
	eor	fp, fp, r9
	strd	r2, [sp, #8]
	ldrd	r8, [sp, #40]
	ldrd	r2, [r1, #8]
	strd	r10, [sp]
	eor	r8, r8, r2
	ldrd	r10, [r1, #72]
	eor	r9, r9, r3
	ldrd	r2, [r1, #24]
	strd	r10, [sp, #72]
	eor	r10, r10, r2
	eor	fp, fp, r3
	ldrd	r2, [r1, #64]
	strd	r6, [sp, #80]
	strd	r4, [sp, #32]
	ldrd	r6, [r1, #32]
	ldrd	r4, [r1, #80]
	strd	r2, [sp, #56]
	ldrd	r2, [r1, #48]
	eors	r6, r6, r4
	strd	r2, [sp, #24]
	eors	r7, r7, r5
	mov	r1, sp
	movs	r2, #96
	strd	r8, [sp, #16]
	strd	r10, [sp, #48]
	strd	r4, [sp, #88]
	strd	r6, [sp, #64]
	bl	memcpy
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	vec_sq, .-vec_sq
	.align	2
	.global	vec_copy
	.thumb
	.thumb_func
	.type	vec_copy, %function
vec_copy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r2, [r1]
	strd	r2, [r0]
	ldrd	r2, [r1, #8]
	strd	r2, [r0, #8]
	ldrd	r2, [r1, #16]
	strd	r2, [r0, #16]
	ldrd	r2, [r1, #24]
	strd	r2, [r0, #24]
	ldrd	r2, [r1, #32]
	strd	r2, [r0, #32]
	ldrd	r2, [r1, #40]
	strd	r2, [r0, #40]
	ldrd	r2, [r1, #48]
	strd	r2, [r0, #48]
	ldrd	r2, [r1, #56]
	strd	r2, [r0, #56]
	ldrd	r2, [r1, #64]
	strd	r2, [r0, #64]
	ldrd	r2, [r1, #72]
	strd	r2, [r0, #72]
	ldrd	r2, [r1, #80]
	strd	r2, [r0, #80]
	ldrd	r2, [r1, #88]
	strd	r2, [r0, #88]
	bx	lr
	.size	vec_copy, .-vec_copy
	.align	2
	.global	vec_or
	.thumb
	.thumb_func
	.type	vec_or, %function
vec_or:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	ldrd	r2, [r0, #16]
	ldrd	r4, [r0, #8]
	ldrd	r6, [r0]
	ldrd	r8, [r0, #24]
	orrs	r2, r2, r4
	orrs	r3, r3, r5
	ldrd	r10, [r0, #32]
	ldrd	r4, [r0, #40]
	orrs	r6, r6, r2
	orrs	r7, r7, r3
	orr	r8, r8, r6
	orr	r9, r9, r7
	ldrd	r6, [r0, #48]
	ldrd	r2, [r0, #56]
	orr	r10, r10, r8
	orr	fp, fp, r9
	orr	r10, r10, r4
	orr	fp, fp, r5
	ldrd	r4, [r0, #64]
	orr	r10, r10, r6
	orr	fp, fp, r7
	ldrd	r6, [r0, #72]
	ldrd	r8, [r0, #80]
	orr	r2, r2, r10
	orr	r3, r3, fp
	ldrd	r0, [r0, #88]
	orrs	r4, r4, r2
	orrs	r5, r5, r3
	orrs	r4, r4, r6
	orrs	r5, r5, r7
	orr	r4, r4, r8
	orr	r5, r5, r9
	orrs	r0, r0, r4
	orrs	r1, r1, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	vec_or, .-vec_or
	.align	2
	.global	vec_inv
	.thumb
	.thumb_func
	.type	vec_inv, %function
vec_inv:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrd	r2, [r1]
	push	{r4, r5, r6, r7, lr}
	strd	r2, [r0]
	ldrd	r2, [r1, #8]
	strd	r2, [r0, #8]
	ldrd	r2, [r1, #16]
	strd	r2, [r0, #16]
	ldrd	r2, [r1, #24]
	strd	r2, [r0, #24]
	ldrd	r2, [r1, #32]
	strd	r2, [r0, #32]
	ldrd	r2, [r1, #40]
	strd	r2, [r0, #40]
	ldrd	r2, [r1, #48]
	strd	r2, [r0, #48]
	ldrd	r2, [r1, #56]
	strd	r2, [r0, #56]
	ldrd	r4, [r1, #64]
	strd	r4, [r0, #64]
	ldrd	r4, [r1, #72]
	strd	r4, [r0, #72]
	ldrd	r4, [r1, #80]
	strd	r4, [r0, #80]
	ldrd	r4, [r1, #88]
	mov	r6, r0
	sub	sp, sp, #196
	mov	r7, r1
	strd	r4, [r0, #88]
	mov	r1, r0
	bl	vec_sq
	mov	r2, r7
	mov	r1, r6
	mov	r0, sp
	bl	vec_mul
	mov	r0, r6
	mov	r1, sp
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r2, sp
	mov	r1, r6
	add	r0, sp, #96
	bl	vec_mul
	mov	r0, r6
	add	r1, sp, #96
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	add	r2, sp, #96
	mov	r0, r6
	mov	r1, r6
	bl	vec_mul
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r2, sp
	mov	r0, r6
	mov	r1, r6
	bl	vec_mul
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	mov	r0, r6
	mov	r1, r6
	mov	r2, r7
	bl	vec_mul
	mov	r0, r6
	mov	r1, r6
	bl	vec_sq
	add	sp, sp, #196
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	vec_inv, .-vec_inv
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
