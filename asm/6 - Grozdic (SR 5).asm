%include "io.inc"
section .data
    a: dd 1
    b: dd 1
    c: dd 2
    d: dd 2
    e: dd 2

section .text
global CMAIN
CMAIN:
    
    mov eax, [a]
    mov ebx, [b]
    add eax, ebx
    
    mov ecx, 3
    mul ecx
    mov ebx, eax
    
    mov eax, [c]
    mov ecx, [d]
    mul ecx
    add ebx, eax
    
    mov eax, ebx
    mov ebx, [e]
    mov edx, 0
    div ebx
    PRINT_DEC 4, eax
    
    xor eax, eax
    ret