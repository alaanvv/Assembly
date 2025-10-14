li $s0, 0

if_test:
  bne $s0, $zero, elseif_test
if:
  li $s1, 1
  j end

elseif_test:
  slt $t0, $s0, $zero
  beq $t0, $zero, else
elseif:
  li $s1, 2
  j end

else:
  li $s1, 3
  j end

end:
  li $v0, 1
  add $a0, $s1, $zero
  syscall
