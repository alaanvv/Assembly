.global _start
_start:
	MOV r0, #0
	MOV r1, #1
	
loop:
	ADD r0, r1
	ADD r1, r0
	
	BAL loop
