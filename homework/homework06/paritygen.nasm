; Write a nasm function called paritygen.nasm that will count the one bits 
; in a byte of data and return the proper value for the parity bit assuming 
; we are using odd parity.


; rax 01100110
; rbx 00000001
; rax 00000000
; cmp rax, 1
; jz count
; shr rax, 1      shift right
; jmp loop

; count: inc rcx
;        loop