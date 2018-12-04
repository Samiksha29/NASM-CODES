section .data
	b dq 10.0
	a dq 2.0
	c dq 3.0
	msg db "%f",10,0
section .bss
	MFirst resq 1
	Msecond resq 1
	Four resd 1
	
section .text
	global main
	extern printf
main:	mov dword[Four],4
	fld qword[b]  ;;b value load in stack at st0
	fmul qword[b] ;;st0 value multiply with b i.e b*b 
	fstp qword[MFirst] ;;MFirst contain value st0 that is b*b store in MFirst and pop from stack 
	fld qword[a]    ;;value of a is load in st0 
	fmul qword[c]   ;;value of st0 muliply with value of c i.e a*c
	fild dword[Four] ;;4 is store at st0 and privoius val of st0 i.e a*c is move to st1 
	fmul st1       ;;st1-a*c value is multiply with st0-4 i.e 4*a*c and output is store at st0
	fchs   ;;sign of st0 is change i.e -4*a*c 
	fadd qword[MFirst]  ;;value at st0 add with value at MFirst i.e b^2+(-4*a*c)=b^2-4*a*c 
	fsqrt   ;;square root the value present at st0 i.e sqrt(b*b-4*a*c)

	sub esp,8
	fstp qword[esp]
	push msg
	call printf
	add esp,12
	
	
