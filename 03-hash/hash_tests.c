#include <stdio.h>
#include "hash.h"

static int failures = 0;

static void assert_ulong(const char *name, unsigned long expected, unsigned long got) {
    if (expected == got) {
        printf("PASS: %s\n", name);
    } else {
        printf("FAIL: %s expected %lu got %lu\n", name, expected, got);
        failures++;
    }
}

static void assert_not_equal(const char *name, unsigned long a, unsigned long b) {
    if (a != b) {
        printf("PASS: %s\n", name);
    } else {
        printf("FAIL: %s both values were %lu\n", name, a);
        failures++;
    }
}

int main(void) {
    const char *words[] = {
        "apple",
        "banana",
        "orange",
        "grape",
        "melon",
        "lemon",
        "peach",
        "plum",
        "apricot",
        "cherry"
    };

    unsigned long h1 = djb2("hello");
    unsigned long h2 = djb2("hello");
    unsigned long h3 = djb2("Hello");

    assert_ulong("djb2 known value for hello", 261238937UL, h1);
    assert_ulong("djb2 is deterministic", h1, h2);
    assert_not_equal("case changes the hash", h1, h3);
    assert_ulong("empty string keeps seed", 5381UL, djb2(""));

    assert_ulong("xor variant known value for hello", 178056679UL, djb2_xor("hello"));
    assert_not_equal("classic and xor variants differ", djb2("hello"), djb2_xor("hello"));

    print_bucket_demo(words, sizeof(words) / sizeof(words[0]), 8);
    print_collision_scan(words, sizeof(words) / sizeof(words[0]), 8);

    if (failures == 0) {
        printf("\nAll hash tests passed.\n");
    }

    return failures;
}
