li $s0, 0
li $s1, 1
li $s2, 10

# ---

loop:
move $a0, $s0
jal print

add $s1, $s0, $s1
sub $s0, $s1, $s0

subi $s2, $s2, 1
bne $s2, 0, loop
j exit

# ---

print:
li $v0, 1
syscall
li $a0, '\n'
li $v0, 11
syscall
jr $ra

exit:
li $v0, 10
syscall
