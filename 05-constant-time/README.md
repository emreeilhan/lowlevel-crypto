# 05-constant-time

The first four modules were about ciphers and a memory bug. This one is about a subtler failure: code that is **functionally correct but leaks a secret through how long it takes to run**.

## The problem

A natural way to check a token, MAC, or password hash is `memcmp`:

```c
if (memcmp(provided, real_secret, n) == 0) grant_access();
```

`memcmp` (and the equivalent hand-written loop in `insecure_compare`) returns the moment it finds a mismatching byte. So a guess that gets the first byte right takes a little longer to reject than one that gets it wrong immediately. An attacker who can measure that difference doesn't have to brute-force the whole secret — they recover it **one byte at a time**:

1. Try all 256 values for byte 0; the one that's slightly slower to reject is correct.
2. Fix byte 0, repeat for byte 1, and so on.

That turns an astronomically large search into a linear one.

## The fix

`constant_time_compare` always scans every byte and folds the differences into a single accumulator, with no branch on the data:

```c
unsigned char diff = 0;
for (size_t i = 0; i < n; i++) diff |= a[i] ^ b[i];
/* decide only at the end, branchlessly */
```

Same answer, but the runtime no longer depends on *where* the inputs differ.

## See it

```bash
gcc -std=c99 -Wall -Wextra -O2 05-constant-time/ct_compare.c 05-constant-time/ct_compare_tests.c -o /tmp/ct
/tmp/ct
```

The test suite first checks both functions return the same correct answers (this is what CI gates on), then prints a timing demo. For `insecure_compare`, the "mismatch at the first byte" case is visibly faster than the "matches everything" case; for `constant_time_compare`, the two stay close. The numbers are noisy and machine-dependent, so the demo is informational only and never fails the build — the shape is the lesson, not the values.

## Why this is here

This is the kind of bug that low-level and embedded security reviews look for specifically: timing side channels on secret comparisons show up in bootloaders, secure elements, and token checks all the time, and they survive code review easily because the code *looks* correct. It is the cleanest concrete example I have of correctness and security being two different properties.
