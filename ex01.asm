;minimo programa para compilar
section .data

section .text

;ponto de entrada
global _start

_start:
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80 ; executa tudo atrás
