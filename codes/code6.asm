li $s0, 10
li $s1, 2

condition:
  slt $t0, $zero, $s0
  beq $t0, $zero, end

loop:
  addi $s0, $s0, -1
  addi $s1, $s1,  1
  j condition

end:
  li $v0, 1
  add $a0, $s1, $zero
  syscall
