				section .text
				extern __errno_location
                global ft_write

ft_write:
    mov rax, 0x01           ;met rax à 1 // syscall 0 read 1 write
    syscall                 ;
    cmp rax, 0              ;
    jl error                ;si inférieur à 0
    ret

error:
    neg rax                         ;negatif un negatif -> positif
    push rax                        ;
    call __errno_location wrt ..plt ;
    pop qword [rax]                 ; cast 64byte
    mov rax, -1                     ;
    ret                             ;