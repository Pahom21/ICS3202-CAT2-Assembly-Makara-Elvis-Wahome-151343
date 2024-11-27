section .text
    global _start

_start:
    mov rdi, 5          ; Hardcode the number 5 (input for factorial)
    call factorial      ; Call the factorial function

    ; Factorial result should now be in RAX
    ; Halt the program
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code 0
    syscall

factorial:
    ; Save the base pointer
    push rbp
    mov rbp, rsp

    ; Base case: if RDI <= 1, return 1
    cmp rdi, 1
    jle .base_case

    ; Recursive case
    dec rdi             ; Decrement RDI (n - 1)
    push rdi            ; Save current RDI value
    call factorial      ; Recursive call
    pop rdi             ; Restore RDI
    mul rdi             ; Multiply RAX (result of recursion) by RDI
    jmp .end            ; Skip base case logic

.base_case:
    mov rax, 1          ; Base case: factorial(1) = 1

.end:
    mov rsp, rbp        ; Restore the stack
    pop rbp
    ret                 ; Return to the caller
