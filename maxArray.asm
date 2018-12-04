section .data
	msg db "%d",0
	
	msg1 db "%d ",10,0
	msg2 db "max is %d",10,0	
	msg2 db "min is %d",10,0
	
section .bss
	num resd 100
	n resd 1
	four resd 1
	sum resd 1
section .text
	global main
	extern printf,scanf
	
main:	pusha
	push n
	push msg
	call scanf
	add esp,8 
	popa
	mov dword[four],4
	mov dword[sum],0
	mov esi,dword[n]
	xor ecx,ecx

lp:	mov ebx,num
	mov eax,4
	mul ecx  ;;eax=eax+ecx 
	add ebx,eax
	push ecx
	push ebx    
	push msg    
	call scanf
	add esp,8
	pop ecx
	inc ecx
	dec esi
	cmp esi,0
	jnz lp

	xor ecx,ecx
	mov esi,dword[n]


	
	mov ecx,dword[n]
	mov esi,num
	mov ebx,dword[num]

max:	dec ecx
	cmp ecx,0
	jz exit
	mov esi,num
	mov eax,4
	mul ecx
	add esi,eax
	cmp dword[esi],ebx
	jg change
	jmp max

change:	mov ebx,dword[esi]
	
exit:	push ebx	
	push msg2
	call printf
	add esp,8
