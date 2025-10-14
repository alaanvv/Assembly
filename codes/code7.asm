li $s0, 10
li $s1, 10
li $s2, 1

if_condition:
  slt $t0, $s0, $s1
  beq $t0, $zero, else

if_body:
  add $s2, $s0, $s1
  j end

else:
  add $s2, $s1, $s2
  j end

end:
  li $v0, 1
  add $a0, $s2, $zero
  syscall
