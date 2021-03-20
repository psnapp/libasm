section	.text
global _ft_strcpy

_ft_strcpy:
      xor rcx, rcx
      xor al, al
      
_loop:
   cmp byte [rsi + rcx], 0
   je _return
   mov al, byte [rsi + rcx]
   mov byte [rdi + rcx], al
   inc rcx
   jmp _loop

_return:
   mov byte [rdi + rcx], 0
   mov  rax, rdi
   ret