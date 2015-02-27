	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"ascii.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%s\000"
	.align	2
.LC1:
	.ascii	"--- \000"
	.align	2
.LC2:
	.ascii	"|%c|\000"
	.align	2
.LC3:
	.ascii	"|_|\000"
	.text
	.align	2
	.global	ascii
	.type	ascii, %function
ascii:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4 
	sub	sp, sp, #32
	str	r0, [fp, #-24] r0 is initialized to become vpos
	str	r1, [fp, #-28] r1 is initialized to become topLine
	str	r2, [fp, #-32] r2 is initialized to become hpos
	strb	r3, [fp, #-33] 
	mov	r3, #0 r3 now stores 0 
	str	r3, [fp, #-8] r3 now stores int rows 
	mov	r3, #0 r3 reset to 0 
	str	r3, [fp, #-16] r3 initialized to become symbol1
	mov	r3, #0 r3 reset to 0 
	str	r3, [fp, #-12] r3 initialized to become columns 
	b	.L2
.L3:
	ldr	r3, .L11 #signifies that a string will be printed 
	mov	r0, r3 # moves r3 into r0
	ldr	r1, .L11+4 #r1 will now store an array of strings "---"
	bl	printf 
	ldr	r3, [fp, #-12] r3 is loading columns 
	add	r3, r3, #1 add 1 to columns (r3) and store in r3
	str	r3, [fp, #-12] r3 is storing the new r3
.L2:
	ldr	r2, [fp, #-12] stores the value of columns in r2
	ldr	r3, [fp, #-32] r3 stores topLine 
	cmp	r2, r3 #Compares topLine to columns 
	blt	.L3
	mov	r0, #10 10 is now in r0
	bl	putchar 
	mov	r3, #0 r3 stores 0 
	str	r3, [fp, #-8] rows is is now stored in r3
	b	.L4
.L10:
	mov	r3, #0  store 0 into r3 
	str	r3, [fp, #-16] 
	b	.L5
.L9:
	ldr	r3, [fp, #-8] 
	ldr	r2, [fp, #-32]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L6
	ldr	r2, .L11+8
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	printf
	b	.L7
.L6:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-32]
	mul	r2, r2, r3 #multiplies vpos and columns 
	ldr	r3, [fp, #-16] 
	add	r3, r2, r3 #add r2 and r3 and store in r3
	mov	r3, r3, asl #2 arithmet shift left r3 by two spots, store in r3
	ldr	r2, [fp, #-24] 
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #2 compared else if statement with 2 
	bne	.L8 
	ldr	r2, .L11+8
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	printf
	b	.L7
.L8:
	ldr	r3, .L11+12 #if branch is unequal print 
	mov	r0, r3
	bl	printf
.L7:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L5:
	ldr	r2, [fp, #-16] 
	ldr	r3, [fp, #-32]
	cmp	r2, r3 #compares hpos and columns 
	blt	.L9 
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-8] 
	add	r3, r3, #1 increments the loop by 1 
	str	r3, [fp, #-8] store incremented value in r3 
.L4:
	ldr	r2, [fp, #-8] loads the value of rows into r2
	ldr	r3, [fp, #-28] load the value of vpos into r3 
	cmp	r2, r3 
	blt	.L10
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	ascii, .-ascii
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
