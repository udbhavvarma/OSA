	section .data
int_in: db "Enter an integer: ",10,0
str_in: db "Enter a string: ",10,0
intfmt: db "%d",0
strfmt: db "%s",0
int: dq 0
str: times 100 db 0

global main
extern printf
extern scanf


	section .text
main:
	push rbp
	lea rdi, [int_in]
	xor rax, rax
	call printf
	lea rdi, [intfmt]
	lea rsi,[int]
	xor rax, rax
	call scanf
	lea rdi, [intfmt]
	mov esi, [int]
	xor rax, rax
	call printf
	pop rbp
	mov rax,0
	push rbp	
	lea edi, [str_in]
	xor eax, eax
	call printf
	lea edi, [strfmt]
	lea esi, [str]
	xor eax, eax
	call scanf
	lea edi, [strfmt]
	lea esi, [str]
	xor eax, eax
	call printf
	pop rbp;
	mov eax, 0
	ret
	
