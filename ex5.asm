global _start

section .text
_start:
    mov ebx, 1  ; exit status
    mov ecx, 4  ; number of iterations
label:
    add ebx, ebx ; ebx += ebx
    dec ecx      ; ecx -= 1
    cmp ecx, 0   ; compare ecx with 0
    jg label     ; jump to label if greater than 0
    mov eax, 1   ; sys_exit
    int 0x80     ; system call