section .data
	pathname DD"/home/maitreya/Desktop/def.txt"
	toWrite DD"I love Badminton", 0AH, 0DH, "$"
section .text

global main

main:
	MOV eax, 5
	MOV ebx, pathname
	MOV ecx, 101o
	MOV edx, 700o
	;;0100
	;;0001
	;;0101
	;;0400
	;;0200
	;;0100
	INT 80h

	MOV ebx, eax
	MOV eax,4
	MOV ecx,toWrite
	MOV edx,16
	INT 80h

	MOV eax,1
	MOV ebx,0
	INT 80h
