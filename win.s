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
	.file	"win.c"
	.text
	.align	2
	.global	win
	.type	win, %function
win:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #1
	str	r3, [sp, #0]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r4, r3, #1
	mvn	r3, #0
	str	r3, [sp, #0]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r3, r4, r3
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [sp, #0]
	mvn	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r4, r3, #1
	mov	r3, #0
	str	r3, [sp, #0]
	mov	r3, #1
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r3, r4, r3
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [sp, #0]
	mov	r3, #1
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r4, r3, #1
	mvn	r3, #0
	str	r3, [sp, #0]
	mvn	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r3, r4, r3
	str	r3, [fp, #-24]
	mvn	r3, #0
	str	r3, [sp, #0]
	mov	r3, #1
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r4, r3, #1
	mov	r3, #1
	str	r3, [sp, #0]
	mvn	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	bl	checkSpaces
	mov	r3, r0
	add	r3, r4, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bgt	.L2
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	bgt	.L2
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bgt	.L2
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	ble	.L3
.L2:
	mov	r3, #1
	b	.L4
.L3:
	mov	r3, #0
.L4:
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
	.size	win, .-win
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.align	2
	.global	checkSpaces
	.type	checkSpaces, %function
checkSpaces:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-44]
	mov	r0, r3
	ldr	r1, [fp, #-40]
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-44]
	ldr	r1, [fp, #-40]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-40]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L6
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	ble	.L6
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L6
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bgt	.L6
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L9
.L7:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-40]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L8
.L9:
	mov	r0, r0	@ nop
.L6:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	checkSpaces, .-checkSpaces
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
