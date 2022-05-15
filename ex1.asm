global _start
_start:
    mov eax, 1  ; move the value 1 into the register eax
    mov ebx, 42 ; move the value 42 into the register ebx
    sub ebx, 29 ; subtract 29 from the register ebx
    int 0x80    ; perform system call
