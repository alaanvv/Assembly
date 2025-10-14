addi $sp, $sp, -20
add $s0, $sp, $zero  # $s0 = A
addi $sp, $sp, -20
add $s1, $sp, $zero  # $s1 = B
addi $sp, $sp, -20
add $s2, $sp, $zero  # $s2 = C

li $a0, 4 # i
li $a1, 8 # j

lw $t2, 12($s0)
add $t0, $t0, $t2

add $t1, $s0, $a0
lw $t2, 0($t1)
add $t0, $t0, $t2

add $t1, $s0, $a0
lw $t2, 8($t1)
add $t0, $t0, $t2

add $t1, $s1, $a0
lw $t2, 0($t1)
add $t0, $t0, $t2

add $t1, $s2, $a1
sw $t0, ($t1)
