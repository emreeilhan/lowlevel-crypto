# API contracts

All checked APIs return `lab_status`, independently of their result. They process
bytes and `size_t` lengths, never search for a NUL terminator. Positive lengths
require readable/writable buffers of that length; the caller is responsible for
their real allocation size and lifetime. A supplied capacity is a claim, not a
proof that a pointer is valid. Invalid calls do not modify input or result fields.
Status validation happens before the processing loop. All result fields must be
disjoint from processed input storage; checked result APIs reject overlap.

| API | Contract |
| --- | --- |
| `xor_apply(data, capacity, length, key)` | In-place. `length <= capacity`; NULL data allowed only at zero length. |
| `xor_repeat(data, capacity, length, key, key_length)` | In-place. Key must be nonempty and non-NULL, even for zero data length. Key must not overlap the processed data range. |
| `xor_apply_asm(data, capacity, length, key)` | Same validation as `xor_apply`; the x86-64 assembly core is entered only after validation. Build/link the ASM target to use it. |
| `caesar_encode_bytes` / `caesar_decode_bytes` | Same mutable-buffer rule. ASCII A–Z/a–z only; other bytes, including NUL, unchanged. All `int` shifts supported, including `INT_MIN`. |
| `caesar_crack_freq_bytes(data, length, shift)` | Result pointer mandatory. NULL input allowed at zero length. Maximum 4096 bytes. Highest frequency-correlation score among 26 shifts; ties choose the first. No letters means shift zero. |
| `caesar_brute_force_bytes(data, length, stream)` | Stream mandatory; max 4096 bytes. Prints 25 nontrivial shifts with `fwrite`; I/O failures return `LAB_IO_ERROR` and may leave partial stream output. Input is never changed. |
| `djb2_32_bytes` / `djb2_xor_32_bytes` | Result pointer mandatory, including zero length. NULL input permitted at zero length; empty hash is 5381. Unsigned 32-bit wrapping; noncryptographic. |
| `djb2_bucket_bytes` | Same input/result rule; zero buckets returns an error distinct from valid bucket zero. |
| `compare_full_scan` / `compare_early_exit` | Result pointer mandatory. Zero length with NULL inputs succeeds and returns true. Positive length requires both inputs. Length is public. Output must not alias input storage. |

`compare_full_scan` accumulates all byte differences without a content-dependent
early exit in C source. This does not establish constant-time machine code or
side-channel safety for arbitrary compilers/processors. `compare_early_exit` is
an educational baseline. Neither is a production secret-comparison API.

Text compatibility wrappers keep the old signatures. NULL text and invalid
signed lengths/empty keys return without mutation; hash wrappers return zero
on invalid input and the crack wrapper returns -1. Use the checked APIs to
distinguish an error from a legitimate result. Text XOR wrappers still use the
current string length: after XOR produces embedded NUL, reuse the original
length with the byte API to decrypt. Do not use text wrappers for ciphertext.
Demo text wrappers scan at most 4097 bytes to enforce the 4096-byte demo limit.
Legacy `xor_constant_time` is an explicit-length compatibility experiment,
rejects invalid pointers/lengths/overlapping key or partial output overlap, and
provides no timing guarantee. Identical input/output addresses are supported.

Pointer overlap checking uses `uintptr_t` address distances on the supported
Darwin/Linux targets. It rejects an intersecting processed data/key range;
unused capacity is not considered overlap. Caller-supplied lengths must describe
real objects. Assembly, benchmark clocks, and deliberately vulnerable examples
are outside C sanitizer/coverage guarantees.
