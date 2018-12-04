
	section .data
	First db "17101,sagar,m,mca",0
		db"17321,sumita,f,msc",0
		db"17221,sumit,m,mca",10
	line db "",10,0	
		
section .text
	global main
	extern printf
	
main:	enter 0,0
	xor ecx,ecx
	mov eax,First
lp:	    
	cmp byte[eax],''
	je exit
	
	
pqr:	cmp byte[eax],','
	jz final
	inc eax
	inc ecx
	jmp pqr
final:	inc ecx
	inc eax
	mov edx,ecx
	push edx
	push eax
abc:	cmp byte[eax],','
	jz final1
	inc eax
	inc ecx
	jmp abc
final1:	push ecx
	inc ecx
	inc eax
	mov esi,ecx
	mov edi,eax
	cmp byte[eax],'m'
	jne pp

pri:	pop ecx
	pop eax
	pop edx
	sub ecx,edx
	mov edx,ecx
	mov ecx,eax
	mov ebx,1
	mov eax,4
	
	int 0x80
	mov edx,line
	push edx
	call printf
	add esp,4 
	
pp:	mov eax,edi
	mov ecx,esi
again:	cmp byte[eax],0
	jz again2
	inc eax
	inc ecx
	jmp again
	
again2: inc eax
	inc ecx
	
	jmp lp


exit:	leave
	ret
	
