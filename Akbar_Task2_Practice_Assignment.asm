.data 
msg0:	.asciiz "System time is: "
Array: .word 1,2,3,4,5,6,7,8,9,-1 
Size: .word 10  
.text 
main: 
li	$v0, 4		# print str
la	$a0, msg0	# address of str
syscall
li	$v0, 30
syscall
li	$v0, 34
syscall
# Register $a0 stores the address of the first element of the Array 
# Register $a1 stores the Size 
# Registers $a0 and $a1 are used by main to transfer parameters to function 
# transfer parameters Array and Size to function ClearArrayIndex using register $a0,$a1 
la $a0, Array 
lw $a1, Size 
# Call function 
jal Akbar_clearArrayPointers 

# Tell system program is done 
li $v0,10 
syscall 
#END OF PROGRAM 
# FUnction definitions 
Akbar_clearArrayPointers: 
	move	$t0, $a0		# p = &array[0]
	sll	$t3, $a1, 2		# multiple size with 4 to make word aligned
	add	$t3, $t3, $a0		# p = &array[size]
	loop1: 	beq	$t0, $t3, stop_loop1	# p < &array[size
	sw 	$zero, 0($t0) 			# *p = 0
	addi 	$t0, $t0, 4			# p = p + 1 	
	j	loop1				# jump to loop1
	# return to main 
	stop_loop1:
	jr 	$ra 	# return back
