section .data
	a db 10
section .text
	global main
main:
	add eax,ecx
	add ecx,ecx
	add edx,ecx
	add ebx,ecx
	add esi,ecx
	add edi,ecx
	add eax,104
	add ecx,104
	add edx,104
	add ebx,104
	add esi,104
	add edi,104
	add eax,dword[a]
	add ecx,dword[a]
	add edx,dword[a]
	add ebx,dword[a]
	add esi,dword[a]
	add edi,dword[a]
	add dword[a],eax
	add dword[a],ecx
	add dword[a],edx
	add dword[a],ebx
	add dword[a],esi
	add dword[a],edi
	add dword[a],102
	add eax,dword[eax+ebx*2]
	add ecx,dword[ecx+ebx*2]
	add edx,dword[edx+ebx*2]	
	add ebx,dword[ebx+ebx*2]
	add esi,dword[esi+ebx*2]
	add edi,dword[edi+ebx*2]
	add eax,dword[eax+ebx*4]
	add ecx,dword[ecx+ebx*4]
	add edx,dword[edx+ebx*4]	
	add ebx,dword[ebx+ebx*4]
	add esi,dword[esi+ebx*4]
	add edi,dword[edi+ebx*4]
	add eax,dword[eax+ebx*8]
	add ecx,dword[ecx+ebx*8]
	add edx,dword[edx+ebx*8]	
	add ebx,dword[ebx+ebx*8]
	add esi,dword[esi+ebx*8]
	add edi,dword[edi+ebx*8]