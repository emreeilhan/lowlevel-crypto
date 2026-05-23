#ifndef CT_COMPARE_H
#define CT_COMPARE_H

#include <stddef.h>

/*
 * Two ways to compare n bytes for equality. Both return 1 if the buffers are
 * equal and 0 if they differ. They produce the same answer; they leak very
 * different amounts of information through their runtime.
 */

/* Early-exit compare, like a naive memcmp on a secret. Returns as soon as it
   finds a mismatching byte, so its runtime depends on how many leading bytes
   matched — a timing side channel. */
int insecure_compare(const unsigned char *a, const unsigned char *b, size_t n);

/* Constant-time compare. Always scans all n bytes with no data-dependent
   branch, so its runtime does not reveal where (or whether) the inputs
   differ. This is how secrets, MACs, and tokens should be compared. */
int constant_time_compare(const unsigned char *a, const unsigned char *b, size_t n);

#endif /* CT_COMPARE_H */
