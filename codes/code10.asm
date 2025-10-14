.data
A: .word 4, 6, 3, 8, 8, 2, 0
B: .word 1, 1, 2, 2, 5, 3, 1

.text

la $t6, A
la $t7, B

for:
  li $t0, 0
  li $t1, 10

condition:
  slt $t2, $t0, $t1
  beq $t2, $zero, end
  
loop:
  sll $s1, $t0, 2
  add $t3, $t6, $s1
  add $t4, $t7, $s1

  li $s0, 0
  add $s0, $s0, $t0
  
  lw $t5, ($t3)
  add $s0, $s0, $t5

  lw $t5, ($t4)
  add $s0, $s0, $t5

  sw $s0, ($t3)
  
increment:
  addi $t0, $t0, 1
  j condition

end:
