.code16 #generate 16-bit code
.text #executable code location
    .globl _start;
_start: #code entry point

    /* first word */
    #print letter 'P'
    movb $'P', %al
    movvb $0x0e, %ah
    int $0x10

    #print letter 'r'
    movb 'r', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'e'
    movb 'e', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 's'
    movb 's', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 's'
    movb 's', %al
    movb $0x0e, %ah
    int $0x10

    #print letter ' '
    movb ' ', %al
    movb $0x0e, %ah
    int $0x10

    /* second word */
    #print letter 'a'
    movb 'p', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'n'
    movb 'r', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'y'
    movb 'y', %al
    movb $0x0e, %ah
    int $0x10

    #print letter ' ' (space)
    movb ' ', %al
    movb $0x0e, %ah
    int $0x10

    /* third word */
    #print letter 'k'
    movb 'k', %al
    movb $0x0e, %ah
    int $0x10
    
    #print letter 'e'
    movb 'e', %al
    movb $0x0e, %ah
    int $0x10

    #print letter 'y'
    movb 'y', %al
    movb $0x0e, %ah
    int $0x10
    
    #print letter '.' (a period)
    movb '.' %al
    movb $0x0e, %ah
    int $0x10

    . = _start + 510 #mov to 510th byte from 0 pos
    .byte 0x55 #append boot signature   
    .byte 0xaa #append boot signature