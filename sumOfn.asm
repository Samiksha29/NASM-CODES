section .data
	msg db "Enter a number",0
	msg1 db '%d',0
	msg2 db "sum is %d",10,0
	
section .bss
	n resd 1
section .text
	global main
	extern scanf,printf,puts
main:	push msg
	call puts
	add esp,4
	push n
	push msg1
	call scanf
	add esp,8
	mov ecx,dword[n]
	xor edx,edx
pqr:	add edx,ecx
	loop pqr
;abc:	cmp ecx,0
	;jz exit
	;add edx,ecx
	;;dec ecx			
	;;jmp abc
	
exit:	push edx
	push msg2
	call printf
	add esp,8
	

	
