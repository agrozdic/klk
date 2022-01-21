%include "io.inc"
section .data
    a: dd 0
    b: dd 0
    max: dd 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_DEC 4, [a]
    GET_DEC 4, [b]
    
    mov eax, [a]
    mov ebx, [b]
    
    cmp eax, ebx
    jg veceodnule
    mov [max], ebx
    jmp rezultat
    
    veceodnule:
    mov [max], eax
    
    rezultat:
    PRINT_DEC 4, [max]
    NEWLINE
    
    xor eax, eax
    ret