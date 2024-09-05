section .data
	x DD 3.14
	y DD 2.1

section .text
global _start

_start:
	MOVSS xmm0, [x]
	MOVSS xmm1, [y]
	;; Cant use CMP as it only works with normal decimal values
	UCOMISS xmm0, xmm1
	;; rather than using JG etc
	JA greater
	JMP end

greater:
	MOV ecx,1

end:
	MOV eax,1

