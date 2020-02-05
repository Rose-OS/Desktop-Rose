.code16 #generate 16-bit code
.text #execute code location
    .globl _start;
_start:

    movb $'S', %al #char to print
    movb $0x0e, %ah #bios serivce code to print
    int $0x10 #intterupt

    . = _start + 510 #mov to 510th byte from 0 pos
    .byte 0x55 #append boot signature
    .byte 0xaa #append boot signature

; end boot2.s