section .data
	a db "addition is %d",10,0
section .text
	global main
	extern puts,printf
main:	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	mov eax,40
	mov ebx,20
	sub eax,ebx
	push eax
	push a
	call printf
	add esp,8
	
