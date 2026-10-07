#!/usr/bin/env bash
# Correctness only. Timing experiments have their own runner and artifacts.
set -euo pipefail
cd "$(dirname "$0")"
exec make test "$@"
