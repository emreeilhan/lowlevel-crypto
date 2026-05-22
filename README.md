# lowlevel-crypto

Handwritten implementations of cryptographic primitives in C and x86 Assembly — built to learn, not to use in production.

## About

This repository is a learning project focused on understanding how low-level cryptographic ideas work by building them manually in C and x86 assembly. The goal is to explore the mechanics directly, without relying on external libraries, and to build intuition for how security-related logic behaves closer to the machine.

## What's Inside

- `01-xor/` — XOR cipher in C, plus an x86-64 assembly reimplementation of the encrypt loop and an `rdtsc` cycle comparison.
- `02-caesar/` — Caesar cipher in C: encode/decode, brute-force, and chi-squared frequency cracking.
- `03-hash/` — handwritten `djb2` hash in C, with a bucket and collision demo.
- `04-buffer-overflow/` — a small, deliberately vulnerable C program for studying stack overflows under gdb.

Only the XOR module has an assembly port; see [Scope notes](#scope-notes) below.

## Goals

- Learn C from scratch through hands-on implementation.
- Understand x86 assembly by writing and comparing low-level equivalents.
- Connect cryptography and systems theory to real security concepts.

## Scope notes

Only the XOR module has an x86-64 assembly reimplementation. The Caesar and djb2 assembly ports (tracked as PER-8 and a sibling task) were **deliberately deferred**: once the XOR loop had made the calling convention and register-level mechanics concrete, repeating the exercise for two more ciphers added little new learning for the time it would have cost. The empty placeholder `.s` files were removed so the tree reflects what actually exists rather than what was once planned.

## Tests & CI

```bash
./run_tests.sh
```

`run_tests.sh` builds and runs the C test suites for XOR, Caesar, and djb2. Each suite's `main()` returns its failure count, so a single failing assertion fails the whole run. On every push and pull request, [GitHub Actions](.github/workflows/ci.yml) runs the same suites on a **native x86-64 Linux** runner under `-fsanitize=address,undefined`, so memory errors and undefined behavior surface automatically — a deliberate choice for a repository whose entire subject is low-level memory behavior.

The XOR assembly test and benchmark are macOS-specific (the symbol uses the Darwin leading-underscore convention) and run separately:

```bash
clang -arch x86_64 -Wall -Wextra -O2 01-xor/xor_cipher.c 01-xor/xor_asm.s 01-xor/xor_asm_tests.c -o /tmp/xor_asm_tests
arch -x86_64 /tmp/xor_asm_tests
```

## Benchmarks

Two measurements live here, and **neither is a wall-clock speed claim**:

- `xor_timing_bench.c` is a smoke test for obvious input-dependent timing drift — not a formal constant-time proof.
- `xor_asm_tests.c` reports 101 serialized `rdtsc` samples (median/min/avg/max cycles) for the C and assembly XOR loops. These were taken from an `x86_64` build running under **Rosetta 2 translation on an arm64 Mac**, so the absolute cycle counts are inflated by emulation and the assembly path looks far slower than it would run natively. Read it as a register- and instruction-level behavior comparison, not as "C is N× faster than assembly." A native x86-64 measurement is the right way to make any performance claim — which is the same reason CI runs on a native x86-64 Linux runner.

## Stack

- Language: C (C99), x86-64 Assembly (AT&T syntax)
- Toolchain: gcc, as, gdb
- Platform: macOS

## Devlog

The [`/devlog`](./devlog) folder contains four weekly notes documenting what was learned, what was built, and what came up during the process.

## Warning

This code is for educational purposes only. Do not use in production.

## Author

Emre İlhan - [github.com/emreeilhan](https://github.com/emreeilhan)
