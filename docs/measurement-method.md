# Reproducible timing method

`run_benchmarks.sh` runs deterministic C correctness first, then rebuilds an
optimized benchmark in separate translation units with `-fno-lto`. The ASM
experiment additionally requires native x86-64, runs its equivalence/ABI/page
checks first, and rejects translated or unknown execution. Sanitizers and LTO
are rejected in measurement flags. Benchmark-contract tests may use sanitizers,
but those results are never performance samples.

## Workloads and sampling

`compare` uses seeded byte data and compares equal buffers, mismatch at byte
zero, midpoint, or last byte. Each condition pairs early-exit and full-scan.
`xor-c` pairs all-zero/all-0xff data using the same checked XOR API; filling is
outside the timed region. `xor-asm` pairs the checked C/ASM APIs on the same
seeded bytes. Buffers are restored before each batch. Length is explicit and
public. The seed is a reproducible LCG input seed, not a cryptographic random
number generator. An even XOR round count restores the initial bytes; calls
still occur in each round because code is separately compiled without LTO.

Every condition has warm-up batches followed by repeated samples. A/B order
alternates per batch, including warm-up. Raw rows identify condition, algorithm,
length, seed, sample/order, rounds, elapsed nanoseconds and the observed result
sink. `CLOCK_MONOTONIC` failures return nonzero; the
`LAB_BENCH_FAIL_TIMER` test hook exercises that path. Bounds reject zero
length/rounds/samples/warmup, overflow and malformed arguments. The clock is
wall time, not CPU cycles or an isolated instruction latency.

Comparison results update a volatile sink per call. XOR calls mutate the
buffer and a checksum consumes the result after the stop timestamp. Wall time
includes calls, checked-interface validation, and comparison sink stores;
XOR checksum, allocation, initialization, CSV output and summaries are outside
the timed region. Counts are batches divided by rounds, not independent clock
reads per call. Very short results can be dominated by overhead/clock resolution.

## Artifacts and optimizer inspection

The runner writes `raw.csv`, `summary.json`, `metadata.json`,
`binary-context.json` and generated C assembly. Metadata includes CPU, OS, exact
compiler/version/flags, compiled/runtime arch and translation from the measured
binary, warmup/seed/rounds/samples, binary hash, tracked base HEAD, dirty-tree
flag and source hashes. A dirty-tree run identifies its code by source hashes;
the base HEAD alone is not a claim that modified code was already committed.
Permission-denied metadata is a visible failure/unknown context, never a guessed
native label. Use a host context that can read the necessary CPU/runtime fields.

The CSV validator rejects malformed/mixed configurations, missing condition or
A/B pairs, duplicate/noncontiguous samples, nonnumeric/out-of-range fields, and
nonalternating order. It reports min/p10/median/p90/max nanoseconds per call.
The local generated arm64 code retains external/indirect benchmark calls and
vector XOR/fold instructions. This is an optimizer-retention inspection, not
proof of constant-time code. Generated assembly remains available in the run
folder for a reviewer to inspect against the compiler/flags.

## Reproduce

```sh
SDKROOT=$(xcrun --show-sdk-path) CC=clang EXPERIMENT=compare LENGTH=64 \
  ROUNDS=2000 SAMPLES=31 WARMUP=3 SEED=20261007 \
  BENCH_OUT=build/benchmark/compare-short ./run_benchmarks.sh
CC=clang EXPERIMENT=compare LENGTH=4096 ROUNDS=1000 \
  BENCH_OUT=build/benchmark/compare-long ./run_benchmarks.sh
CC=clang EXPERIMENT=xor-c LENGTH=4096 ROUNDS=1000 \
  BENCH_OUT=build/benchmark/xor-long ./run_benchmarks.sh
python3 scripts/summarize_benchmark.py build/benchmark/compare-short/raw.csv
```

Omit `SDKROOT` outside macOS. Default samples/warmup/seed are 31/3/20261007.
Actual measured data is in the dated evidence folder. The CI native ASM
benchmark has 4096 bytes, 1000 rounds, 31 samples and 3 warm-up batches; inspect
its actual artifact before citing a number. Host scheduling, frequency scaling,
cache effects, process overhead and a virtualized CI machine limit inference.
No flaky duration threshold, portable speed percentage, causal Rosetta-overhead
claim or formal constant-time/security guarantee is derived here.
