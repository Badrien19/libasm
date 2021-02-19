				section .text
				global ft_strcmp

ft_strcmp:                         				; ; s1 = rdi, s2 = rsi rax = le return
				xor rcx, rcx					; met i a 0
				xor rdx, rdx					; met tmp a 0
loop:
				mov dl, BYTE[rdi + rcx]         ;dl petite partie de rdx (tmp)
                cmp dl, BYTE[rsi + rcx]               
                je increment					;on jump si c'est les même
				jmp solve

increment:
                cmp dl, 0;                     ; check si fin des deux chaine de carac
                jz solve                       ; si oui = chaine identique || jump 0
                inc rcx
                jmp loop

solve:		
			sub dl, BYTE[rsi + rcx]
			movzx rax, dl						; movzx = bzero + move
			jnc end								; jnc flag d'erreur pas activer --> si overflow car negatif
			neg al								; on doit repasser en négatif car pas la place dans dl
			neg eax								; 

end:
			ret