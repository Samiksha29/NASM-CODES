section .data
	s1 db "----@  S  h  u  b  h  a  m  J  a  d  h  a  v----",13,0
	s2 db "----S  h  u  b  h  a  m  J  a  d  h  a  v  @----",13,0	
	s3 db "----h  u  b  h  a  m  J  a  d  h  a  v  @  S----",13,0
	s4 db "----u  b  h  a  m  J  a  d  h  a  v  @  S  h----",13,0
	s5 db "----b  h  a  m  J  a  d  h  a  v  @  S  h  u----",13,0
	s6 db "----h  a  m  J  a  d  h  a  v  @  S  h  u  b----",13,0
	s7 db "----a  m  J  a  d  h  a  v  @  S  h  u  b  h----",13,0
	s8 db "----m  J  a  d  h  a  v  @  S  h  u  b  h  a----",13,0	
	
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
;;	mov eax,s9
;;	push eax
;;	call printf
;;	add esp,4
	jmp loop

