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
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	strb	r3, [fp, #-33]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L3:
	ldr	r3, .L11
	mov	r0, r3
	ldr	r1, .L11+4
	bl	printf
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L3
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L10:
	mov	r3, #0
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
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #2
	bne	.L8
	ldr	r2, .L11+8
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	printf
	b	.L7
.L8:
	ldr	r3, .L11+12
	mov	r0, r3
	bl	printf
.L7:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L5:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L9
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
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
