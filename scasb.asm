section .data
	a db "first,second,third",0
	len equ $-a
section .text
	global main
main:	xor eax,eax
	mov edi,a
	mov esi,a
	mov al,','
	mov ecx,len
	repne scasb
	mov edx,ecx
	mov esi,edi
	repne scasb
	sub edx,ecx
	dec edx
	mov eax,4
	mov ebx,1
	mov ecx,esi
	int 0x80
	
