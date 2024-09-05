
extern printf
extern exit

section .data

	msg DD "Airbus A320", 0
	fmt DB "Output is : %s",10,0

section .text

global main

;;printf(fmt, msg)

main:
	PUSH msg
	PUSH fmt
	CALL printf
	PUSH 1
	CALL exit
	;;exit(1)
