#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include "ct_compare.h"

static int failures = 0;

static void assert_int(const char *name, int expected, int got) {
    if (expected == got) {
        printf("PASS: %s\n", name);
    } else {
        printf("FAIL: %s expected %d got %d\n", name, expected, got);
        failures++;
    }
}

/* --- correctness: both functions must agree and be right (deterministic) --- */
static void correctness_tests(void) {
    unsigned char x[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    unsigned char same[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    unsigned char diff_first[8] = {9, 2, 3, 4, 5, 6, 7, 8};
    unsigned char diff_last[8] = {1, 2, 3, 4, 5, 6, 7, 9};

    assert_int("insecure: equal buffers -> 1", 1, insecure_compare(x, same, 8));
    assert_int("constant: equal buffers -> 1", 1, constant_time_compare(x, same, 8));

    assert_int("insecure: differ at first byte -> 0", 0, insecure_compare(x, diff_first, 8));
    assert_int("constant: differ at first byte -> 0", 0, constant_time_compare(x, diff_first, 8));

    assert_int("insecure: differ at last byte -> 0", 0, insecure_compare(x, diff_last, 8));
    assert_int("constant: differ at last byte -> 0", 0, constant_time_compare(x, diff_last, 8));

    assert_int("insecure: zero length -> 1 (vacuously equal)", 1, insecure_compare(x, diff_first, 0));
    assert_int("constant: zero length -> 1 (vacuously equal)", 1, constant_time_compare(x, diff_first, 0));
}

/* --- timing demo: informational only, never asserts (timing is noisy) --- */
#define DEMO_LEN   4096
#define DEMO_ITERS 100000

static uint64_t now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ULL + (uint64_t)ts.tv_nsec;
}

/* keep results live so the optimizer cannot delete the comparisons */
static volatile int sink = 0;

static uint64_t time_compare(int (*cmp)(const unsigned char *, const unsigned char *, size_t),
                             const unsigned char *a, const unsigned char *b) {
    uint64_t start = now_ns();
    for (int i = 0; i < DEMO_ITERS; i++) {
        sink ^= cmp(a, b, DEMO_LEN);
    }
    return now_ns() - start;
}

static void timing_demo(void) {
    static unsigned char secret[DEMO_LEN];
    static unsigned char early[DEMO_LEN];   /* differs at byte 0 */
    static unsigned char late[DEMO_LEN];    /* matches everywhere */

    memset(secret, 'A', DEMO_LEN);
    memset(late, 'A', DEMO_LEN);
    memset(early, 'A', DEMO_LEN);
    early[0] = 'B';

    /* warmup */
    sink ^= insecure_compare(secret, late, DEMO_LEN);
    sink ^= constant_time_compare(secret, late, DEMO_LEN);

    uint64_t insecure_early = time_compare(insecure_compare, secret, early);
    uint64_t insecure_late  = time_compare(insecure_compare, secret, late);
    uint64_t constant_early = time_compare(constant_time_compare, secret, early);
    uint64_t constant_late  = time_compare(constant_time_compare, secret, late);

    printf("\ntiming demo (%d iterations of a %d-byte compare, informational only)\n",
           DEMO_ITERS, DEMO_LEN);
    printf("  insecure_compare  mismatch@first=%8llu ns   match-all=%8llu ns   <- gap leaks the prefix length\n",
           (unsigned long long)insecure_early, (unsigned long long)insecure_late);
    printf("  constant_time     mismatch@first=%8llu ns   match-all=%8llu ns   <- gap should stay flat\n",
           (unsigned long long)constant_early, (unsigned long long)constant_late);
    puts("Note: absolute numbers are noisy and machine-dependent; the point is the shape, not the values.");
}

int main(void) {
    correctness_tests();
    timing_demo();

    if (failures == 0) {
        printf("\nAll constant-time tests passed.\n");
    }
    return failures;
}
