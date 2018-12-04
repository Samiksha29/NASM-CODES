section .data
	msg db "%d",0
	output db "%f",10,0
	
	
section .bss
	sqr resd 1
	fact resd 1
	sum resq 1
	n resd 1
	x resd 1

section .text
	global main
	extern printf,scanf

main:	fldz
	fstp qword[sum]
	push n
	push msg
	call scanf
	add esp,8
	push x
	push msg
	call scanf
	add esp,8

	mov edi,dword[n]
	mov esi,dword[x]
	
pqr:	xor eax,eax
	xor edx,edx
	mov eax,esi
	mov ecx,edi

abc:	cmp ecx,1
	je abc1
	xor edx,edx
	mul esi
	loop abc
	
abc1:	mov dword[sqr],eax

	mov ecx,esi
	mov eax,1
abc2:	xor edx,edx
	mul ecx
	loop abc2

	mov dword[fact],eax

	fild dword[fact]
	fild dword[sqr]
	fdiv st1
	fadd qword[sum]
	fstp qword[sum]
	dec edi
	cmp edi,0
	jnz pqr

	
	fld qword[sum]
	sub esp,8
	fstp qword[esp]
	push output
	call printf
	add esp,12
