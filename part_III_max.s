	.section	.data

format:
        .asciz  "%20ld\n"
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11
Array_length:
    .long 10

	.section    .text
	.globl  	main
main:
#We will use %rax as max value to output later 
#We will use %rsi as counter 

#Set %rax to min value (0)
    xor     %eax, %eax
#Set %rsi to 0
    xor     %rsi, %rsi 
#set %rbx to 0 
    xor     %ebx, %ebx
#set %rdi to first index 
    mov     $Numbers, %rdi
#WHILE LOOP STRUCTURE 
	jmp	    .L2
.L3:
    #We will use %rbx to compare current value against current max 
    #Load value 
    movl    (%rdi,%rsi,4), %ebx
    #increment counter 
    inc     %rsi 
    #Compare value 
    cmp     %ebx, %eax 
    jge     .L2
    #Assign new max 
    mov     %ebx, %eax 

.L2:
	cmp 	Array_length, %rsi 
	jle     .L3
#END OF WHILE LOOP STRUCTURE 
Test:
    #Print value in %rax
    mov     $format, %rdi
    mov     %rax, %rsi 
    xor     %rax, %rax 

 
    call    printf
    xor     %rax, %rax     
    ret


.section .note.GNU-stack,"",@progbits
