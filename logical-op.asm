.global _start
_start:
	@ Logic operations will run for every bit, so, idk how to understand it looking to a hex
	@       1101001
	@ AND   0110011
	@ EQUAL 0100001
	
	@ Because of this confusion using hex, the best way is using a single bit for boolean
	@ There's no negation directly as a comparation, what we have is Move negation (MVN),
	@ It moves stuff, but reverting all bits
	
	@ Two values to compare
	MOV r0, #0xF0
	MOV r1, #0x0F

	AND r2, r0, r1
	ORR r3, r0, r1
	EOR r4, r0, r1
	MVN r5, r0
	MVN r6, r1
	
	@ Supposing that I don't want to negate the whole thing, as if I was using only
	@ The last byte, how would I keep the rest as 0, like:
	@ 0x000000FF --NEGATE--> 0x00000000
	@ Instead of:
	@ 0x000000FF --NEGATE--> 0xFFFFFF00
	@ This can be done using AND to delete some stuff.
	@ When anding, every place with at least one 0, will be 0, and any place with a 1,
	@ lets the other side of the operation, so, if I want to clean the first 3 bytes
	@ and keep the last, i should do this after negating:
	@ AND 0xFFFFFF00, 0x000000FF -> 0x00000000
	
	@ NOT CLEAN VALUE => r8
	@ CLEAN VALUE     => r9
	MOV r8, #0x000000F0
	MVN r8, r8
	AND r9, r8, #0x000000FF
	
	MOV r7, #1
	SWI #0
