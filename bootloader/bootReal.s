#generate 16-bit code
.code16

#hint the assembler that here is the executable code located
.text
.globl _start;
#boot code entry
_start:
      jmp _boot                           #jump to boot code
      welcome: .asciz "Welcome to RoseOS!\n\r"  #here we define the string
      greet: .asciz "Press any key to continue to boot to RoseOS\n\r"

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
     xor %ax, %ax
     mov %ax, %ds      # Initialize the DS segment to zero
     mov %ax, %ss      # Set the stack pointer below bootloader at 0x0000:0x7c00
     mov $0x7c00, %sp
     cld               # Clear Direction Flag (DF=0) to set forward movement on string
                       # instructions

     mWriteString welcome
     mWriteString greet
     jmp .             # Enter an infinite loop to stop executing code beyond this point

     #move to 510th byte from the start and append boot signature
     . = _start + 510
     .byte 0x55
     .byte 0xaa