				section .text
				global _ft_strlen

_ft_strlen:
				xor rax, rax			; setup rax à 0
				jmp compare
increment:
				inc rax					; rax++
compare:
				cmp BYTE[rdi + rax], 0 	; rdi (= ligne) rax (= [i]) 0 (= \0)
				jne increment 			; sinon lance increment
				ret 					; return rax (= i)