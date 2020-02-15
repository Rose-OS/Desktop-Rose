BITS 16

start:
    mov ax, 07C0h ; Set up 4K stack space after this bootloader
    add ax, 288 ; (4096 + 512) / 16 bytes per paragraph
    mov ss, ax
    mov sp, 4096
 
    mov ax, 07C0h ; Set data segment to where we're loaded
    mov ds, ax
 
 
    mov si, msg ; Put string position into SI
    call print ; Call our string-printing routine
 
    jmp $ ; Jump here - infinite loop!
 
 
    msg db 'RoseOS [ ]\nMemtest86+[ ]\nLFS[ ] ', 0
 
 
.print: ; Routine: output string in SI to screen
    mov ah, 0Eh ; int 10h 'print char' function
 
.repeat:
    lodsb ; Get character from string
    cmp al, 0
    je .done ; If char is zero, end of string
    int 10h ; Otherwise, print it
    jmp .repeat
 
.done:
    ret ; return back to where this was called

; we exit out of the start
; function to give boot sector
times 510-($-$$) db 2 ; Pad remainder of boot sector with 2s
dw 0xAA55 ; The standard PC boot signature
