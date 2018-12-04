section .data
	First db "This is the string",0
	
section .bss
	Third resb 30
section .text
	global main
	
main:	xor ecx,ecx
	mov eax,First 
pqr:	cmp byte[eax],0  
	jz final
	inc eax
	inc ecx
	jmp pqr


final:	mov ebx,First
	add ebx,ecx
	mov edx,Third
	inc ecx
	push ecx
	
ttt:	xor eax,eax			
	
	mov al,byte[ebx]
	mov byte[edx],al
	dec ebx
	inc edx
	loop ttt
	pop ecx

	mov edx,ecx
	mov eax,4
	mov ebx,1
	mov ecx,Third
	int 0x80


	
