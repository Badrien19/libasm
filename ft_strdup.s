				section .text
				global ft_strdup
                extern ft_strlen
	            extern ft_strcpy
	            extern malloc
ft_strdup:
            xor rax, rax            ; setup rax a 0
            cmp rdi, 0
            jl error                ; si infieur a 0
            push rdi                ; save initial str
            call ft_strlen          ; len of rdi in rax
            add rax, 1              ; + \0
            mov rdi, rax            ; rdi = first arg
            call malloc wrt ..plt
            pop r9
            cmp rax, 0              ; si error malloc
            jl error                ; si inferieur a 0
            mov rdi, rax            ; rdi = first arg for strcpy
            mov rsi, r9             ; rsi = seconde arg for strcpy
            call ft_strcpy
            ret

error:
            mov rax, 0;
            ret