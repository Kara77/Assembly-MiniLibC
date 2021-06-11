BITS 64

global strlen
section .text

strlen:
    mov rcx, 0
    mov rax, 0

my_loop:
    cmp BYTE [rdi], 0
    je return
    inc rcx
    inc rdi
    jmp my_loop

return:
    mov rax, rcx
    ret