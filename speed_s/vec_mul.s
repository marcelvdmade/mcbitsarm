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
	.text
	.align	2
	.global	vec_mul_s
	.thumb
	.thumb_func
	.type	vec_mul_s, %function
vec_mul_s:
    @ args = 0, pretend = 0, frame = 100
    @ frame_needed = 0, uses_anonymous_args = 0
    @ link register save eliminated.
    push {r4, r5, r6, r7, r8, r9, r10, fp, lr}

    #Push arguments from list pointer on the stack..
    sub sp, sp, #100

    #Store r0 = h
    str r0, [sp]

    #Get L0
    ldr r0, [r1]
    ldr r3, [r2]
    and r4, r0, r3
    str r4, [sp, #4]
    #get L1
    ldr r4, [r1, #4]
    ldr r5, [r2, #4]
    and r6, r4, r3
    and r7, r0, r5
    eor r6, r6, r7
    str r6, [sp, #8]
    #get L2
    ldr r6, [r1, #8]
    ldr r7, [r2, #8]
    and r8, r6, r3
    and r9, r4, r5
    eor r8, r8, r9
    and r9, r0, r7
    eor r8, r8, r9
    str r8, [sp, #12]
    #get L3
    ldr r8, [r1, #12]
    ldr r9, [r2, #12]
    and r10, r8, r3
    and r11, r6, r5
    eor r10, r10, r11
    and r11, r4, r7
    eor r10, r10, r11
    and r11, r0, r9
    eor r10, r10, r11
    str r10, [sp, #16]
    #get L4
    ldr r10, [r1, #16]
    ldr r11, [r2, #16]
    and r12, r10, r3
    and r14, r8, r5
    eor r12, r12, r14
    and r14, r6, r7
    eor r12, r12, r14
    and r14, r4, r9
    eor r12, r12, r14
    and r14, r0, r11
    eor r12, r12, r14
    str r12, [sp, #20]
    #get L5
    ldr r12, [r1, #20]
    and r14, r12, r3
    ldr r3, [r2, #20]
    and r0, r0, r3
    eor r0, r0, r14
    and r14, r10, r5
    eor r0, r0, r14
    and r14, r8, r7
    eor r0, r0, r14
    and r14, r6, r9
    eor r0, r0, r14
    and r14, r4, r11
    eor r0, r0, r14
    str r0, [sp, #24]
    #get L6, keep in mem
    and r0, r12, r5
    and r14, r10, r7
    eor r0, r0, r14
    and r14, r8, r9
    eor r0, r0, r14
    and r14, r6, r11
    eor r0, r0, r14
    and r4, r4, r3
    eor r4, r4, r0
    #get L7, keep in mem
    and r5, r12, r7
    and r14, r10, r9
    eor r5, r5, r14
    and r14, r8, r11
    eor r5, r5, r14
    and r14, r6, r3
    eor r5, r5, r14
    #get L8, keep in mem
    and r6, r12, r9
    and r14, r10, r11
    eor r6, r6, r14
    and r14, r8, r3
    eor r6, r6, r14
    #get L9, keep in mem
    and r7, r12, r11
    and r14, r10, r3
    eor r7, r7, r14
    #get L10, keep in mem
    and r8, r12, r3

    #Get H0 xor L6
    ldr r14, [r1, #24]
    ldr r12, [r2, #24]
    and r0, r14, r12
    eor r0, r0, r4
    str r0, [sp, #28]
    #get H1 xor L7
    ldr r11, [r1, #28]
    ldr r10, [r2, #28]
    and r0, r11, r12
    and r3, r14, r10
    eor r0, r0, r3
    eor r0, r0, r5
    str r0, [sp, #32]
    #get H2 xor L8
    ldr r0, [r1, #32]
    ldr r3, [r2, #32]
    and r4, r0, r12
    and r5, r11, r10
    eor r4, r4, r5
    and r5, r14, r3
    eor r4, r4, r5
    eor r4, r4, r6
    str r4, [sp, #36]
    #get H3 xor L9
    ldr r4, [r1, #36]
    ldr r5, [r2, #36]
    and r6, r4, r12
    and r9, r0, r10
    eor r6, r6, r9
    and r9, r11, r3
    eor r6, r6, r9
    and r9, r14, r5
    eor r6, r6, r9
    eor r6, r6, r7
    str r6, [sp, #40]
    #get H4 xor L10
    ldr r6, [r1, #40]
    ldr r7, [r2, #40]
    and r9, r6, r12
    eor r8, r8, r9
    and r9, r4, r10
    eor r8, r8, r9
    and r9, r0, r3
    eor r8, r8, r9
    and r9, r11, r5
    eor r8, r8, r9
    and r9, r14, r7
    eor r8, r8, r9
    str r8, [sp, #44]
    #get H5
    ldr r8, [r1, #44]
    and r9, r8, r12
    ldr r12, [r2, #44]
    and r14, r14, r12
    eor r9, r9, r14
    and r14, r6, r10
    eor r9, r9, r14
    and r14, r4, r3
    eor r9, r9, r14
    and r14, r0, r5
    eor r9, r9, r14
    and r14, r11, r7
    eor r9, r9, r14
    str r9, [sp, #48]
    #get H6
    and r9, r8, r10
    and r14, r6, r3
    eor r9, r9, r14
    and r14, r4, r5
    eor r9, r9, r14
    and r14, r0, r7
    eor r9, r9, r14
    and r14, r11, r12
    eor r9, r9, r14
    str r9, [sp, #52]
    #get H7
    and r9, r8, r3
    and r10, r6, r5
    eor r9, r9, r10
    and r10, r4, r7
    eor r9, r9, r10
    and r10, r0, r12
    eor r9, r9, r10
    str r9, [sp, #56]
    #get H8
    and r0, r8, r5
    and r3, r6, r7
    eor r0, r0, r3
    and r3, r4, r12
    eor r0, r0, r3
    str r0, [sp, #60]
    #get H9
    and r0, r8, r7
    and r3, r6, r12
    eor r0, r0, r3
    str r0, [sp, #64]
    #get H10
    and r0, r8, r12
    str r0, [sp, #68]

    #Get M0
    ldr r0, [r1]
    ldr r3, [r1, #24]
    eor r0, r0, r3
    ldr r3, [r2]
    ldr r4, [r2, #24]
    eor r3, r3, r4
    and r4, r0, r3
    str r4, [sp, #72]
    #get M1
    ldr r4, [r1, #4]
    ldr r5, [r1, #28]
    eor r4, r4, r5
    ldr r5, [r2, #4]
    ldr r6, [r2, #28]
    eor r5, r5, r6
    and r6, r4, r3
    and r7, r0, r5
    eor r6, r6, r7
    str r6, [sp, #76]
    #get M2
    ldr r6, [r1, #8]
    ldr r7, [r1, #32]
    eor r6, r6, r7
    ldr r7, [r2, #8]
    ldr r8, [r2, #32]
    eor r7, r7, r8
    and r8, r6, r3
    and r9, r4, r5
    eor r8, r8, r9
    and r9, r0, r7
    eor r8, r8, r9
    str r8, [sp, #80]
    #get M3
    ldr r8, [r1, #12]
    ldr r9, [r1, #36]
    eor r8, r8, r9
    ldr r9, [r2, #12]
    ldr r10, [r2, #36]
    eor r9, r9, r10
    and r10, r8, r3
    and r11, r6, r5
    eor r10, r10, r11
    and r11, r4, r7
    eor r10, r10, r11
    and r11, r0, r9
    eor r10, r10, r11
    str r10, [sp, #84]
    #get M4
    ldr r10, [r1, #16]
    ldr r11, [r1, #40]
    eor r10, r10, r11
    ldr r11, [r2, #16]
    ldr r12, [r2, #40]
    eor r11, r11, r12
    and r12, r10, r3
    and r14, r8, r5
    eor r12, r12, r14
    and r14, r6, r7
    eor r12, r12, r14
    and r14, r4, r9
    eor r12, r12, r14
    and r14, r0, r11
    eor r12, r12, r14
    str r12, [sp, #88]
    #get M5   
    ldr r12, [r1, #20]
    ldr r14, [r1, #44]  
    eor r12, r12, r14
    and r14, r12, r3
    ldr r3, [r2, #20]
    ldr r1, [r2, #44]
    eor r3, r3, r1
    and r0, r0, r3
    eor r0, r0, r14
    and r14, r10, r5
    eor r0, r0, r14
    and r14, r8, r7
    eor r0, r0, r14
    and r14, r6, r9
    eor r0, r0, r14
    and r14, r4, r11
    eor r0, r0, r14
    str r0, [sp, #92]
    #get M6, keep in mem
    and r0, r12, r5
    and r14, r10, r7
    eor r0, r0, r14
    and r14, r8, r9
    eor r0, r0, r14
    and r14, r6, r11
    eor r0, r0, r14
    and r4, r4, r3
    eor r4, r4, r0
    #get M7, keep in mem
    and r5, r12, r7
    and r14, r10, r9
    eor r5, r5, r14
    and r14, r8, r11
    eor r5, r5, r14
    and r14, r6, r3
    eor r5, r5, r14
    #get M8, keep in mem
    and r6, r12, r9
    and r14, r10, r11
    eor r6, r6, r14
    and r14, r8, r3
    eor r6, r6, r14
    #get M9, keep in mem
    and r7, r12, r11
    and r14, r10, r3
    eor r7, r7, r14
    #get M10, keep in mem
    and r8, r12, r3

    #Load result pointer
    ldr r0, [sp]
    #R16
    ldr r9, [sp, #44]
    ldr r14, [sp, #68]
    eor r8, r8, r9
    eor r8, r8, r14
    #reduce R22
    eor r5, r5, r14
    eor r9, r9, r14
    #R15
    ldr r10, [sp, #40]
    ldr r14, [sp, #64]
    eor r7, r7, r10
    eor r7, r7, r14
    #reduce R21
    eor r4, r4, r14
    eor r10, r10, r14
    #R14
    ldr r11, [sp, #36]
    ldr r14, [sp, #60]
    eor r6, r6, r11
    eor r6, r6, r14
    #reduce R20
    eor r11, r11, r14
    ldr r3, [sp, #48]
    eor r14, r14, r3
    #reduce R17, store R5
    eor r11, r11, r3
    ldr r2, [sp, #24]
    eor r14, r14, r2
    eor r2, r2, r3
    eor r2, r2, r6
    str r2, [r0, #20]
    #Store R2
    ldr r2, [sp, #12]
    eor r11, r11, r2
    eor r2, r2, r6
    str r2, [r0, #8]
    #Store R11
    ldr r2, [sp, #92]
    eor r14, r14, r2
    str r14, [r0, #44]
    #reduce R19
    ldr r12, [sp, #32]
    eor r5, r5, r12
    ldr r2, [sp, #56]
    eor r5, r5, r2
    eor r9, r9, r2
    eor r12, r12, r2
    #reduce R18
    ldr r14, [sp, #28]
    ldr r6, [sp, #52]
    eor r4, r4, r6
    eor r4, r4, r14
    eor r10, r10, r6
    eor r14, r14, r6
    #R6
    ldr r6, [sp, #72]
    eor r14, r14, r6
    ldr r6, [sp, #4]
    eor r14, r14, r6
    eor r14, r14, r7
    str r14, [r0, #24]
    #R0
    eor r6, r6, r4
    str r6, [r0]
    #R3
    ldr r6, [sp, #16]
    eor r10, r10, r6
    eor r6, r6, r7
    eor r6, r6, r4
    str r6, [r0, #12]
    #R10
    ldr r6, [sp, #88]
    ldr r7, [sp, #20]
    eor r9, r9, r6
    eor r9, r9, r7
    str r9, [r0, #40]
    #R4
    eor r7, r7, r8
    eor r7, r7, r5
    str r7, [r0, #16]
    #R9
    ldr r6, [sp, #84]
    eor r10, r10, r6
    str r10, [r0, #36]
    #R8
    ldr r6, [sp, #80]
    eor r11, r11, r6
    str r11, [r0, #32]
    #R7
    ldr r6, [sp, #76]
    ldr r7, [sp, #8]
    eor r12, r12, r6
    eor r12, r12, r7
    eor r12, r12, r8
    str r12, [r0, #28]
    #R1
    eor r7, r7, r5
    str r7, [r0, #4]

    add sp, sp, #100
    @ sp needed
    pop {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	vec_mul_s, .-vec_mul_s
	.ident	"GCC: (4.8.2-14ubuntu1+6) 4.8.2"
