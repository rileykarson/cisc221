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
	.file	"array.c"
	.text
	.align	2
	.global	makeArray
	.type	makeArray, %function
makeArray:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24] r0 is initialized in rows 
	str	r1, [fp, #-28] r1 intializs columns 
	ldr	r3, [fp, #-24] loads the values of rows into r3
	ldr	r2, [fp, #-28] loads the values of columns into r2
	mul	r3, r2, r3 #Multiplies r2,r3 storing the result in r3
	str	r3, [fp, #-12] r3 is initializes arraySize 
	ldr	r3, [fp, #-12] loads the value of arraySize
	mov	r3, r3, asl #2 arithematic shift left of arraySize, storing again in r3
	mov	r0, r3 #arraySize is moved to r0
	bl	malloc #calls of malloc with one perameter 
	mov	r3, r0 #arraySize is moved to r3
	str	r3, [fp, #-16] r3 is initialized as baseArray 
	mov	r3, #0 changes r3 to 0
	str	r3, [fp, #-8] r3 is initialized as dummy 
	mov	r3, #0 changes r3 to 0 
	str	r3, [fp, #-8] r3 is intialized as dummy 
	b	.L2 #branches into hte for loop 
.L3:
	ldr	r3, [fp, #-8]  loads the value of dummy into r3
	mov	r3, r3, asl #2 arithematic shift left of arraySize, storing value in r3
	ldr	r2, [fp, #-16] loads the value of baseArray into r2
	add	r3, r2, r3 #adds r2 and r3, storing the result in r3
	mov	r2, #0 /// Moves 0 into r2, counter for the loop 
	str	r2, [r3, #0] 
	ldr	r3, [fp, #-8] loads the value of dummy into r3
	add	r3, r3, #1 /// Counter for the loop. Increments 1 up 
	str	r3, [fp, #-8] loads the value of dummy into r3
.L2:
	ldr	r3, [fp, #-12] loads the value of dummy 
	sub	r2, r3, #1 subtract 1 from r3 stores in r2
	ldr	r3, [fp, #-8] loads the value of r3
	cmp	r2, r3  # compares the counter to the condition 
	bgt	.L3		#Breaks the loop if comparison is broken - Branches to L3
	ldr	r3, [fp, #-16] 
	mov	r0, r3 #moves r3 into r0
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	makeArray, .-makeArray
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
