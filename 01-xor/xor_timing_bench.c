#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void xor_constant_time(const char *plaintext, const char *key,
                        int key_len, volatile char *out, int len);

#define INPUT_LEN 4096
#define INNER_RUNS 2000
#define SAMPLES 200

static uint64_t now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ULL + (uint64_t)ts.tv_nsec;
}

static uint64_t bench_one(const char *input, const char *key,
                          volatile char *out, int len) {
    uint64_t start = now_ns();
    for (int i = 0; i < INNER_RUNS; i++) {
        xor_constant_time(input, key, 3, out, len);
    }
    return now_ns() - start;
}

static void fill_input(char *buf, char value) {
    for (int i = 0; i < INPUT_LEN; i++) {
        buf[i] = value;
    }
}

static void report(const char *label, const uint64_t *samples) {
    uint64_t min = samples[0];
    uint64_t max = samples[0];
    long double total = 0.0L;

    for (int i = 0; i < SAMPLES; i++) {
        if (samples[i] < min) {
            min = samples[i];
        }
        if (samples[i] > max) {
            max = samples[i];
        }
        total += (long double)samples[i];
    }

    printf("%s: avg=%.2Lf ns min=%llu ns max=%llu ns\n",
           label,
           total / SAMPLES,
           (unsigned long long)min,
           (unsigned long long)max);
}

int main(void) {
    char zeros[INPUT_LEN];
    char ones[INPUT_LEN];
    volatile char out[INPUT_LEN];
    const char key[] = "KEY";
    uint64_t zero_samples[SAMPLES];
    uint64_t one_samples[SAMPLES];

    fill_input(zeros, 0x00);
    fill_input(ones, (char)0xff);
    memset((void *)out, 0, sizeof(out));

    for (int i = 0; i < 20; i++) {
        bench_one(zeros, key, out, INPUT_LEN);
        bench_one(ones, key, out, INPUT_LEN);
    }

    for (int i = 0; i < SAMPLES; i++) {
        zero_samples[i] = bench_one(zeros, key, out, INPUT_LEN);
        one_samples[i] = bench_one(ones, key, out, INPUT_LEN);
    }

    report("all-zero input", zero_samples);
    report("all-0xff input", one_samples);
    puts("Note: this benchmark is a smoke test for obvious timing drift, not a proof of constant-time behavior.");

    return 0;
}
