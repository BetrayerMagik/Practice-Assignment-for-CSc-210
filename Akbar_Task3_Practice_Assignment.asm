.data
msg0:	.asciiz "Array after calling Akbar_clearUsingIndex function:\n"
msg1:	.asciiz "\nArray after calling Akbar_clearArrayPointers function:\n"
msg2:	.asciiz "\nSo, both functions run correctly because both have same output.\n"
Array:	.word	1,2,3,4,5,6,7,8,9,-1
size:	.word	10
.text
la	$a0, Array	# load address of Array
lw	$a1, size	# laod size
jal	Akbar_clearUsingIndex	# call function
li	$v0, 4		# print str
la	$a0, msg0	# address of str
syscall
la	$a0, Array	# load address of Array
lw	$a1, size	# laod size
jal	Akbar_displayArray	# call function

la	$a0, Array	# load address of Array
lw	$a1, size	# laod size
jal	Akbar_clearArrayPointers	# call function
li	$v0, 4		# print str
la	$a0, msg1	# address of str
syscall
la	$a0, Array	# load address of Array
lw	$a1, size	# laod size
jal	Akbar_displayArray	# call function
li	$v0, 4		# print str
la	$a0, msg2	# address of str
syscall

li	$v0, 10		# terminate program
syscall


Akbar_clearUsingIndex: 
	li	$t0, 0		# i = 0
	loop1: 	beq	$t0, $a1, stop_loop1	# check i < size
	sll 	$t1, $t0, 2 
	add 	$t2, $a0, $t1 			# address of Array[i]
	sw 	$zero, 0($t2) 			# Array[i] = 0
	addi 	$t0, $t0, 1			# i++ 	
	j	loop1				# jump to loop1
	# return to main 
	stop_loop1:
	jr 	$ra 	# return back
	
	
Akbar_clearArrayPointers: 
	move	$t0, $a0		# p = &array[0]
	sll	$t3, $a1, 2		# multiple size with 4 to make word aligned
	add	$t3, $t3, $a0		# p = &array[size]
	loop2: 	beq	$t0, $t3, stop_loop2	# p < &array[size
	sw 	$zero, 0($t0) 			# *p = 0
	addi 	$t0, $t0, 4			# p = p + 1 	
	j	loop2				# jump to loop3
	# return to main 
	stop_loop2:
	jr 	$ra 	# return back
	
Akbar_displayArray:
	li	$t0, 0		# i = 0
	move	$t5, $a0	# move array address into t5
	loop3: 	beq	$t0, $a1, stop_loop3	# check i < size
	sll 	$t1, $t0, 2 
	add 	$t2, $t5, $t1 			# address of Array[i]
	lw 	$a0, 0($t2) 			# load value of Array[i]
	li	$v0, 1				# print Array[i]
	syscall
	li	$v0, 11
	li	$a0, 32				# print space
	syscall
	addi 	$t0, $t0, 1			# i++ 	
	j	loop3				# jump to loop3
	# return to main 
	stop_loop3:
	jr 	$ra 	# return back
