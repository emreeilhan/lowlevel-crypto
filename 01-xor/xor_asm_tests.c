#include <stdint.h>
#include <stdio.h>
#include <string.h>

void xor_single(char *text, char key);
void xor_asm_encrypt(char *text, char key);

#define BENCH_LEN 4096
#define BENCH_ROUNDS 5000
#define BENCH_SAMPLES 101

static int failures = 0;
static volatile uint64_t checksum_sink = 0;

typedef void (*xor_fn)(char *text, char key);
typedef void (*xor_len_fn)(char *text, char key, int len);

typedef struct {
    uint64_t min;
    uint64_t median;
    uint64_t avg;
    uint64_t max;
} BenchStats;

static void assert_equal(const char *name, const char *expected, const char *got) {
    if (strcmp(expected, got) == 0) {
        printf("PASS: %s\n", name);
    } else {
        printf("FAIL: %s\n", name);
        printf("  Expected: %s\n", expected);
        printf("  Got:      %s\n", got);
        failures++;
    }
}

static uint64_t tsc_start(void) {
    unsigned int lo;
    unsigned int hi;

    __asm__ volatile("lfence\n\trdtsc" : "=a"(lo), "=d"(hi) :: "memory");
    return ((uint64_t)hi << 32) | lo;
}

static uint64_t tsc_end(void) {
    unsigned int lo;
    unsigned int hi;
    unsigned int aux;

    __asm__ volatile("rdtscp\n\tlfence" : "=a"(lo), "=d"(hi), "=c"(aux) :: "memory");
    return ((uint64_t)hi << 32) | lo;
}

static void fill_plaintext(char *buf, int len) {
    for (int i = 0; i < len; i++) {
        buf[i] = (char)('A' + (i % 26));
    }
    buf[len] = '\0';
}

__attribute__((noinline))
static void xor_c_fixed_len(char *text, char key, int len) {
    for (int i = 0; i < len; i++) {
        text[i] = (char)(text[i] ^ key);
    }
}

static uint64_t checksum(const char *buf, int len) {
    uint64_t sum = 0;

    for (int i = 0; i < len; i++) {
        sum += (unsigned char)buf[i];
    }

    return sum;
}

static uint64_t measure_overhead(void) {
    uint64_t start = tsc_start();
    return tsc_end() - start;
}

static uint64_t bench_one(xor_fn fn) {
    char buf[BENCH_LEN + 1];
    fill_plaintext(buf, BENCH_LEN);

    uint64_t start = tsc_start();

    for (int i = 0; i < BENCH_ROUNDS; i++) {
        fn(buf, 42);
    }

    uint64_t elapsed = tsc_end() - start;
    checksum_sink += checksum(buf, BENCH_LEN);

    return elapsed;
}

static void sort_samples(uint64_t *samples, int count) {
    for (int i = 1; i < count; i++) {
        uint64_t value = samples[i];
        int j = i - 1;

        while (j >= 0 && samples[j] > value) {
            samples[j + 1] = samples[j];
            j--;
        }

        samples[j + 1] = value;
    }
}

static BenchStats summarize(uint64_t *samples, int count) {
    uint64_t total = 0;

    for (int i = 0; i < count; i++) {
        total += samples[i];
    }

    sort_samples(samples, count);

    BenchStats stats = {
        .min = samples[0],
        .median = samples[count / 2],
        .avg = total / (uint64_t)count,
        .max = samples[count - 1],
    };

    return stats;
}

static uint64_t bench_one_len(xor_len_fn fn) {
    char buf[BENCH_LEN + 1];
    fill_plaintext(buf, BENCH_LEN);

    uint64_t start = tsc_start();

    for (int i = 0; i < BENCH_ROUNDS; i++) {
        fn(buf, 42, BENCH_LEN);
    }

    uint64_t elapsed = tsc_end() - start;
    checksum_sink += checksum(buf, BENCH_LEN);

    return elapsed;
}

static BenchStats bench_many(xor_fn fn) {
    uint64_t samples[BENCH_SAMPLES];

    for (int i = 0; i < 20; i++) {
        (void)bench_one(fn);
    }

    for (int i = 0; i < BENCH_SAMPLES; i++) {
        samples[i] = bench_one(fn);
    }

    return summarize(samples, BENCH_SAMPLES);
}

static BenchStats bench_many_len(xor_len_fn fn) {
    uint64_t samples[BENCH_SAMPLES];

    for (int i = 0; i < 20; i++) {
        (void)bench_one_len(fn);
    }

    for (int i = 0; i < BENCH_SAMPLES; i++) {
        samples[i] = bench_one_len(fn);
    }

    return summarize(samples, BENCH_SAMPLES);
}

static BenchStats measure_overhead_stats(void) {
    uint64_t samples[BENCH_SAMPLES];

    for (int i = 0; i < BENCH_SAMPLES; i++) {
        samples[i] = measure_overhead();
    }

    return summarize(samples, BENCH_SAMPLES);
}

static void print_stats(const char *label, BenchStats stats) {
    printf("%-20s median=%10llu min=%10llu avg=%10llu max=%10llu cycles\n",
           label,
           (unsigned long long)stats.median,
           (unsigned long long)stats.min,
           (unsigned long long)stats.avg,
           (unsigned long long)stats.max);
}

int main(void) {
    char c_msg[] = "Hello, assembly";
    char asm_msg[] = "Hello, assembly";

    xor_single(c_msg, 42);
    xor_asm_encrypt(asm_msg, 42);
    assert_equal("ASM output matches C output", c_msg, asm_msg);

    xor_asm_encrypt(asm_msg, 42);
    assert_equal("ASM round-trip returns plaintext", "Hello, assembly", asm_msg);

    char empty[] = "";
    xor_asm_encrypt(empty, 42);
    assert_equal("ASM handles empty string", "", empty);

    BenchStats overhead_stats = measure_overhead_stats();
    BenchStats c_public_stats = bench_many(xor_single);
    BenchStats c_fixed_stats = bench_many_len(xor_c_fixed_len);
    BenchStats asm_stats = bench_many(xor_asm_encrypt);
    double public_ratio = c_public_stats.median == 0
        ? 0.0
        : (double)asm_stats.median / (double)c_public_stats.median;
    double fixed_ratio = c_fixed_stats.median == 0
        ? 0.0
        : (double)asm_stats.median / (double)c_fixed_stats.median;

    printf("\nrdtsc comparison (%d samples, %d rounds/sample, %d bytes)\n",
           BENCH_SAMPLES, BENCH_ROUNDS, BENCH_LEN);
    print_stats("TSC read overhead", overhead_stats);
    print_stats("C xor_single", c_public_stats);
    print_stats("C fixed-len loop", c_fixed_stats);
    print_stats("ASM xor_asm_encrypt", asm_stats);
    printf("ASM/public-C median ratio: %.2fx\n", public_ratio);
    printf("ASM/fixed-C median ratio:  %.2fx\n", fixed_ratio);
    printf("checksum sink: %llu\n", (unsigned long long)checksum_sink);
    printf("Note: public C includes strlen(); ASM scans to the NUL byte in its own loop.\n");
    printf("Note: fixed-len C is included only as a compiler baseline for the inner XOR loop.\n");
    printf("Note: cycle counts are local measurements, not portable performance proof.\n");

    return failures;
}
