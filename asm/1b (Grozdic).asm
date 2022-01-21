%include "io.inc"

section .data
 a: dd 0
 b: dd 0
 c: dd 0
 d: dd 0

section.text
global CMAIN
CMAIN:
    GET_DEC 4, [a]
    GET_DEC 4, [b]
    GET_DEC 4, [c]
    
    mov eax, [a]
    mov ebx, [b]
    mov ecx, [c]
    
    add eax, ebx
    add ecx, ebx
    mov [d], ecx
    
    PRINT_DEC 4, [d]
    
    xor eax, eax
    ret