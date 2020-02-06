.code16
.text #execute code location
    .globl _start;
_start:

    jmp _boot #jump to boot code
    welcome: .asciz "Press any key to continue.\n\r" #define string

    .macro mWriteString str #macro which calls a function to print a string
        leaw \str, %si
        call .writeStringIn
    .endm

    #function to print the string
    .writeStringIn:
        lodsb
        orb %al, %al
        jz .writeStringOut
        movb $0x0e, %ah
        int $0x10
        jmp .writeStringIn
    .writeStringOut:
    ret

_boot:
    mWriteString welcome

    /* end of file */
    . = _start + 510 #mov to 510th byte from 0 pos
    .byte 0x55 #append boot signature
    .byte 0xaa #append boot signature