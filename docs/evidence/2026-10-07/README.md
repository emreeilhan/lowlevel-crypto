# Recorded verification — 7 October 2026

Implementation was uncommitted during these runs; base HEAD was `26f07402e89b48cf08f7c8c78c4a28d8673b9ad7`. Source hashes in `verification.json` identify the actual modified code. No commit or push was performed during implementation.

- Native Apple M2 arm64, Apple clang/LLVM 21.0.0, macOS 27.0.1. Four C suites: 112 `CHECK` invocations (34 XOR / 32 Caesar / 23 hash / 23 compare), normal and ASan/UBSan runs passed. CHECK calls include aggregate loops; they are not a count of all distinct inputs.
- Benchmark contract validation: 17 CLI checks and two Python unittest methods (including malformed CSV subcases), successful in normal/sanitized builds.
- Old tracked-source probes reproduce empty-key division-by-zero and INT_MIN signed overflow (UBSan exit 134), and embedded-NUL roundtrip failure (exit 1). They are expected before-fix failures, excluded from passing test/coverage totals.
- Rosetta Darwin x86-64: 3072 C/ASM key/length combinations plus 13 checks, including preserved registers and inaccessible page guards, passed. Linux core/ABI ELF objects were cross-assembled; native Linux execution is pending the actual CI run.
- LLVM source coverage: 223/236 mapped executable lines (94.49%), 190/216 branch outcomes (87.96%). Scope: four application C modules plus `include/lab_status.h`. Timing, test code, ASM and the deliberate overflow program are excluded. Zero-denominator `caesar.h` is recorded separately, not scored.
- macOS leak detection was disabled because the runtime does not support it. C sanitizer success is not assembly instrumentation, exhaustive input safety or a formal timing guarantee.

## Native arm64 C timing observations

31 samples per group after 3 warm-up batches; seed 20261007. Short inputs: 64 bytes / 2000 calls per batch. Long inputs: 4096 bytes / 1000 calls per batch. Groups alternate A/B order. Values below are wall nanoseconds per call (batch time divided by calls), including call/validation overhead. Raw CSV, environment and distributions are retained.

| Run | Condition | Algorithm | Median ns/call | p10–p90 |
| --- | --- | --- | ---: | ---: |
| compare-short | equal | early-exit | 21.00 | 20.50–21.00 |
| compare-short | equal | full-scan | 3.50 | 3.00–3.50 |
| compare-short | mismatch-first | early-exit | 2.50 | 2.50–3.00 |
| compare-short | mismatch-first | full-scan | 3.50 | 3.00–3.50 |
| compare-short | mismatch-last | early-exit | 20.50 | 20.50–21.00 |
| compare-short | mismatch-last | full-scan | 3.50 | 3.00–3.50 |
| compare-short | mismatch-middle | early-exit | 12.00 | 11.50–12.00 |
| compare-short | mismatch-middle | full-scan | 3.50 | 3.00–3.50 |
| compare-long | equal | early-exit | 1225.00 | 1210.00–1267.00 |
| compare-long | equal | full-scan | 54.00 | 52.00–55.00 |
| compare-long | mismatch-first | early-exit | 3.00 | 2.00–3.00 |
| compare-long | mismatch-first | full-scan | 55.00 | 52.00–58.00 |
| compare-long | mismatch-last | early-exit | 1213.00 | 1210.00–1254.00 |
| compare-long | mismatch-last | full-scan | 53.00 | 52.00–56.00 |
| compare-long | mismatch-middle | early-exit | 633.00 | 619.00–645.00 |
| compare-long | mismatch-middle | full-scan | 55.00 | 53.00–57.00 |
| xor-short | ff | c | 3.50 | 3.50–3.50 |
| xor-short | zeros | c | 3.50 | 3.50–3.50 |
| xor-long | ff | c | 47.00 | 46.00–48.00 |
| xor-long | zeros | c | 47.00 | 46.00–51.00 |


The early-exit distributions differ by mismatch position on this host. Full-scan distributions are retained as observations, not a constant-time proof. No portable speed percentage is inferred. No local ASM performance was measured. The configured CI adds a native x86-64 C/ASM benchmark only after its correctness job; citing that result requires the actual successful run/artifact.

Generated arm64 code retained XOR/fold vector instructions and external/indirect calls in the benchmark loop. The generated `.s` files remain in `build/benchmark/*/` for inspection. XOR checksum consumption is after the stop timestamp. These checks address optimizer removal, not all side channels.

Profiles and full generated code remain in `build/coverage/` and `build/benchmark/`; source/test logs and portable CSV/JSON records are checked in here.

## Native Linux follow-up

[Run 37660477948](https://github.com/emreeilhan/lowlevel-crypto/actions/runs/37660477948)
passed for committed source `02b753ec7be540b0e2d994918b1f2c187ec972f6`.
GCC and Clang ran the C/benchmark-contract tests, ASan/UBSan with leak detection,
and 3072 assembly equivalence vectors plus 13 wrapper/ABI/page-guard checks.
The separate coverage job reports 223/236 lines and 190/216 branch outcomes
for the documented C scope.

The native x86-64 Clang 18 benchmark on the runner's AMD EPYC 7763 measured
4096-byte checked XOR calls: median 79.158 ns C and 2558.600 ns assembly,
31 samples per algorithm, 1000 calls per batch, three warm-up batches. The
compiler-generated C is much faster in this particular workload; handwritten
assembly is not automatically an optimization. These are observed wall-time
batch results on a virtualized runner, not portable instruction timings.
Raw CSV, distributions, source/binary context, generated code and logs are in
`linux-ci/`; timing thresholds do not gate correctness.
