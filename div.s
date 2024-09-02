section .text
global _start

_start:
	MOV eax,0xff
	MOV ecx,2
	MOV edx,0
	IDIV ecx
	INT 80h
