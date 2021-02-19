				section .text
				extern __errno_location
                global ft_read

ft_read:
    xor rax, rax                    ;met rax à 0 // syscall 0 read 1 write
    syscall                         ;
    cmp rax, 0                      ;
    jl error                        ;si inférieur à 0
    ret

error:
    neg rax                         ;negatif un negatif -> positif
    push rax                        ;
    call __errno_location wrt ..plt ;
    pop rax                         ;
    mov rax, -1                     ;
    ret                             ;