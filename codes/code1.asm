li $s0, 1
li $s1, 2
li $s2, 2

add $s3, $s0, $s1
sub $s3, $s3, $s2

li $v0, 1
add $a0, $s3, $zero
syscall
