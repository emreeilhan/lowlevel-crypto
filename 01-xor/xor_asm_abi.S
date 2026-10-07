#ifdef __APPLE__
#define SYMBOL(name) _##name
#else
#define SYMBOL(name) name
#endif
.text
.globl SYMBOL(xor_asm_check_abi)
#ifndef __APPLE__
.type SYMBOL(xor_asm_check_abi), @function
#endif
/* Save the caller's registers; install sentinels; verify the XOR callee. */
SYMBOL(xor_asm_check_abi):
    pushq %rbx
    pushq %rbp
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15
    subq $8, %rsp
    movq $101, %rbx
    movq $202, %rbp
    movq $303, %r12
    movq $404, %r13
    movq $505, %r14
    movq $606, %r15
    call SYMBOL(xor_asm_bytes)
    movl $1, %eax
    cmpq $101, %rbx
    jne 1f
    cmpq $202, %rbp
    jne 1f
    cmpq $303, %r12
    jne 1f
    cmpq $404, %r13
    jne 1f
    cmpq $505, %r14
    jne 1f
    cmpq $606, %r15
    jne 1f
    jmp 2f
1:
    xorl %eax, %eax
2:
    addq $8, %rsp
    popq %r15
    popq %r14
    popq %r13
    popq %r12
    popq %rbp
    popq %rbx
    ret
#ifndef __APPLE__
.size SYMBOL(xor_asm_check_abi), .-SYMBOL(xor_asm_check_abi)
.section .note.GNU-stack,"",@progbits
#endif
