#include <stdint.h>
#include <stdio.h>
#include <string.h>

void xor_single(char *text, char key);
void xor_asm_encrypt(char *text, char key);

#define BENCH_LEN 4096
#define BENCH_ROUNDS 2000

static int failures = 0;

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

static uint64_t rdtsc(void) {
    unsigned int lo;
    unsigned int hi;

    __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));
    return ((uint64_t)hi << 32) | lo;
}

static void fill_plaintext(char *buf, int len) {
    for (int i = 0; i < len; i++) {
        buf[i] = (char)('A' + (i % 26));
    }
    buf[len] = '\0';
}

static uint64_t bench_c(void) {
    char buf[BENCH_LEN + 1];
    uint64_t start = rdtsc();

    for (int i = 0; i < BENCH_ROUNDS; i++) {
        fill_plaintext(buf, BENCH_LEN);
        xor_single(buf, 42);
    }

    return rdtsc() - start;
}

static uint64_t bench_asm(void) {
    char buf[BENCH_LEN + 1];
    uint64_t start = rdtsc();

    for (int i = 0; i < BENCH_ROUNDS; i++) {
        fill_plaintext(buf, BENCH_LEN);
        xor_asm_encrypt(buf, 42);
    }

    return rdtsc() - start;
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

    uint64_t c_cycles = bench_c();
    uint64_t asm_cycles = bench_asm();

    printf("\nrdtsc comparison (%d rounds, %d bytes each)\n", BENCH_ROUNDS, BENCH_LEN);
    printf("C xor_single:       %llu cycles\n", (unsigned long long)c_cycles);
    printf("ASM xor_asm_encrypt:%llu cycles\n", (unsigned long long)asm_cycles);
    printf("Note: cycle counts are local measurements, not portable performance proof.\n");

    return failures;
}
