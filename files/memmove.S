BITS 64

global memmove
section .text

memmove:
    push rbp
    mov rbp, rsp
    mov rcx, 0

my_loop:
    cmp rcx, rdx
    je return
    mov r10, [rsi + rcx]
    mov [rdi + rcx], r10
    inc rcx
    jmp my_loop

return:
    mov rax, rdi
    mov rsp, rbp
    pop rbp
    ret