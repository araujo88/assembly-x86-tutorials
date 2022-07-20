global _start

section .text:
_start:             
    mov edx, len1   ; message length
    mov ecx, date   ; message to write
    mov ebx, 1      ; file descriptor (stdout)
    mov eax, 4      ; system call number (sys_write)
    int 0x80        ; call kernel
    mov edx, len2   ; message length
    mov ecx, time   ; message to write
    mov ebx, 1      ; file descriptor (stdout)
    mov eax, 4      ; system call number (sys_write)
    int 0x80        ; call kernel
    mov eax, 1      ; system call number (sys_exit)
    mov ebx, 0      ; exit code
    int 0x80        ; call kernel

section .data:
    date db  __DATE__ ,0xa
    len1 equ $ - date
    time db __TIME__, 0xa
    len2 equ $ - time