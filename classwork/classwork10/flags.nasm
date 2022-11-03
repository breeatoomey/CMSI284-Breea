; ----------------------------------------------------------------------------------------
; This is a Mac OSX console program that displays the contents of the flags register on
;     the display.  In addition, if the carry flag is set, it outputs a message to that
;     effect, and if the overflow flag gets set, it outputs that message as well.
;
;  to assemble:   nasm -fmacho64 flags.nasm
;  to link:       gcc flags.o -o flags
;  to run:        ./flags
; ----------------------------------------------------------------------------------------

            global      _main
            extern      _printf
            default     rel

            section     .text

_main:      push        rbx
            pushf                         ; push the value of the flags onto the stack
            pop         r8                ; pop flags and load into r8
            mov         rax,  0x87654321  ; initialize the RAX register

display1:   mov         rsi, r8           ; display the starting value of the flags using printf
            lea         rdi, [format]
            call        _printf
            mov         rsi, rax          ; display the starting value of the rax register using printf
            lea         rdi, [format]
            call        _printf

addloop:    add         rax, rax          ; add the rax register to itself

carrychk:   pushf                         ; get the flag values
            pop         r8                ;  and save 'em
            and         r8, 0x00000001    ; mask off the carry flag [bit zero]
            cmp         r8, 0x00000001    ; check if the carry flag is set
            jnz         display2          ; it's set, so output the message
            jmp         ovrflwchk         ; it's not, so check for overflow flag

display2:
             lea         rdi, [carry]      ; display the carry flag set message
             call        _printf

ovrflwchk:
            pushf                        ; get the flag values again
            pop         r8                ;  and save 'em
            and         r8, 0x00000800    ; mask off the overflow flag [bit eleven]
            cmp         r8, 0x00000800    ; check if the overflow flag is set
            jnz         display3          ; it's set, so output the message
            jmp         addloop           ; if it is NOT, go again

display3:   lea         rdi, [overflow]   ; display the overflow flag is set message
            call        _printf
            jmp         quit

quit:       mov         rax, 0x02000001   ; system call for exit
            xor         rdi, rdi          ; exit code 0
            syscall                       ; invoke operating system to exit

            section     .data
carry:      db          "carry flag set"
overflow:   db          "overflow flag set"
format:     db          "%d", "%s", 0x00
