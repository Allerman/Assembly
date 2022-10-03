section .data

    pergunta db "como voce se chama?",10
    tamPerg equ $-pergunta

    ola db "ola, "
    tamOla equ $-ola

section .bss
    nome resb 20

section .text
    global _start

_start:

mov rax,1
mov rdi,1
mov rsi,pergunta
mov rdx,tamPerg
syscall

mov rax,0
mov rdi,0
mov rsi,nome
mov rdx,20
syscall

mov rax,1
mov rdi,1
mov rsi,ola
mov rdx,tamOla
syscall

mov rax,1
mov rdi,1
mov rsi,nome
mov rdx,20
syscall

mov rax,60
mov rdi,0
syscall