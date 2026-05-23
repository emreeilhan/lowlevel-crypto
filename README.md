# lowlevel-crypto

Handwritten implementations of cryptographic primitives in C and x86 Assembly — built to learn, not to use in production.

## About

This repository is a learning project focused on understanding how low-level cryptographic ideas work by building them manually in C and x86 assembly. The goal is to explore the mechanics directly, without relying on external libraries, and to build intuition for how security-related logic behaves closer to the machine.

## What's Inside

- `01-xor/` — XOR cipher in C, plus an x86-64 assembly reimplementation of the encrypt loop and an `rdtsc` cycle comparison.
- `02-caesar/` — Caesar cipher in C: encode/decode, brute-force, and letter-frequency correlation cracking (a dot product against English frequencies — not chi-squared or index of coincidence; see `devlog/week2.md` for why I switched).
- `03-hash/` — handwritten `djb2` hash in C, with a bucket and collision demo.
- `04-buffer-overflow/` — a deliberately vulnerable C program (`vuln.c`) plus a full exploit-and-defend walkthrough in [its README](04-buffer-overflow/README.md): find the offset, hijack the return address, then break the exploit with a canary, ASLR, and NX one at a time.
- `05-constant-time/` — early-exit vs constant-time byte comparison, with a timing-leak demo: the same correct answer, but one version leaks a secret through its runtime.

Only the XOR module has an assembly port; see [Scope notes](#scope-notes) below.

## Reviewing this in 3 minutes

If you are screening this quickly, here is the fast path:

1. **Read two files.** `04-buffer-overflow/vuln.c` (the stack overflow) and `05-constant-time/ct_compare.c` (timing side channel) are the two that map most directly to low-level and embedded security work. Each has a short README next to it.
2. **Run the suites:**
   ```bash
   ./run_tests.sh
   ```
   Expect every check to print `PASS:`, the script to end with `All C suites passed.`, and the exit code to be `0`. A single failing assertion makes that suite return nonzero and aborts the run.
3. **Check CI.** [`.github/workflows/ci.yml`](.github/workflows/ci.yml) runs the same suites on native x86-64 Linux under `-fsanitize=address,undefined` on every push, so memory and undefined-behavior bugs would show up there.
4. **Read one devlog.** `devlog/week4.md` is the buffer-overflow week — the 24-byte offset, the control-flow hijack, and what each mitigation defeats.

Everything else (XOR, Caesar, djb2) follows the same "build the primitive, then break it" pattern, documented week by week in [`/devlog`](./devlog).

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
