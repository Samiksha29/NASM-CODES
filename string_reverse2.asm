section .data
	First db 10,"Source string",0
	len equ $-First
section	.bss
	Second resb len
section .text
	global main
main:
	mov esi,First
	mov ecx,len
	mov edi,Second
	xor eax,eax
	add esi,ecx
	dec esi
pqr:	std
	lodsb
	cld
	stosb
	loop pqr
	mov eax,4
	mov ebx,1
	mov ecx,Second
	mov edx,len
	int 0x80
