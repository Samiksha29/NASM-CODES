	section .data
	First db "First String",0
	msg db "Length is %d",10,0
	section .text
	exrern printf
	global main
main:	mov esi,First
	xor eax,eax
	mov al,0
	xor ecx,ecx
lp:	
	
