---
# Week 3

## What I built

I wrote the XOR cipher again, this time in x86-64 assembly.

The C version was already simple, but assembly made every small assumption visible. The function takes a string pointer in `rdi` and the key byte in `sil`, walks byte by byte until the null terminator, XORs each byte, and writes it back in place. No library call, no helper function, just registers and memory.

I added a C test file that calls both versions. First it encrypts the same plaintext with `xor_single` and `xor_asm_encrypt`, then compares the outputs. Then it runs the assembly function a second time with the same key to prove the round trip still works.

I also added an `rdtsc` comparison. On my machine the handwritten assembly version was slower than the optimized C version in this local benchmark. That was useful because it killed the easy assumption that handwritten assembly is automatically faster. The exact cycle count depends on CPU, compiler, architecture translation, and what else the machine is doing.

## What I learned

The biggest thing that clicked was the calling convention. Before this, function arguments felt like normal C variables. In assembly, they arrive in very specific registers. For this function, the pointer is already in `rdi`, and the key byte is already in `sil`. If I move the wrong register or assume the wrong argument order, the code can still assemble but do the wrong thing.

The loop is tiny:

```asm
movb (%rdi,%rcx), %al
testb %al, %al
je L_xor_done
xorb %sil, %al
movb %al, (%rdi,%rcx)
```

That is the whole operation. Load one byte, stop if it is zero, XOR with the key, store it back, move to the next byte.

## Struggles

The first practical issue was platform reality. I am on an arm64 Mac, but this project is about x86-64 assembly. So the test has to compile as x86_64 and run through Rosetta:

```bash
clang -arch x86_64 -Wall -Wextra -O2 01-xor/xor_cipher.c 01-xor/xor_asm.s 01-xor/xor_asm_tests.c -o /tmp/xor_asm_tests
arch -x86_64 /tmp/xor_asm_tests
```

That also made the benchmark feel more honest. I can compare C and assembly locally, but I should not pretend the result is a general performance truth.

## Next week

Next I want to do the same thing for Caesar. XOR was a clean first assembly pass because every byte gets the same operation. Caesar will be more annoying because it has branches: uppercase range, lowercase range, wrap-around, and non-letter characters. That should make the calling convention and control flow lessons stick harder.
---
