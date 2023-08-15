.text
.global _start
_start:
	@ Radius of the circle
	MOV r0, #3
	@ PI (idk float pointing yet)
	MOV r1, #3

	@ Circle area is equal PI*R^2	
	MUL r0, r0 @ Square radius
	MUL r0, r1 @ Multiply by PI
	
	MOV r7, #1
	SWI 0
