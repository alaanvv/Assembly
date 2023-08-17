.text
.global _start
_start:
	MOV r0, #5 @ Radius of the circle
	MOV r1, #3 @ PI

	@ Circle area = PI*R^2	
	MUL r0, r0
	MUL r0, r1
	
end:
	MOV r7, #1
	SWI 0
