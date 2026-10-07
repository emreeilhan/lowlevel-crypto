#!/usr/bin/env bash
set -euo pipefail
BINARY="${BENCH_BINARY:-build/lab_bench}"
OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT
checks=0
reject() {
    if "$BINARY" "$@" > "$OUT/out.csv" 2> "$OUT/error.txt"; then
        echo "FAIL: accepted invalid benchmark arguments: $*" >&2; exit 1
    else
        error_code=$?
    fi
    if [[ "$error_code" != 2 ]]; then echo "FAIL: expected argument error 2, got $error_code" >&2; exit 1; fi
    test -s "$OUT/error.txt"
    checks=$((checks + 1))
}
reject --rounds 0
reject --rounds -1
reject --length 0
reject --length 1048577
reject --length nan
reject --length 1garbage
reject --seed 4294967296
reject --samples 0
reject --warmup 0
reject --experiment unsupported
reject --unknown 5
reject --length
reject --experiment xor-asm
if LAB_BENCH_FAIL_TIMER=1 "$BINARY" --samples 1 > "$OUT/fail.csv" 2> "$OUT/error.txt"; then
    echo 'FAIL: timer failure hidden' >&2; exit 1
else
    error_code=$?
fi
if [[ "$error_code" != 1 ]]; then echo "FAIL: expected timer error 1, got $error_code" >&2; exit 1; fi
test -s "$OUT/error.txt"
checks=$((checks + 1))
"$BINARY" --context > "$OUT/context.json"
python3 -c 'import json,sys; d=json.load(open(sys.argv[1])); assert d["compiled_arch"] in ("arm64","x86_64","unknown"); assert d["execution"] in ("native","translated","unknown")' "$OUT/context.json"
checks=$((checks + 1))
for experiment in compare xor-c; do
    "$BINARY" --experiment "$experiment" --length 3 --rounds 2 --samples 2 --warmup 1 --seed 0 > "$OUT/$experiment.csv"
    python3 scripts/summarize_benchmark.py "$OUT/$experiment.csv" > "$OUT/$experiment.json"
    checks=$((checks + 1))
done
echo "benchmark CLI: $checks checks, 0 failures"
