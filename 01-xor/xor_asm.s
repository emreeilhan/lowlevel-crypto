.text
.globl _xor_asm_encrypt

/*
 * void xor_asm_encrypt(char *text, char key)
 *
 * macOS x86-64 uses the System V style register order for these arguments:
 *   rdi = text pointer
 *   sil = single-byte key
 *
 * The loop mutates the string in place until it reaches the NUL terminator.
 */
_xor_asm_encrypt:
    xorl %ecx, %ecx

L_xor_loop:
    movb (%rdi,%rcx), %al
    testb %al, %al
    je L_xor_done
    xorb %sil, %al
    movb %al, (%rdi,%rcx)
    incq %rcx
    jmp L_xor_loop

L_xor_done:
    ret
