#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
CC="${CC:-clang}"
OUT="${COVERAGE_OUT:-build/coverage}"
mkdir -p "$OUT"
if [[ "$(uname -s)" == Darwin ]]; then
    export SDKROOT="${SDKROOT:-$(xcrun --show-sdk-path)}"
    LLVM_COV="${LLVM_COV:-$(xcrun --find llvm-cov)}"
    LLVM_PROFDATA="${LLVM_PROFDATA:-$(xcrun --find llvm-profdata)}"
else
    LLVM_COV="${LLVM_COV:-llvm-cov}"
    LLVM_PROFDATA="${LLVM_PROFDATA:-llvm-profdata}"
fi
# Remove earlier profiles before merging; builds are separate from sanitizer/bench.
rm -f "$OUT"/*.profraw "$OUT/tests.profdata"
make -B all BUILD_DIR="$OUT/bin" CC="$CC" CFLAGS="-std=c99 -O0 -g -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror -fprofile-instr-generate -fcoverage-mapping"
for suite in xor caesar hash compare; do
    LLVM_PROFILE_FILE="$OUT/${suite}.profraw" "$OUT/bin/${suite}_tests"
done
"$LLVM_PROFDATA" merge -sparse "$OUT"/*.profraw -o "$OUT/tests.profdata"
IGNORE='(_tests\.c$|/include/lab_test\.h$|/tests/|/bench/)'
OBJECTS=(-object "$OUT/bin/caesar_tests" -object "$OUT/bin/hash_tests" -object "$OUT/bin/compare_tests")
"$LLVM_COV" export "$OUT/bin/xor_tests" "${OBJECTS[@]}" --instr-profile="$OUT/tests.profdata" --ignore-filename-regex="$IGNORE" > "$OUT/llvm-coverage-export.json"
"$LLVM_COV" report "$OUT/bin/xor_tests" "${OBJECTS[@]}" --instr-profile="$OUT/tests.profdata" --ignore-filename-regex="$IGNORE" > "$OUT/report.txt"
python3 scripts/summarize_coverage.py "$OUT/llvm-coverage-export.json" > "$OUT/summary.json"
"$CC" --version > "$OUT/compiler.txt"
echo "Coverage artifacts: $OUT"
