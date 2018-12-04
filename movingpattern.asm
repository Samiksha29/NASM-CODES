section .data
	s1 db "----*  &  #  /  \  @  ^  *  &  #  /  \  @  ^----",13,0
	s2 db "--- &  #  /  \  @  ^  *  &  #  /  \  @  ^  *----",13,0	
	s3 db "----#  /  \  @  ^  *  &  #  /  \  @  ^  *  &----",13,0
	s4 db "----/  \  @  ^  *  &  #  /  \  @  ^  *  &  #----",13,0
	s5 db "----\  @  ^  *  &  #  /  \  @  ^  *  &  #  /----",13,0
	s6 db "----@  ^  *  &  #  /  \  @  ^  *  &  #  /  \----",13,0
	s7 db "----^  *  &  #  /  \  @  ^  *  &  #  /  \  @----",13,0
	s8 db "----*  &  #  /  \  @  ^  *  &  #  /  \  @  \----",13,0	
	
section .bss
section .text
	global main
	extern printf
main:
loop:	mov eax,s1
	push eax
	call printf
	add esp,4
	mov eax,s2
	push eax
	call printf
	add esp,4
	mov eax,s3
	push eax
	call printf
	add esp,4
	mov eax,s4
	push eax
	call printf
	add esp,4
	mov eax,s5
	push eax
	call printf
	add esp,4
	mov eax,s6
	push eax
	call printf
	add esp,4
	mov eax,s7
	push eax
	call printf
	add esp,4
	mov eax,s8
	push eax
	call printf
	add esp,4
	jmp loop

