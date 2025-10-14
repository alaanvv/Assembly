li $s0, 0

for:
  li $t0, 0
  li $t1, 10

condition:
  slt $t2, $t0, $t1
  beq $t2, $zero, end
  
loop:
  add $s0, $s0, $t0
  
increment:
  addi $t0, $t0, 1
  j condition

end:
