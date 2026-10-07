# djb2 byte-buffer exercise

`djb2_32_bytes` and `djb2_xor_32_bytes` consume explicit byte lengths, including
NUL and 0xff, and wrap in unsigned 32-bit arithmetic. Empty input hashes to
5381. The output pointer is mandatory; positive length with NULL input or output
aliasing input returns an error and preserves the result. `djb2_bucket_bytes`
rejects zero buckets explicitly, so an error cannot be confused with bucket zero.

The old text wrappers remain for demonstrations. Their invalid-input sentinel
is zero; use the status-returning interfaces to distinguish errors.

The tests retain known hello values and add binary vectors, 32-bit wrap,
NULL/zero/result-alias contracts, and bucket counts zero/one/eight. Run
`make c-test` or `make sanitize CC=clang` from the repository root.

This is a noncryptographic table hash, not a password-storage or integrity
scheme. Neither variant offers cryptographic collision or preimage resistance.
