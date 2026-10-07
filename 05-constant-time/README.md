# Byte comparison experiment

`compare_full_scan(a, b, length, &equal)` separates status from equality.
A result pointer is mandatory even at zero length; NULL inputs are accepted
only when length is zero, returning true. At positive length both inputs must
be readable, and the result storage must not overlap them. Invalid calls leave
the result unchanged. `compare_early_exit` has the same checked contract but
stops at its first mismatching byte.

The full-scan C source accumulates every difference before deciding equality.
Length is public. Compiler transformations, processor behavior and other side
channels are outside this source-level property; there is no formal
constant-time or production security guarantee. The compatibility names
`insecure_compare` and `constant_time_compare` return 0 for invalid inputs and
cannot distinguish an error from inequality; use the checked APIs in new code.

`ct_compare_tests.c` is deterministic correctness only: equal buffers containing
all 256 byte values; first/middle/last differences; zero/NULL/output/alias
contracts; compatibility behavior. It contains no clock or timing demo.

```sh
make c-test
CC=clang EXPERIMENT=compare LENGTH=4096 ./run_benchmarks.sh
```

The separate benchmark samples equal and three mismatch positions, warms up,
alternates early/full order, retains raw data and reports distributions. A
prefix-dependent timing pattern may be observable on a specific target. This
experiment neither recovers a secret nor rules out timing leakage. See
[method and environment](../docs/measurement-method.md).
