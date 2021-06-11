BITS 64

global rindex
section .text

rindex:
    push rbp
    mov rbp, rsp
    mov rax, 0

my_loop:
    mov al, BYTE [rdi * 1]
    cmp al, 0
    je compare
    inc rdi
    jmp my_loop

compare:
    mov al, BYTE [rdi * 1]
    cmp al, sil
    je if_no_fail
    cmp rdi, 0
    je if_fail
    dec rdi
    jmp compare

if_no_fail:
    mov rax, rdi
    mov rsp, rbp
    pop rbp
    ret

if_fail:
    mov rax, 0
    mov rsp, rbp
    pop rbp
    ret