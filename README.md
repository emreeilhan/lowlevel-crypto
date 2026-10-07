# lowlevel-crypto

Educational C byte-buffer exercises, a small x86-64 XOR routine, and reproducible
measurement experiments. XOR and Caesar are toy ciphers; djb2 is a
noncryptographic table hash. This is not a production encryption,
password-storage, MAC or secret-comparison library.

## Current modules

- `01-xor/`: checked in-place XOR/repeating-key byte APIs, text compatibility
  wrappers, and length-based `xor_asm_bytes.S` for Darwin and Linux x86-64.
- `02-caesar/`: ASCII byte encode/decode for every `int` shift, including
  `INT_MIN`; bounded brute-force and frequency-correlation demos.
- `03-hash/`: unsigned 32-bit djb2/classic-XOR variants and checked bucket
  placement; zero buckets is an error distinct from bucket zero.
- `05-constant-time/`: checked equality results separated from errors. Full-scan
  C accumulates all differences without content-dependent early exit; generated
  code/timing still needs target-specific analysis. The legacy function name
  `constant_time_compare` is retained for compatibility, not a guarantee.
- `04-buffer-overflow/`: intentionally vulnerable historical stack exercise,
  excluded from normal tests, sanitizers, coverage and benchmark runs.

Start with [API contracts](docs/api-contracts.md). Length is explicit; pointers
and capacity values cannot prove the real allocation size. Invalid checked calls
leave data/results unchanged. Text XOR wrappers are not binary-safe: preserve
length and use the byte API when ciphertext contains NUL.

## Build and correctness

```sh
./run_tests.sh
make sanitize CC=clang
make coverage CC=clang
make asm-test CC=clang            # native x86-64 host
```

C99, Make, GCC or Clang, and Python 3 (standard library) are used. Tests compile
with `-Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror`.
Timing is separate from correctness: no timing threshold gates a test. Use a
separate `BUILD_DIR` when changing compiler flags or target architecture.

On Apple Silicon, set `SDKROOT=$(xcrun --show-sdk-path)` if needed. LeakSanitizer
is unsupported by the local macOS runtime; the recorded sanitizer run uses
`ASAN_OPTIONS=abort_on_error=1:detect_leaks=0`. Linux CI enables leak detection.
Rosetta correctness is a separate target:

```sh
SDKROOT=$(xcrun --show-sdk-path) make asm-test CC=clang \
  CFLAGS='-std=c99 -O2 -g -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror -arch x86_64' \
  BUILD_DIR=build/rosetta RUNNER='arch -x86_64'
```

The [CI workflow](.github/workflows/ci.yml) runs main pushes and pull requests:
GCC/Clang C tests, ASan/UBSan, native Linux x86-64 ASM equivalence/ABI/page guards,
LLVM source coverage, then an informational native C/ASM benchmark. Configured
jobs are not evidence of a passing run: inspect/download the actual artifacts.
C sanitizers do not fully instrument handwritten assembly.

## Measurement

```sh
CC=clang EXPERIMENT=compare LENGTH=64 ./run_benchmarks.sh
CC=clang EXPERIMENT=xor-c LENGTH=4096 BENCH_OUT=build/xor-c ./run_benchmarks.sh
# Native x86-64 only; the runner first runs C and ASM correctness:
CC=clang EXPERIMENT=xor-asm BENCH_OUT=build/native-asm ./run_benchmarks.sh
```

Each run retains raw CSV, median/min/p10/p90/max distributions, seed,
warm-up/repetition counts, compiler/version/flags, source hashes, revision and
binary-reported native/translated context. The clock is `CLOCK_MONOTONIC`, in
nanoseconds, not TSC cycles. [Measurement method](docs/measurement-method.md)
explains the workload, optimizer checks, and limits. ASM performance is refused
under Rosetta/unknown translation; C measurements may be translated but must
retain that label. No portable speed percentage or formal constant-time claim
is inferred from these experiments.

[Recorded 7 October 2026 verification](docs/evidence/2026-10-07/README.md) includes
before-fix failures, current C checks, macOS sanitizer/coverage data, Rosetta
correctness and native arm64 C measurements. Native Linux execution and ASM
performance await the actual CI run; cross-assembling an ELF object is not a
Linux runtime test.

## Historical notes

The four notes in `devlog/` describe the earlier string-based implementation and
old timing demonstrations. Their commands/counts/stack offsets are historical,
not current API contracts or portable security guarantees. For a `strcpy` into
`char buf[16]`, only 15 characters plus NUL fit; stack layout and mitigation
behavior must be checked against one particular build. The deliberate vulnerable
source remains unchanged.

## Author

Emre İlhan — [github.com/emreeilhan](https://github.com/emreeilhan)
