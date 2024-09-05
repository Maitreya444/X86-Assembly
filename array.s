section .data
    list DB 1, 2, 3, 4  ; Array of numbers to sum

section .text
global _start

_start:
    MOV eax, 0          ; Initialize the index to 0
    MOV cl, 0           ; Register to store array elements

loop:
    MOV bl, [list + eax] ; Load the current number from the list into bl
    ADD cl, bl           ; Add the number to cl
    INC eax              ; Increment the index
    CMP eax, 4           ; Compare the index to the length of the list
    JE end
    JMP loop             ; Jump to loop if eax is less than 4

end:
    MOV eax, 1           ; sys_exit system call number
    XOR ebx, 1           ; Exit code 0
    INT 80h              ; Call kernel
