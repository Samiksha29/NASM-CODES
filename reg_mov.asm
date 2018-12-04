section .data
	a db 10
	b dd 44
	c dq 2
	d dq 10
	e dq 20

section .text
	global main
main:
	mov eax,ecx
	mov ecx,ecx
	mov edx,ecx
	mov ebx,ecx
	mov esi,ecx
	mov edi,ecx
	mov eax,104
	mov ecx,104
	mov edx,104
	mov ebx,104
	mov esi,104
	mov edi,99
	mov eax,dword[a]
	mov ecx,dword[a]
	mov edx,dword[b]
	mov ebx,dword[c]
	mov esi,dword[d]
	mov edi,dword[e]
	mov dword[a],eax
	mov dword[a],ecx
	mov dword[a],edx
	mov dword[a],ebx
	mov dword[a],esi
	mov dword[a],edi
	mov dword[a],102
	mov eax,dword[eax+ebx*2]
	mov ecx,dword[ecx+ebx*2]
	mov edx,dword[edx+ebx*2]	
	mov ebx,dword[ebx+ebx*2]
	mov ecx,dword[esi+ebx*2]
	mov edi,dword[edi+ebx*2]
	mov eax,dword[eax+ebx*4]
	mov ecx,dword[ecx+ebx*4]
	mov edx,dword[edx+ebx*4]	
	mov ebx,dword[ebx+ebx*4]
	mov esi,dword[esi+ebx*4]
	mov edi,dword[edi+ebx*4]
	mov eax,dword[eax+ebx*8]
	mov ecx,dword[ecx+ebx*8]
	mov edx,dword[edx+ebx*8]	
	mov ebx,dword[ebp+ebx*8]
	mov esi,dword[esi+ebx*8]
	mov edi,dword[edi+ebx*8]
