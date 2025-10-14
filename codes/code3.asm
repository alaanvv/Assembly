li $s0, 1
li $s1, 4
li $s2, 9
li $s3, 5

add $t0, $s0, $s1
sub $t1, $s2, $s3

sub $s4, $t0, $t1

li $v0, 1
add $a0, $s4, $zero
syscall
