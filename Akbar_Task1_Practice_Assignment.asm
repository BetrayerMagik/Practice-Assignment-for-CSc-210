.data 
Array: .word 1,2,3,4,5,6,7,8,9,-1 
Size: .word 10  
.text 
main: 
# Register $a0 stores the address of the first element of the Array 
# Register $a1 stores the Size 
# Registers $a0 and $a1 are used by main to transfer parameters to function 
# transfer parameters Array and Size to function ClearArrayIndex using register $a0,$a1 
la $a0, Array 
lw $a1, Size 
# Call function 
jal Akbar_ClearUsingIndex 

# Tell system program is done 
li $v0,10 
syscall 
#END OF PROGRAM 
# FUnction definitions 
Akbar_ClearUsingIndex: 
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
