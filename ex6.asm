global _start

section .data
	addr db "yellow"

section .text
_start:
	mov [addr], byte 'H'
	mov [addr+5], byte '!'
	mov eax, 4	; sys_write
	mov ebx, 1	; stdout
	mov ecx, addr	; bytes to write
	mov edx, 6	; number of bytes
	int 0x80	; perform system call
	mov eax, 1	; sys_exit
	mov ebx, 0	; exit status
	int 0x080
