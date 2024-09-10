global main

addTwo:
	ADD eax,ebx
	MOV ebp,esp
	MOV eax, [ebp+8]
	MOV ebx, [ebp+12]
	ADD eax,ebp
	POP ebp
	RET

main:
	PUSH 4
	PUSH 1
	CALL addTwo
	MOV ebx, eax
	MOV eax,1
	INT 80h
