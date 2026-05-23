#include "ct_compare.h"

/*
 * Early-exit compare. This is the shape of a naive secret/token check:
 *
 *     if (memcmp(provided_token, real_token, n) == 0) grant_access();
 *
 * It returns the moment two bytes differ, so a token that shares a longer
 * prefix with the real one takes measurably longer to reject. An attacker who
 * can time the response recovers the secret one byte at a time instead of
 * brute-forcing the whole thing.
 */
int insecure_compare(const unsigned char *a, const unsigned char *b, size_t n) {
    for (size_t i = 0; i < n; i++) {
        if (a[i] != b[i]) {
            return 0;   /* the early exit is the leak */
        }
    }
    return 1;
}

/*
 * Constant-time compare. Fold every byte difference into one accumulator and
 * only decide at the end. The loop always runs all n iterations and never
 * branches on the data, so the runtime is independent of where the inputs
 * differ.
 */
int constant_time_compare(const unsigned char *a, const unsigned char *b, size_t n) {
    unsigned char diff = 0;

    for (size_t i = 0; i < n; i++) {
        diff |= (unsigned char)(a[i] ^ b[i]);
    }

    /* Branchless fold: 1 when diff == 0, else 0.
       diff is 0..255. (x - 1) >> 8 is 0xFF..FF only when x == 0. */
    unsigned int x = diff;
    return (int)(1u & ((x - 1u) >> 8));
}
