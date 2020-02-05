.code16                   ;generate 16-bit code
.text                     ;executable code location
     .globl _start;
_start:                   ;code entry point
     . = _start + 510     ;mov to 510th byte from 0 pos
     .byte 0x55           ;append boot signature
     .byte 0xaa           ;append boot signature