section .data
	First db "department of computer science",10
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
	cmp al,10
	jz nxt
	sub al,32
nxt:	cmp al,' '
	jz nxt1
	stosb

nxt1:	loop pqr
	mov eax,4
	mov ebx,1
	mov ecx,Second
	mov edx,len 
	int 0x80
