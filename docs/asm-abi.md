# XOR assembly ABI and scope

Only the single-byte XOR loop has an assembly implementation. The checked C
wrapper enforces capacity/NULL rules before entering `xor_asm_bytes(data,
length, key)`. The raw core requires a valid buffer for positive length; length
zero touches no memory, including when data is NULL. It processes exactly that
many bytes and does not scan for NUL.

Darwin x86-64 and Linux System V AMD64 pass data in RDI, length in RSI and the
byte key in DL. The leaf core uses RCX as an index and changes flags. It does
not touch RBX, RBP, R12–R15 or the stack. It does not set the direction flag.
The preprocessed `.S` applies Darwin's leading underscore only on Apple;
ELF uses `.type`/`.size` and marks the GNU stack nonexecutable.

The harness compares 12 lengths (0 through 4096, including odd/even/boundaries)
for all 256 keys: 3072 combinations. Vectors contain NUL and all byte values
when long enough; mismatches report length/key/offset. C/ASM outputs and
surrounding sentinel bytes must agree. A separate assembly shim installs six
callee-saved register sentinels and restores its own caller's registers. Page
protection puts inaccessible pages immediately before/after an entire writable
page, then exercises both edges and a zero-length inaccessible address.
These guards complement the comparison: C sanitizers do not automatically
instrument handwritten assembly accesses.

The local recorded build is Darwin x86-64 under Rosetta on an arm64 Apple M2.
The Linux `.S` paths were cross-assembled into ELF objects; that is compile-only
validation, not native Linux execution. The workflow separately runs native
Linux x86-64 correctness before its benchmark. Its passing result and raw
artifacts must be verified after publication. No ASM performance measurement
was made under Rosetta.
