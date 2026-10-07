#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
CC="${CC:-cc}"
BENCH_CFLAGS="${BENCH_CFLAGS:--std=c99 -O2 -g -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror}"
if [[ "$BENCH_CFLAGS" == *sanitize* || "$BENCH_CFLAGS" == *flto* ]]; then
    echo "Benchmark flags must exclude sanitizers and LTO" >&2; exit 2
fi
OUT="${BENCH_OUT:-build/benchmark}"
EXPERIMENT="${EXPERIMENT:-compare}"
LENGTH="${LENGTH:-64}"; ROUNDS="${ROUNDS:-1000}"; SAMPLES="${SAMPLES:-31}"; WARMUP="${WARMUP:-3}"; SEED="${SEED:-20261007}"
mkdir -p "$OUT"
make -B c-test CC="$CC" BUILD_DIR="$OUT/correctness" CFLAGS="$BENCH_CFLAGS" > "$OUT/correctness.log" 2>&1
BINARY="$OUT/bin/lab_bench"
if [[ "$EXPERIMENT" == xor-asm ]]; then
    if [[ "$(uname -m)" != x86_64 || "$(sysctl -n sysctl.proc_translated 2>/dev/null || true)" == 1 ]]; then
        echo "ASM performance waits for native x86-64 correctness; translated execution is excluded" >&2; exit 2
    fi
    make -B asm-test CC="$CC" BUILD_DIR="$OUT/correctness" CFLAGS="$BENCH_CFLAGS" > "$OUT/asm-correctness.log" 2>&1
    make -B "$OUT/bin/lab_bench_asm" CC="$CC" BUILD_DIR="$OUT/bin" CFLAGS="$BENCH_CFLAGS"
    BINARY="$OUT/bin/lab_bench_asm"
else
    make -B "$BINARY" CC="$CC" BUILD_DIR="$OUT/bin" CFLAGS="$BENCH_CFLAGS"
fi
"$BINARY" --context > "$OUT/binary-context.json"
python3 scripts/benchmark_metadata.py "$CC" "$BENCH_CFLAGS" "$OUT/metadata.json" "$EXPERIMENT" "$LENGTH" "$ROUNDS" "$SAMPLES" "$WARMUP" "$SEED" "$OUT/binary-context.json" "$BINARY"
"$BINARY" --experiment "$EXPERIMENT" --length "$LENGTH" --rounds "$ROUNDS" --samples "$SAMPLES" --warmup "$WARMUP" --seed "$SEED" > "$OUT/raw.csv"
python3 scripts/summarize_benchmark.py "$OUT/raw.csv" > "$OUT/summary.json"
# Retain object/assembly output to inspect loop/call retention; no LTO used.
"$CC" ${BENCH_CFLAGS} -fno-lto -S 05-constant-time/ct_compare.c -o "$OUT/compare-generated.s"
"$CC" ${BENCH_CFLAGS} -fno-lto -S 01-xor/xor_cipher.c -o "$OUT/xor-generated.s"
"$CC" ${BENCH_CFLAGS} -fno-lto -S bench/lab_bench.c -o "$OUT/bench-generated.s"
echo "Raw CSV, environment, distributions and generated code: $OUT"
