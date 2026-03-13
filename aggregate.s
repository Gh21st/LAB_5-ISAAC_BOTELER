
    .section    .data 
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

format:
    .asciz  "%20ld\n"

    .section    .text 
    .global     main 
    
main: 
    xor     %rbx, %rbx
    xor     %rax, %rax 
    xor     %rcx, %rcx 
    mov     Array_length,
check: 
    cmp     $Array_length, %rbx 
    jz      done

    add     Numbers(,%rbx,4), %rax 
    inc     %rbx 
    jmp     check   

done: 
    #PRINT %rax (call printf ) 
    mov     $format, %rdi 
    mov     %rax,   %rsi 
    xor     %rax,   %rax
    call    printf
    #QUIT  
    mov     $60, %rax
    mov     $0, %rdi
    syscall 

