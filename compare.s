section .data

section .text

global _start

_start:
	MOV eax,2
	MOV ebx,3
	CMP eax,ebx
	JL lesser
	JMP end

lesser:
	MOV ecx,1
end:
	INT 80h
