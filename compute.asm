section .data
	msg db "%d",0
	output db "%f",10,0
	
section .bss
	sqr resd 1
	fact resd 1
	sum resq 1
	n resd 1
	
section .text
	global main
	extern printf,scanf
	
main:	fldz
	fstp dword[sum]
	push n
	push msg
	call scanf
	add esp,8
	xor edi,edi
	mov edi,dword[n]
pqr:	xor eax,eax
	xor edx,edx
	mov eax,edi
	mul edi
	mov dword[sqr],eax
	xor edx,edx
	mov ecx,edi
	mov eax,1
abc:	xor edx,edx
	mul ecx
	loop abc
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
	
