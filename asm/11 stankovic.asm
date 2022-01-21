%include "io.inc"

section .data
a: dd 0
y: dd 0
section .text
global CMAIN
CMAIN:
    GET_UDEC 4, [a]
    mov eax, [a]
    and eax, 1
    je polovina
kvadrat:
    PRINT_STRING "NEPARAN BROJ -> (a-1)*(a-1) = "
    mov eax, [a]
    sub eax, 1
    mul eax
    
    
    jmp ispis
 polovina:
    PRINT_STRING "PARAN BROJ -> a/2 = "
    mov eax, [a]
    mov edx, 0
    mov ecx, 2
    div ecx
ispis:
    PRINT_DEC 4, eax
          
    xor eax, eax
    ret