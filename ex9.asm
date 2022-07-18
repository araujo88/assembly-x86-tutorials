global _start

_start:
	push 21 	; function argument
	call times2
	mov ebx, eax
	mov eax, 1
	int 0x80

times2:
	push ebp
	mov ebp, esp
	mov eax, [ebp+8] ; reads argument
	add eax, eax
	mov esp, ebp 	 ; restore the stack pointer
	pop ebp
	ret
