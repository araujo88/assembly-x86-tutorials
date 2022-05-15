global _start

section .text
_start:
    mov ebx, 42 ; exit status
    mov eax, 1  ; sys_exit
    jmp skip    ; jump to "skip" label
    mov ebx, 13 ; exit status
skip:
    int 0x80    ; perform system call