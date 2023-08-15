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

  @ How sigmas loop
	
	LDR r1, [r0]  @ Read current index ([] means that the value inside will be used as pointer)
	ADD r2, r1	  @ Sum current value to r2
	ADD r0, #4	  @ Increase index
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	LDR r1, [r0] 
	ADD r2, r1
	ADD r0, #4
	
	MOV r7, #1
	SWI 0
