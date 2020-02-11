BITS 16

start:
    mov ax, 07C0h
    add ax, 288
    mov ss, ax
    mov sp, 4096

    mov ax, 07C0h
    mov ds, ax

    mov si, msg

    call print_string

    jmp $

    msg db 'Running setup... please wait!', 0

    print_string:
        mov ah, 0Eh
    
    .repeat:
        lodsb
        cmp al, 0
        je .done
        int  10h
        jmp .repeat

    .done:
        ret

    times 510-($-$$) db 0
    dw 0xAA55