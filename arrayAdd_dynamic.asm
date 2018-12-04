section .data
	msg db "%d",0
	msg2 db "sum is %d",10,0
	msg1 db "%d ",10,0
	
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



lp1:	mov ebx,num
	mov eax,4
	mul ecx  ;;eax=eax+ecx 
	add ebx,eax
	push ecx
	push dword[ebx]    
	push msg1    
	call printf
	add esp,8
	pop ecx
	inc ecx
	dec esi
	cmp esi,0
	jnz lp1
	
	mov ecx,dword[n]
	
add:	mov esi,num
	mov eax,dword[four]
	mul ecx
	add esi,eax
	cmp ecx,-1
	jz exit
	mov edx,dword[esi]
	add dword[sum],edx
	dec ecx
	jmp add
	
exit:	push dword[sum]
	push msg2
	call printf
	add esp,8
	
	

	

	
