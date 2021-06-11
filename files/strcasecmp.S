BITS 64

global strcasecmp
global strcmp
section .text

strcasecmp:
    mov rcx, 0

my_loop:

    mov r11, [rcx + rdi]
    cmp r11b, BYTE [rcx + rsi]
    jne pre_return
    cmp BYTE [rcx + rdi], BYTE 0
    je pre_return
    inc rcx
    jmp my_loop

pre_return:
    mov r10, [rcx + rdi]
    cmp r10b, BYTE [rcx + rsi]
    jl lower_return
    jg upper_return
    mov rax, 0
    ret

lower_return:
    mov rax, 1
    ret

upper_return:
    mov rax, -1
    ret