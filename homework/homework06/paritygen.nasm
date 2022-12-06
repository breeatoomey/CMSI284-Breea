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

;--------------------------------------------------------------------------------

          global       _start

          section      .text
_start:   mov          rbx, 00000001b
          and          rax, rbx
          cmp          rax, 1
          jz           count
          shr          rax, 1
          jmp          _start

count:    inc          rcx
          jmp          _start
