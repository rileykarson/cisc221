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
	.file	"221dropFunc.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	pieceDrop
	.type	pieceDrop, %function
pieceDrop:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20] 
	str	r2, [fp, #-24] 
	str	r3, [fp, #-28] 
	mov	r3, #0         ///move 0 into r3  or  stopFlag = 0
	str	r3, [fp, #-8]  ///Store stopFlag at fp-8
	ldr	r3, [fp, #-28] 
	sub	r3, r3, #1     ///index = dropCol-1
	str	r3, [fp, #-12] ///Store index at fp-12
	ldr	r3, .L10       ///Load first element at .L10 into r3 (.word LC0)
	mov	r0, r3	       ///Move r3 into r0
	ldr	r1, [fp, #-12] ///Load index into r1
	bl	printf	       ///Print index
	b	.L2	       ///Branch to .L2
.L9:
	ldr	r2, [fp, #-12] ///Load index into r2
	ldr	r3, [fp, #-24] ///Load arrayColumn into r3
	add	r2, r2, r3     ///index + arrayColumn in r2
	ldr	r3, [fp, #-20] ///Load arrayRow into r3 
	ldr	r1, [fp, #-24] ///Load arrayColumn into r1
	mul	r3, r1, r3     ///arrayRow * arrayColumn into r3
	cmp	r2, r3	       ///Compare the vales in r2 and r3
	blt	.L3	       ///If r3<=r2, branch to .L3
	ldr	r3, [fp, #4]
	and	r3, r3, #1
	cmp	r3, #0         ///If ((playCount%2)==0)
	bne	.L4	       ///If not, branch to .L4
	ldr	r3, [fp, #-12] ///Load index into r3
	mov	r3, r3, asl #2 
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #2
	str	r2, [r3, #0] ///myArray[index] = 2
	mov	r3, #1
	str	r3, [fp, #-8] ///stopFlag = 1
 	b	.L2	      ///Branch to L2	
.L4:
	ldr	r3, [fp, #-12] ///Load index into r3
	mov	r3, r3, asl #2 
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3, #0] ///myArray[index] = 1
	mov	r3, #1
	str	r3, [fp, #-8] ///stopFlag = 1
	b	.L2           ///branch to .L2 
.L3:
	ldr	r2, [fp, #-12] ///Load index into r2
	ldr	r3, [fp, #-24] ///Load  into r3
	add	r3, r2, r3     /// index + arrayColumn   into r3
	mov	r3, r3, asl #2 
	ldr	r2, [fp, #-16] ///Load myArray into r2 
	add	r3, r2, r3     ///myArray + (index+arrayColumn)asl #2 into r3 
	ldr	r3, [r3, #0]   ///myArray[index+arrayColumn] into r3
	cmp	r3, #0         ///if (myArray[index+arrayColumn] != 0)
	beq	.L5	       ///if it evaluates to 0, branch to .L5
	ldr	r3, [fp, #-12] ///Load index into r3
	mov	r3, r3, asl #2 ///index asl #2 into r3 
	ldr	r2, [fp, #-16] ///myArray into r2
	add	r3, r2, r3     
	ldr	r3, [r3, #0]  ///myArray[index]
	cmp	r3, #0	    ///if (myArray[index] == 0)
	beq	.L6        ///Branch if equal to .L6
	mvn	r3, #0     ///???
	b	.L7	  ///if (myArray[index] != 0)... branch to .L7
.L6:
	ldr	r3, [fp, #4]
	and	r3, r3, #1
	cmp	r3, #0  ///if ((playCount%2) == 0)
	bne	.L8     ///branch if not equal to .L8	
	ldr	r3, [fp, #-12] ///Load index into r3
	mov	r3, r3, asl #2 
	ldr	r2, [fp, #-16] 
	add	r3, r2, r3
	mov	r2, #2      ///myArray[index] = 2
	str	r2, [r3, #0]
	mov	r3, #1    ///stopFlag = 1
	str	r3, [fp, #-8] ///Store stopFlag at fp-8 
	b	.L2   	      ///Branch to .L2
.L8:
	ldr	r3, [fp, #-12] ///Load index into r3
	mov	r3, r3, asl #2 
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #1     ///myArray[index] = 1
	str	r2, [r3, #0]
	mov	r3, #1    ///stopFlag = 1
	str	r3, [fp, #-8] ///Store stopFlag at fp-8
	b	.L2   	    ///Branch to .L2
.L5:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3    ///index += arrayColumn
	str	r3, [fp, #-12] ///Store index at fp-12
.L2:
	ldr	r3, [fp, #-8] ///Load stopFlag into r3
	cmp	r3, #0	      ///Compare stopFlag to 0
	beq	.L9	      ///If equal, branch to .L9
	ldr	r3, .L10      ///Load first element stored at .L10 into r3 (.word .LC0)
	mov	r0, r3	      ///Move r0 into r3
	ldr	r1, [fp, #-12]///Load index into r1
	bl	printf	      ///Print index
	ldr	r3, [fp, #-12]///Load index into r3
.L7:
	mov	r0, r3 ////r3 into r0
	sub	sp, fp, #4 ///return ??
	ldmfd	sp!, {fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.size	pieceDrop, .-pieceDrop
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
