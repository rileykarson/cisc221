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
	.file	"inputFunctions.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Welcome to connect 4!\000"
	.align	2
.LC1:
	.ascii	"Enter number of columns in grid: \000"
	.align	2
.LC2:
	.ascii	" %d\000"
	.align	2
.LC3:
	.ascii	"Incompatible input please enter a new column number"
	.ascii	": \000"
	.align	2
.LC4:
	.ascii	"Column entered is out of bounds enter a column numb"
	.ascii	"er between 1 and 10 inclusive: \000"
	.align	2
.LC5:
	.ascii	"Enter number of rows in grid: \000"
	.align	2
.LC6:
	.ascii	"%d\000"
	.align	2
.LC7:
	.ascii	"Incompatible input please enter a new row number: \000"
	.align	2
.LC8:
	.ascii	"Rows entered is out of bounds enter a row number be"
	.ascii	"tween 1 and 10 inclusive: \000"
	.align	2
.LC9:
	.ascii	"Enter the symbol that player 1 would like to play w"
	.ascii	"ith: \000"
	.align	2
.LC10:
	.ascii	" %c\000"
	.align	2
.LC11:
	.ascii	"Incompatible input please enter a new symbol: \000"
	.align	2
.LC12:
	.ascii	"Enter the symbol that player 2 would like to play w"
	.ascii	"ith: \000"
	.text
	.align	2
	.global	initialPrompt
	.type	initialPrompt, %function
initialPrompt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r0, .L18
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L18+4
	mov	r0, r3
	bl	printf
	b	.L2
.L6:
	ldr	r3, .L18+8
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fgetc
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L3
	ldr	r3, .L18+16
	mov	r0, r3
	bl	printf
	b	.L2
.L3:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	cmp	r3, #10
	bgt	.L4
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L5
.L4:
	ldr	r3, .L18+20
	mov	r0, r3
	bl	printf
	b	.L2
.L5:
	mov	r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L6
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L18+24
	mov	r0, r3
	bl	printf
	b	.L7
.L11:
	ldr	r3, .L18+28
	mov	r0, r3
	ldr	r1, [fp, #-20]
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fgetc
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L8
	ldr	r3, .L18+32
	mov	r0, r3
	bl	printf
	b	.L7
.L8:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #10
	bgt	.L9
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L10
.L9:
	ldr	r3, .L18+36
	mov	r0, r3
	bl	printf
	b	.L7
.L10:
	mov	r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L11
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L18+40
	mov	r0, r3
	bl	printf
	b	.L12
.L14:
	ldr	r3, .L18+44
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fgetc
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L13
	ldr	r3, .L18+48
	mov	r0, r3
	bl	printf
	b	.L12
.L13:
	mov	r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L14
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L18+52
	mov	r0, r3
	bl	printf
	b	.L15
.L17:
	ldr	r3, .L18+44
	mov	r0, r3
	ldr	r1, [fp, #-28]
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fgetc
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L16
	ldr	r3, .L18+48
	mov	r0, r3
	bl	printf
	b	.L15
.L16:
	mov	r3, #1
	str	r3, [fp, #-8]
.L15:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L17
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L19:
	.align	2
.L18:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	stdin
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.size	initialPrompt, .-initialPrompt
	.section	.rodata
	.align	2
.LC13:
	.ascii	"Enter a column that you would like to drop the next"
	.ascii	" piece: \000"
	.align	2
.LC14:
	.ascii	"Column entered is not valid please try again: \000"
	.align	2
.LC15:
	.ascii	"Column entered is out of bounds please enter a colu"
	.ascii	"mn that is between 1 and %d inclusive: \000"
	.text
	.align	2
	.global	promptForNextDrop
	.type	promptForNextDrop, %function
promptForNextDrop:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L26
	mov	r0, r3
	bl	printf
	b	.L21
.L25:
	ldr	r2, .L26+4
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, .L26+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	fgetc
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L22
	ldr	r3, .L26+12
	mov	r0, r3
	bl	printf
	b	.L21
.L22:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	ble	.L23
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	ble	.L24
.L23:
	ldr	r3, .L26+16
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	printf
	b	.L21
.L24:
	mov	r3, #1
	str	r3, [fp, #-8]
.L21:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L27:
	.align	2
.L26:
	.word	.LC13
	.word	.LC6
	.word	stdin
	.word	.LC14
	.word	.LC15
	.size	promptForNextDrop, .-promptForNextDrop
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
