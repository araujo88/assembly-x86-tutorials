global _start

section .text
_start:
	push 5
	call factorial	
	mov ebx, eax
	mov eax, 1
	int 0x80

factorial:
	push ebp
	mov ebp, esp
	mov eax, [ebp+8]

	cmp eax, 0
	jle factorial_zero
	
	cmp eax, 1
	jle end_factorial
	
	dec eax
	push eax
	call factorial
	mov ebx, [ebp+8]
	imul eax, ebx

end_factorial:
	mov esp, ebp
	pop ebp
	ret

factorial_zero:
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret