.data
listlen:
	.word 9
list:
	.word 1, 2, 3, 4, 5, 6, 7, 8, 9

.text
.global _start
_start:
	@ r0 Current memory offset
	@ r1 Remaining items (for loop)
	@ r2 Current value
	@ r3 Acumulator
	@ r4 0 (for comparing purposes)
	
	LDR r0, =list @ Start r0 as the first element
	@ I don't know if i should do that, but, basically the listlen is always 
	@ stored before the list, so i just use the list pointer substracting 4
	LDR r1, [r0, #-4]
	
	@ Pre-increment
	@ [addr, #offset]! Increase the addr pointer value by offset and read it
	@ Post-increment
	@ [addr], #offset Read the value the increase it
	
read:
	LDR r2, [r0], #4
	ADD r3, r2 @ Add the value to acumulator
	SUB r1, #1 @ Decrease remaining items
	
	CMP r1, r4
	
	BGT read
	
	MOV r7, #1
	SWI 0
