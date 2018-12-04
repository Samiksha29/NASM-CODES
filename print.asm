section .data
	msg db "Enter a number",10,0
	len equ $-msg
section .bss
	fact resb len
section .text
	global main
	extern printf,scanf,puts
main:	mov esi,msg
	mov edi, fact
	mov ecx ,len
	;; rep movsb

p:	mov al,byte[esi]
	mov byte[edi],al
	dec ecx
	inc esi
	inc edi
	cmp ecx,0
	jnz p
	push fact
	call puts
	add esp,4
