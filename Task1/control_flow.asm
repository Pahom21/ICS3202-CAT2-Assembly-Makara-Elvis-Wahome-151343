section .data
    prompt db "Enter a number: ", 0    ; Prompt message
    positive_msg db "The number is POSITIVE.", 0
    negative_msg db "The number is NEGATIVE.", 0
    zero_msg db "The number is ZERO.", 0

section .bss
    input resb 10                    ; Reserve space for input

section .text
    global _start

_start:
    ; Prompt user
    mov rax, 1                      ; sys_write
    mov rdi, 1                      ; file descriptor (stdout)
    mov rsi, prompt                 ; message address
    mov rdx, 16                     ; message length
    syscall

    ; Read user input
    mov rax, 0                      ; sys_read
    mov rdi, 0                      ; file descriptor (stdin)
    mov rsi, input                  ; buffer address
    mov rdx, 10                     ; buffer size
    syscall

    ; Convert input to integer
    mov rsi, input                  ; Address of input buffer
    xor rbx, rbx                    ; Clear rbx (number accumulator)
    xor rcx, rcx                    ; Clear rcx (loop counter)

convert:
    movzx rax, byte [rsi+rcx]       ; Load current character
    cmp rax, 10                     ; Check for newline
    je classify                     ; If newline, classify the number
    sub rax, '0'                    ; Convert ASCII to integer
    imul rbx, rbx, 10               ; Multiply current number by 10
    add rbx, rax                    ; Add current digit to number
    inc rcx                         ; Increment counter
    jmp convert                     ; Loop

classify:
    cmp rbx, 0                      ; Compare number with zero
    je is_zero                      ; If zero, jump to is_zero
    jl is_negative                  ; If less than zero, jump to is_negative
    jmp is_positive                 ; Otherwise, jump to is_positive

is_positive:
    mov rsi, positive_msg           ; Load positive message
    jmp print_msg                   ; Jump to print message

is_negative:
    mov rsi, negative_msg           ; Load negative message
    jmp print_msg                   ; Jump to print message

is_zero:
    mov rsi, zero_msg               ; Load zero message

print_msg:
    mov rax, 1                      ; sys_write
    mov rdi, 1                      ; file descriptor (stdout)
    mov rdx, 26                     ; Message length
    syscall

    ; Exit program
    mov rax, 60                     ; sys_exit
    xor rdi, rdi                    ; Exit status 0
    syscall
