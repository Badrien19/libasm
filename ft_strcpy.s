				global ft_strcpy

ft_strcpy:										; dst = rdi, src = rsi
				xor rcx, rcx					; met i a 0
				xor rdx, rdx					; met tmp a 0
				cmp rsi, 0
				jz return						;si oui
				jmp copy
increment:
				inc rcx							;i++

copy:
				mov dl, BYTE[rsi + rcx]			; petite partie de dx
				mov BYTE [rdi + rcx], dl		; on passe par un tmp (rdx) pour eviter les soucis
				cmp dl, 0						; est t'on au \0 ? 
				jnz increment					; sinon on continue (on saute si z=0)

return:
				mov rax, rdi					; on return la dest (rdi)
				ret