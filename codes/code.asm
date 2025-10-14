j main

avg:
add $t0, $a0, $a1
sra $v0, $t0, 1
jr $ra

main:
li $a0, 5
li $a1, 9
jal avg
