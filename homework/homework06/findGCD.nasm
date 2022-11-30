; -----------------------------------------------------------------------------
; filename: findGCD.nasm
;
;     Euclid's Algorithm
;     GCD(A, B):
;         if A is 0: return B
;         if B is 0: return A
;         GCD(B, A%B)
;
;     to assemble: nasm -fwin32 findGCD.nasm
;     to link:     gcc -m32 findGCD.obj -o findGCD.exe
;     to run:      findGCD 3113041662 11570925
;     GCD(3113041662, 11570925) = 462837
; -----------------------------------------------------------------------------

                global    _main
                extern    _puts
                extern    _printf
                extern    _scanf
                default   rel

                section   .text
_main:
        push    ebx

get1:
        push    prompt1
        call    _printf
        add     esp, 4
        push    number1
        push    format
        call    _scanf
        add     esp, 8
get2:
        push    prompt2
        call    _printf
        add     esp, 4
        push    number2
        push    format
        call    _scanf
        add     esp, 8
checkA:
        ; if A is 0                             idiv
        ; answer is B
checkB:
        ; if B is 0
        ; answer is A
gcd:
        ; set remainder to A%B        search idiv for nasm division
        ; set A to B
        ; set B to remainder
        ; jump to checkA
quit:
        ; stdout
        ret

                section   .data
prompt1:   db   "Enter first number: ", 0x00
prompt2:   db   "Enter second number: ", 0x00
format:    db   "%d", 0x00

                section   .bss
number1:   dd   0
number2:   dd   0
