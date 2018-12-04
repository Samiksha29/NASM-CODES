	section .data
	First db "This is the string",10,0
	len equ $-First
	Second db "This is another string",10,0
	
	section .text
	global main
main:	mov ecx,len
	 db "This is the string",10,0
	
	section .text
	global main
main:	mov ecx,len
	
