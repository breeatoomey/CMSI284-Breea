; Does the byte order swapping BY CALLING YOUR C function. Make your nasm
; program call the function at least five times with different values to test
; it.

; For Mac:
; gcc -c makeNBO.c -o makeNBOFunction.o         ; updated for correct options
; nasm -fmacho64 makeNBO.nasm
; gcc makeNBO.o makeNBOFunction.o -o makeNBO
; ./makeNBO

        global      _main
        extern      _makeNBOFunction
        extern      _printf
        default     rel

        section     .text
_main:
        mov     qword rdi, 0x0000000000000000   ; test1
        call    _makeNBOFunction
        mov     r8, rax

        mov     qword rsi, r8
        lea     rdi, [format]
        call    _printf

        mov     qword rdi, 0x0123456789ABCDEF   ; test2
        call    _makeNBOFunction
        mov     r8, rax

        mov     qword rsi, r8
        lea     rdi, [format]
        call    _printf

        mov     qword rdi, 0x0101010101010101   ; test3
        call    _makeNBOFunction
        mov     r8, rax

        mov     qword rsi, r8
        lea     rdi, [format]
        call    _printf

        mov     qword rdi, 0x00000000FFFFFFFF   ; test4
        call    _makeNBOFunction
        mov     r8, rax

        mov     qword rsi, r8
        lea     rdi, [format]
        call    _printf

        mov     qword rdi, 0xFEDCBA9876543210   ; test5
        call    _makeNBOFunction
        mov     r8, rax

        mov     qword rsi, r8
        lea     rdi, [format]
        call    _printf

        section     .data
format  db      "%d", 0x00
