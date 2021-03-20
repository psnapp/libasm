section	.text
global _ft_strdup

extern _ft_strlen
extern _malloc
extern _ft_strcpy

_ft_strdup:
    xor rax, rax
    push rdi
    call _ft_strlen
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je _return
    mov rdi, rax
    pop rsi
    call _ft_strcpy

_return:
    ret