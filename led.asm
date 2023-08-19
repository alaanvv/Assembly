.equ LED, 0xFF200000 @ LED hardware position in memory

.text
.global _start
_start:
	LDR r0, =LED
	MOV r1, #0x80000000
	
loop:
	STR r1, [r0]
	ROR r1, #1
	B loop
