BITS 64

global strchr
section .text

strchr:
    mov rax, 0

my_loop:
    cmp BYTE [rdi], sil
    je return
    cmp BYTE [rdi], 0
    je if_fails
    inc rdi
    jmp my_loop
if_fails:
    mov rax, 0
    ret

return:
    mov rax, rdi
    ret