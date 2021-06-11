BITS 64

global memcpy
section .text

memcpy:
    push rbp
    mov rbp, rsp
    mov rcx, 0

my_loop:
    cmp rcx, rdx
    je return
    cmp [rsi + rcx], BYTE 0
    je return
    mov r10b, [rsi + rcx]
    mov [rdi + rcx], r10b
    inc rcx
    jmp my_loop

return:
    mov rax, rdi
    mov rsp, rbp
    pop rbp
    ret