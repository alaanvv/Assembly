j main

# a0=x; a1=y;
mulfor:
  li   $t0, 0 # acc 
  li   $t1, 0 # i 
  for:
  slt  $t3, $t1, $a1
  beq  $t3, $zero, mulforend
  add  $t0, $t0, $a0
  addi $t1, $t1, 1
  j for
mulforend:
  or $v0, $t0, $zero
  jr $ra

main:
  li $a0, 3
  li $a1, 4
  jal mulfor

  or $a0, $v0, $zero
  li $v0, 1
  syscall

  li $v0, 10
  syscall
