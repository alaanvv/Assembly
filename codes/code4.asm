addi $sp, $sp, -8

lw $s0, 0($sp)
addi $s0, $s0, 2
sw $s0, 0($sp)

lw $s0, 0($sp)
add $s1, $s0, $zero
sw $s0, 4($sp)

lw $s0, 0($sp)
lw $s1, 4($sp)
sub $s1, $s1, $s0
sw $s1, 4($sp)
