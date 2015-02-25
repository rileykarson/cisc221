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
	.file	"main.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Please enter a not full column\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32 ///Variable declaration
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4 ///Reset frame pointer
	sub	sp, sp, #40 ///sp = sp-40
	sub	r0, fp, #28 ///fp-28 in r0. Or, store rows in r0
	sub	r1, fp, #32 ///fp-32 in r1. Or, store, columns in r1
	sub	r2, fp, #33 ///fp-33 in r2. Or, store symbol1 in r2
	sub	r3, fp, #34 ///fp-34 in r3. Or, store symbol2 in r3
	bl	initialPrompt ///break w/ link to initial prompt. Initial prompt is called with arguments in r0, r1, r2, r3
	ldr	r2, [fp, #-28] ///Load fp-28 into r2. Or, load rows into r2
	ldr	r3, [fp, #-32] /// Load fp-28 into r3. Or, load columns into r3
	mov	r0, r2 ///Move rows into r0, so that makeArray uses the rows as it's first argument
	mov	r1, r3 ///Move columns into r1, so that makeArray uses columns as it's second argument
	bl	makeArray ///Call makeArray
	str	r0, [fp, #-16] ///Store rows in fp-16
	mov	r3, #0 ///Move 0 into r3
	str	r3, [fp, #-8] ///winFlag = 0
	mov	r3, #1 ///Move 1 into r3
	str	r3, [fp, #-12] ///playCount = 1
	b	.L2 ///Branch to .L2
.L5:
	ldr	r3, [fp, #-32] ///Load fp-32 into r3. Or, load dropCol into r3
	mov	r0, r3 ///Move dropCol into r0 so that promptForNextDrop uses it as it's first (and only) argument
	bl	promptForNextDrop ///Call promptForNextDrop
	str	r0, [fp, #-20] ///Store the modified dropCol in fp-20
	ldr	r2, [fp, #-28] 
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-12]
	str	r1, [sp, #0]
	ldr	r0, [fp, #-16] 
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-20] ///Allocating appropriate variables arr, rows, columns, dropCol, to appropriate registers for argument passing (r0, r1, r2, r3 respectively. playCount is passed via the stack ([sp, #0])
	bl	pieceDrop ///int pos = pieceDrop(arr, rows, columns, dropCol, playCount)
	str	r0, [fp, #-24] ///store pos at fp-24
	ldr	r3, [fp, #-24]
	cmp	r3, #0 ///if (pos>=0) 
	blt	.L3   ///branch to .L3 if less than
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r0, [fp, #-16]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-24] ///Allocating appropriate variables arr, rows columns, pos to appropriate registers for argumnet passing (r0, r1, r2, r3 respectively)
	bl	win ///winFlag = win(arr, rows, columns, pos)
	str	r0, [fp, #-8] ///Store winFlag at fp-8
	ldr	r3, [fp, #-12] ///Load playCount
	add	r3, r3, #1 ///playCount += 1
	str	r3, [fp, #-12]
	b	.L4 ///branch to .L4
.L3:
	ldr	r0, .L6
	bl	puts ///printf("Please enter a not full column\n")
.L4:
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	ldrb	r0, [fp, #-34]	@ zero_extendqisi2
	str	r0, [sp, #0]
	ldr	r0, [fp, #-16] ///Allocating appropriate variables arry, rows, columns, symbol1 to appropriate registers for argument passing (r0, r1, r2, r3 respectively). symbol2 is passed via the stack ([sp, #0])

	bl	ascii ///ascii(arr, rows, columns, symbol1, symbol2)
.L2:
	ldr	r3, [fp, #-8] ///winFlag into r3
	cmp	r3, #0 ///while (winFlag == 0)
	beq	.L5 ///if winFlag is 0, branch to .L5
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}  ///returns 0
.L7:
	.align	2
.L6:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
