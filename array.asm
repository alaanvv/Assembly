.global _start
_start:
	
	.data
list:
	.word 1, 2, 3, 4, 5, 6, 7, 8, 9

.text
.global _start
_start:
	@ r0 Current offset
	@ r1 Current value
	@ r2 Acumulator
	
	LDR r0, =list @ Start r0 as the first element
	
	@ Loop like a boss B)
	
	@ Pre-increment
	@ [addr, #offset]! Increase the addr pointer value by offset and read it
	@ Post-increment
	@ [addr], #offset Read the value the increase it
	LDR r1, [r0], #4  @ Read current index, and increment 4 bits in it
	ADD r2, r1	  @ Sum current value to r2
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	LDR r1, [r0], #4
	ADD r2, r1
	
	MOV r7, #1
	SWI 0
