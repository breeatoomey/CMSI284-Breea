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
                default   rel

                section   .text
_main:
        mov     eax, 0    ; stdin A
        mov     ebx, 0    ; stdin B
checkA:
        ; if A is 0
        ; answer is B
checkB:
        ; if B is 0
        ; answer is A
gcd:
        ; set remainder to A%B
        ; set A to B
        ; set B to remainder
        ; jump to checkA
quit:
        ; stdout
        ret