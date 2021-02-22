				section .text
				extern __errno_location
                global ft_read

ft_read:
    ;xor rax, rax                    ;met rax à 0 // syscall 0 read 1 write
    mov rax, 0x00 ;
    syscall                         ;
    cmp rax, 0                      ;
    jl error                        ;si inférieur à 0
    ret

error:
    neg rax                         ;negatif un negatif -> positif
    mov rdi, rax                    ;rdi est tout dessus la stack
    call __errno_location wrt ..plt ;
    mov [rax], rdi                  ; [] --> derefence, pour modifer la valeur et non l'adresss
    mov rax, -1                     ;
    ret                             ;