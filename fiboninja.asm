li $s0, 0   # FIB A
li $s1, 1   # FIB B
li $s2, 13  # FIB LIMIT
li $a2, 0   # LETTER INDEX
li $a3, 5   # LETTER MAX

# ---

loop:
move $a1, $s0 # FIB A
li $a2, -1
jal print

subi $s2, $s2, 1
beq $s2, 0, exit

add $s1, $s0, $s1
sub $s0, $s1, $s0
j loop

print:
addi $a2, $a2, 1
ble $a1, $a2, print_end
rem $t0, $a2, $a3
beq $t0, 0, print_n
beq $t0, 1, print_i
beq $t0, 2, print_n
beq $t0, 3, print_j
beq $t0, 4, print_a
print_end:
li $a0, '\n'
li $v0, 11
syscall
jr $ra

print_n:
li $a0, 'n'
li $v0, 11
syscall
j print

print_i:
li $a0, 'i'
li $v0, 11
syscall
j print

print_j:
li $a0, 'j'
li $v0, 11
syscall
j print

print_a:
li $a0, 'a'
li $v0, 11
syscall
j print

exit:
li $v0, 10
syscall
