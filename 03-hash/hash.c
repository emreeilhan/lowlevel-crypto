#include <stdio.h>
#include "hash.h"

#define DJB2_START 5381UL
#define MASK32 0xffffffffUL

unsigned long djb2(const char *text) {
    unsigned long hash = DJB2_START;

    while (*text != '\0') {
        unsigned char c = (unsigned char)*text;
        hash = ((hash * 33UL) + c) & MASK32;
        text++;
    }

    return hash;
}

unsigned long djb2_xor(const char *text) {
    unsigned long hash = DJB2_START;

    while (*text != '\0') {
        unsigned char c = (unsigned char)*text;
        hash = ((hash * 33UL) ^ c) & MASK32;
        text++;
    }

    return hash;
}

unsigned long bucket_for(const char *text, unsigned long bucket_count) {
    if (bucket_count == 0) {
        return 0;
    }

    return djb2(text) % bucket_count;
}

void print_bucket_demo(const char *items[], size_t item_count, unsigned long bucket_count) {
    printf("=== djb2 bucket demo ===\n");

    for (size_t i = 0; i < item_count; i++) {
        unsigned long hash = djb2(items[i]);
        unsigned long bucket = bucket_for(items[i], bucket_count);
        printf("%-12s hash=%10lu bucket=%lu\n", items[i], hash, bucket);
    }
}

void print_collision_scan(const char *items[], size_t item_count, unsigned long bucket_count) {
    printf("\n=== bucket collision scan ===\n");

    for (size_t i = 0; i < item_count; i++) {
        for (size_t j = i + 1; j < item_count; j++) {
            unsigned long a = bucket_for(items[i], bucket_count);
            unsigned long b = bucket_for(items[j], bucket_count);

            if (a == b) {
                printf("collision: %-12s and %-12s both land in bucket %lu\n", items[i], items[j], a);
            }
        }
    }
}
