global _start

%define RTCaddress  0x70
%define RTCdata     0x71

section .text:
_start:    
    mov al,10           ;Get RTC register A
    out RTCaddress, al
    in al, RTCdata
    test al, 0x80        ; Is update in progress?
    jne _start       	 ; yes, wait

    mov al, 0            ; Get seconds (00 to 59)
    out RTCaddress, al
    in al, RTCdata
    mov [RTCtimeSecond],al

    mov al, 0x02         ; Get minutes (00 to 59)
    out RTCaddress, al
    in al, RTCdata

    mov al, 0x04         ; Get hours (see notes)
    out RTCaddress, al
    in al, RTCdata

    mov al, 0x07         ; Get day of month (01 to 31)
    out RTCaddress, al
    in al, RTCdata

    mov al, 0x08         ; Get month (01 to 12)
    out RTCaddress, al
    in al, RTCdata

    mov al, 0x09         ; Get year (00 to 99)
    out RTCaddress, al
    in al, RTCdata
    
    mov eax, 1   ; sys_exit system call
    mov ebx, 0   ; exit status is 0
    int 0x80     ; perform system call
