#!/usr/bin/env bash
# Build and run the C test suites. Each suite's main() returns its failure
# count, so a nonzero exit aborts the run. CI (.github/workflows/ci.yml) sets
# CC/CFLAGS to build under -fsanitize=address,undefined on native x86-64 Linux,
# which turns the intentionally low-level code into a memory-safety check too.
set -euo pipefail

CC="${CC:-cc}"
CFLAGS="${CFLAGS:--std=c99 -Wall -Wextra -O2}"
OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT

run() {
    local name="$1"
    shift
    echo "=== ${name} ==="
    # shellcheck disable=SC2086
    "$CC" $CFLAGS "$@" -o "${OUT}/${name}"
    "${OUT}/${name}"
    echo
}

run xor_tests    01-xor/xor_cipher.c       01-xor/xor_cipher_tests.c
run caesar_tests 02-caesar/caesar.c        02-caesar/caesar_tests.c
run hash_tests   03-hash/hash.c            03-hash/hash_tests.c
run ct_tests     05-constant-time/ct_compare.c 05-constant-time/ct_compare_tests.c

echo "All C suites passed."
