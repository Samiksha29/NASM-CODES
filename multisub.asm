section .data
	mat1 dd 10,20,30
             dd 40,50,60
	     dd 70,80,90,0
	
	msg db "%d ",0
	new1 db "",10,0
	
section .bss
	four resd 1
	
section .text
	global main
	extern printf,puts

main: enter 0,0
	xor ecx,ecx
	mov dword[four],4
	xor ebx,ebx
	
pqr:	push ebx
	mov esi,mat1
	mov eax,dword[four]
	mul ecx
	add esi,eax
	cmp dword[esi],0
	jz exit
	push ecx
	push dword[esi]

	pop ecx
	pop ebx
	push ecx
	
	push msg
	call printf
	add esp,8
	
	
	inc ebx
	cmp ebx,3
	je new
	jne myloop


myloop:	pop ecx
	inc ecx
	jmp pqr

new:	push new1
	call puts
	add esp,4
	mov ebx,0
	jmp myloop
	
exit:	leave
