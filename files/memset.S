BITS 64

global memset
section .text

memset:
    mov rcx, 0
    mov rax, 0

my_loop:
    cmp rcx, rdx
    je return
    mov al, sil
    mov BYTE [rcx + rdi * 1], al
    inc rcx
    jmp my_loop

return:
    mov rax, rdi
    ret