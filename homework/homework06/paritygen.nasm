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

          global       start

          section      .text
start:
          xor          rax, rax
          xor          rsi, rsi
          xor          rdx, rdx
          mov          rsi, 8
loop:
          dec          rsi
          rcr          rdi, 1
          jc           count
check:
          cmp          rsi, 0
          je           result
          jmp          loop
count:
          inc          rax
          jmp          start
result:
          bt           rax, 0
          jc           zeroParity
          jmp          oneParity
zeroParity:
          mov          rax, 0
          ret
oneParity:
          mov          rax, 1
          ret
