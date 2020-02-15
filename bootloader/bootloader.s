#generate 16-bit code
.code16

#hint the assembler that here is the executable code located
.text
.globl _start;
#boot code entry
_start:
      jmp _boot                           #jump to boot code
      welcome: .asciz "Rose OS [\nLFS[\nMemtest86+"  #here we define the string

     .macro mWriteString str              #macro which calls a function to print a string
          leaw  \str, %si
          call .writeStringIn
     .endm

     #function to print the string
     .writeStringIn:
          lodsb
          orb  %al, %al
          jz   .writeStringOut
          movb $0x0e, %ah
          int  $0x10
          jmp  .writeStringIn
     .writeStringOut:
     ret

_boot:
     mWriteString welcome

     #move to 510th byte from the start and append boot signature
     . = _start + 510
     .byte 0x55
     .byte 0xaa