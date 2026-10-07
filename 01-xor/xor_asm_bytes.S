#if !defined(__x86_64__)
#error "xor_asm_bytes.S requires an x86-64 target"
#endif
#ifdef __APPLE__
#define SYMBOL(name) _##name
#else
#define SYMBOL(name) name
#endif
.text
.globl SYMBOL(xor_asm_bytes)
#ifndef __APPLE__
.type SYMBOL(xor_asm_bytes), @function
#endif
/* SysV AMD64 / Darwin: rdi=data, rsi=public length, dl=key.
 * Only caller-saved rcx and flags are clobbered; no memory access at length zero. */
SYMBOL(xor_asm_bytes):
    xorl %ecx, %ecx
    testq %rsi, %rsi
    je 2f
1:
    xorb %dl, (%rdi,%rcx)
    incq %rcx
    cmpq %rsi, %rcx
    jb 1b
2:
    ret
#ifndef __APPLE__
.size SYMBOL(xor_asm_bytes), .-SYMBOL(xor_asm_bytes)
.section .note.GNU-stack,"",@progbits
#endif
