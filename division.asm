.text
.global _start
_start:
	MOV r0, #7  @ Dividend (Will become the rest)
	MOV r1, #5  @ Divider
	MOV r2, #0  @ Quotient

substractFragment:
	CMP r0, r1
	BLT end
	
	SUB r0, r1
	ADD r2, #1
	
	B substractFragment
	
_end:
	MOV r7, #1
	SWI #0
