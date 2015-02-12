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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	sub	r0, fp, #28
	sub	r1, fp, #32
	sub	r2, fp, #33
	sub	r3, fp, #34
	bl	initialPrompt
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	mov	r0, r2
	mov	r1, r3
	bl	makeArray
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L2
.L5:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	promptForNextDrop
	str	r0, [fp, #-20]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-12]
	str	r1, [sp, #0]
	ldr	r0, [fp, #-16]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	bl	pieceDrop
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	blt	.L3
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r0, [fp, #-16]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	bl	win
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L4
.L3:
	ldr	r0, .L6
	bl	puts
.L4:
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	ldrb	r0, [fp, #-34]	@ zero_extendqisi2
	str	r0, [sp, #0]
	ldr	r0, [fp, #-16]
	bl	ascii
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L5
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
