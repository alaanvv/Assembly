li $t0, 1

addi $t1, $t0, -2
addi $t1, $t1, 3

li $v0, 1
add $a0, $t1, $zero
syscall
