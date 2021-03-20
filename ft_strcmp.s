section	.text
global _ft_strcmp

_ft_strcmp:
    xor r8, r8
    xor rax, rax
    xor rcx, rcx
      
_loop:
    mov al, byte [rsi + r8]
   mov cl, byte [rdi + r8]
   cmp byte [rsi + r8], 0
   je _return
   cmp al, cl
   jne _return
   inc r8
   jmp _loop

_return:
    sub rax, rcx
    ret