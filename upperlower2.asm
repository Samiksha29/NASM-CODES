section .data
	
	First db "samiksha dipak bagmar",0
	
	len equ $-First
	val db "%s",0

section	.bss
	Second resb len
section .text
	global main
	extern printf,puts
main:
	mov esi,First
again:	mov ecx,len
	mov edi,Second
	xor eax,eax
	add esi,ecx
	dec esi
pqr:	std
	lodsb
	cld
	cmp al,10
	jz nxt1
	cmp al,65
	jl nxt1
	cmp al,90
	jg lower
	add al,32
	jmp nxt1

lower:	cmp al,97
	jl nxt1
	cmp al,122
	jg nxt1
	sub al,32
	jmp nxt1
	
	

nxt1:	stosb
	loop pqr
	push Second
	push val1
	call puts
	add esp,8


	
	
