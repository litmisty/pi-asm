/* http://thinkingeek.com/2013/01/27/arm-assembler-raspberry-pi-chapter-8/ */

.data
.balign 4
a: .skip 400

.balign 4
b: .skip 8

.text
.global main
main:
	ldr r1, addr_of_a
	mov r2, #0
loop:
	cmp r2, #100
	beq end
	add r3, r1, r2, LSL #2 	/* r3 <- r1 + (r2*4) */
	str r2, [r3]		/* *r3 <- r2 */
	add r2, r2, #1
	b loop
end:
	bx lr

addr_of_a: 
	.word a
