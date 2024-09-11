section .data
	pathname DD"/home/maitreya/Desktop/abc.txt"

section .bss
	buffer: resb 10

section .text
global main

main:
	MOV eax,5
	MOV ebx, pathname
	MOV ecx, 0
	INT 80h

	MOV ebx, eax
	MOV eax, 19
	MOV ecx, 20
	MOV edx, 0
	INT 80h

	MOV eax,3
	MOV ecx, buffer
	MOV edx, 10
	INT 80h

	MOV eax,1
	MOV ebx,0
	INT 80h
