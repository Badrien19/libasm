				section .text
				global ft_strcmp

ft_strcmp:                         				; ; s1 = rdi, s2 = rsi rax = le return
				xor rcx, rcx					; met i a 0
				xor rdx, rdx					; met tmp a 0
loop:
                mov dl, BYTE[rdi + rcx]         ;dl petite partie de rdx (tmp)
                cmp dl, BYTE[rsi + rcx]               
                je increment
                jl inferior                     ;si le cmp renvoi inferieur
                jg superior                     ;si le cmp renvoi superieur

increment:
                cmp dl, 0;                      ; check si fin de chaine de carac
                je equal                        ; si oui = chaine identique
                inc rcx
                jmp loop

superior:
			mov		rax, 1
			ret
inferior:
			mov		rax, -1
			ret
equal:
			mov		rax, 0
			ret