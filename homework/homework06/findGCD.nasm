; -----------------------------------------------------------------------------
; filename: findGCD.nasm
;
;     Euclid's Algorithm
;     GCD(A, B):
;         if A is 0: return B
;         GCD(B, A%B)
;
;     to assemble: nasm -fwin32 findGCD.nasm
;     to link:     gcc -m32 findGCD.obj -o findGCD.exe
;     to run:      findGCD 3113041662 11570925
;     GCD(3113041662, 11570925) = 462837
; -----------------------------------------------------------------------------

;        global    _findGCD      ; this should be the main program
        global    _main
        extern    _puts
        extern    _printf
        extern    _scanf
        default   rel

        section   .text

;_findGCD:                       ; so should this
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
        mov     eax, number1    ; move number1 to eax
        jz      quit            ; jump if eax is 0
gcd:
        mov     ecx, number2    ; move number2 to ecx
        mov     eax, number1    ; move number1 to eax
        idiv    ecx             ; stores remainder in edx?
        mov     [number1], ecx  ; set A to B
        mov     [number2], edx  ; set B to remainder
        jmp     checkA          ; jump to checkA
quit:
        push    number2         ; push B
        call    _printf
        add     esp, 4
        pop     ebx
        ret

                section   .data
prompt1:   db   "Enter first number: ", 0x00
prompt2:   db   "Enter second number: ", 0x00
format:    db   "%d", 0x00

                section   .bss
;number1:   dd   0
;number2:   dd   0
;these should be 'resb' with a number of bytes
number1:    resb  4
number2:    resb  4
