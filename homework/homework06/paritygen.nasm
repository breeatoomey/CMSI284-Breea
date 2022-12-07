; Write a nasm function called paritygen.nasm that will count the one bits
; in a byte of data and return the proper value for the parity bit assuming
; we are using odd parity.
;--------------------------------------------------------------------------------

          global       start

          section      .text
start:
          xor          rax, rax
          xor          rsi, rsi
          xor          rdx, rdx
          mov          rsi, 8
loop:
          rcr          rdi, 1
          jc           count
check:
          dec          rsi
          jnz          result
          jmp          loop
count:
          inc          rax
          jmp          check
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
