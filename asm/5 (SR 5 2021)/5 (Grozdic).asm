%include "io.inc"

section .data
    a: dd 2
    b: dd 1
    c: dd 9
    d: dd 3
    e: dd 4

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    
    mov eax, [a]
    mov ebx, [b]
    mov ecx, 2
    
    mul ebx
    mul ecx
    mov ebx, eax
    
    mov eax, [c]
    mov ecx, [d]
    mov edx, 0
    div ecx
    add ebx, eax
    
    mov eax, [e]
    mov ecx, 2
    mov edx, 0
    div ecx
    sub ebx, eax
    PRINT_DEC 4, ebx
    NEWLINE
    
    mov eax, ebx
    mov ebx, 2
    mov edx, 0
    div ebx
    PRINT_DEC 4, edx
    NEWLINE
    
    xor eax, eax
    ret