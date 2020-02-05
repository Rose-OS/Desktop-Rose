/* Example for a char to appear on the bootloader
** In this example we use "Hello world" as our string
** and print each character in its designated
** function. If you would like to see how it's done
** look at the 3 lines below each '#'
*/

.code16 #generate 16-bit code
.text #executable code location
    .globl _start;
_start: #code entry point

    #print letter 'H'
    movb $'H', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'e'
    movb $'e', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'l'
    movb $'l', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'l'
    movb $'l', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'o'
    movb $'o', %al
    movb $0x0e, %ah
    int $0x10

    #print letter ' ' (space)
    movb $' ', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'w'
    movb $'w', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'o'
    movb $'o', %al

    #print letter 'r'
    movb $'r', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'l'
    movb $'l', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'd'
    movb $'d', %al
    movb $0x0e, %ah
    int $0x10

    . = _start + 510 #mov to 510th byte from 0 pos
    .byte 0x55 #append boot signature
    .byte 0xaa #append boot signature