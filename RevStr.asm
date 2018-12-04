	section   .data
	f db "This is the String",10,0
	nl db 10,0
	section  .bss
	third resd 30
	
	section  .text
	global main
	extern puts
main:
	xor ecx,ecx
	mov eax,f
	
pqr:
	cmp byte[eax],0
	jz final
	inc ecx
	inc eax
	jmp pqr

final:
	mov ebx,f
	add ebx,ecx
	mov edx,third
	inc ecx
	push ecx
ttt:
	xor eax,eax
	mov al,byte[ebx]
	mov byte[edx],al
	dec ebx
	inc edx
	dec ecx
	cmp ecx,0
	jg ttt
	pop ecx

	mov edx,ecx
	mov eax,4
	mov ebx,1
	mov ecx,third
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,nl
	mov edx,2
	int 0x80
