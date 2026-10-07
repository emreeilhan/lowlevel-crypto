#ifdef __APPLE__
#define _DARWIN_C_SOURCE 1
#endif
#define _POSIX_C_SOURCE 200809L
#include <errno.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/utsname.h>
#ifdef __APPLE__
#include <sys/sysctl.h>
#endif
#include "../01-xor/xor.h"
#include "../05-constant-time/ct_compare.h"
typedef struct { size_t length, rounds, samples, warmup; uint32_t seed; const char *experiment; } options;
static volatile uint64_t result_sink;
static int now_ns(uint64_t *result) {
    struct timespec time;
    if (getenv("LAB_BENCH_FAIL_TIMER") != NULL || clock_gettime(CLOCK_MONOTONIC, &time) != 0) return 0;
    *result = (uint64_t)time.tv_sec * UINT64_C(1000000000) + (uint64_t)time.tv_nsec;
    return 1;
}
static int translated(void) {
#ifdef __APPLE__
    int value = 0; size_t size = sizeof(value);
    if (sysctlbyname("sysctl.proc_translated", &value, &size, NULL, 0) == 0) return value != 0;
    if (errno != ENOENT) return -1;
#endif
    return 0;
}
static int number(const char *text, uint64_t max, uint64_t *result) {
    if (*text == '\0') return 0;
    for (const char *p = text; *p != '\0'; ++p) if (*p < '0' || *p > '9') return 0;
    errno = 0; char *end;
    unsigned long long value = strtoull(text, &end, 10);
    if (errno != 0 || *end != '\0' || value > max) return 0;
    *result = (uint64_t)value; return 1;
}
static int parse(int argc, char **argv, options *o) {
    *o = (options){64, 1000, 31, 3, UINT32_C(20261007), "compare"};
    for (int i = 1; i < argc; i += 2) {
        if (i + 1 == argc) return 0;
        const char *key = argv[i], *value = argv[i + 1];
        if (strcmp(key, "--experiment") == 0) { o->experiment = value; continue; }
        uint64_t parsed;
        if (strcmp(key, "--seed") == 0) {
            if (!number(value, UINT32_MAX, &parsed)) return 0;
            o->seed = (uint32_t)parsed; continue;
        }
        size_t *field; uint64_t max;
        if (strcmp(key, "--length") == 0) { field = &o->length; max = 1048576; }
        else if (strcmp(key, "--rounds") == 0) { field = &o->rounds; max = 1000000; }
        else if (strcmp(key, "--samples") == 0) { field = &o->samples; max = 10000; }
        else if (strcmp(key, "--warmup") == 0) { field = &o->warmup; max = 1000; }
        else return 0;
        if (!number(value, max, &parsed) || parsed == 0) return 0;
        *field = (size_t)parsed;
    }
    return strcmp(o->experiment, "compare") == 0 || strcmp(o->experiment, "xor-c") == 0 || strcmp(o->experiment, "xor-asm") == 0;
}
static uint32_t random_next(uint32_t *state) {
    *state = *state * UINT32_C(1664525) + UINT32_C(1013904223); return *state;
}
static uint64_t checksum(const uint8_t *data, size_t length) {
    uint64_t sum = 0; for (size_t i = 0; i < length; ++i) sum += data[i]; return sum;
}
typedef lab_status (*compare_fn)(const uint8_t *, const uint8_t *, size_t, bool *);
typedef lab_status (*xor_fn)(uint8_t *, size_t, size_t, uint8_t);
static int time_compare(compare_fn fn, const uint8_t *a, const uint8_t *b, const options *o, uint64_t *elapsed) {
    uint64_t start, stop;
    if (!now_ns(&start)) return 0;
    for (size_t r = 0; r < o->rounds; ++r) {
        bool equal;
        if (fn(a, b, o->length, &equal) != LAB_OK) return 0;
        result_sink += (uint64_t)equal;
    }
    if (!now_ns(&stop) || stop < start) return 0;
    *elapsed = stop - start; return 1;
}
static int time_xor(xor_fn fn, uint8_t *data, const options *o, uint64_t *elapsed) {
    uint64_t start, stop;
    if (!now_ns(&start)) return 0;
    for (size_t r = 0; r < o->rounds; ++r)
        if (fn(data, o->length, o->length, 42) != LAB_OK) return 0;
    if (!now_ns(&stop) || stop < start) return 0;
    result_sink += checksum(data, o->length);
    *elapsed = stop - start; return 1;
}
static int emit(const options *o, const char *condition, size_t sample, size_t position, const char *algorithm, uint64_t elapsed) {
    return printf("%s,%s,%zu,%zu,%s,%zu,%zu,%" PRIu32 ",%" PRIu64 ",%" PRIu64 "\n",
                  o->experiment, condition, sample, position, algorithm, o->length, o->rounds, o->seed, elapsed, result_sink) >= 0;
}
static int print_context(void) {
    struct utsname system;
    if (uname(&system) != 0) return 1;
#if defined(__x86_64__)
    const char *arch = "x86_64";
#elif defined(__aarch64__) || defined(__arm64__)
    const char *arch = "arm64";
#else
    const char *arch = "unknown";
#endif
    int translation = translated();
    const char *execution = translation == 0 ? "native" : translation == 1 ? "translated" : "unknown";
    if (printf("{\"compiled_arch\":\"%s\",\"runtime_machine\":\"%s\",\"execution\":\"%s\"}\n", arch, system.machine, execution) < 0 || fflush(stdout) != 0) return 1;
    return 0;
}
int main(int argc, char **argv) {
    if (argc == 2 && strcmp(argv[1], "--context") == 0) return print_context();
    options o;
    if (!parse(argc, argv, &o)) {
        fputs("Invalid options: --experiment compare|xor-c|xor-asm --length 1..1048576 --rounds 1..1000000 --samples 1..10000 --warmup 1..1000 --seed uint32\n", stderr); return 2;
    }
    if (strcmp(o.experiment, "xor-asm") == 0) {
#ifndef LAB_HAS_X86_ASM
        fputs("ASM benchmark not built. Native x86-64 correctness is required first.\n", stderr); return 2;
#else
        if (translated() != 0) { fputs("ASM performance requires native x86-64, not translated/unknown execution.\n", stderr); return 2; }
#endif
    }
#ifndef LAB_HAS_X86_ASM
    (void)translated; /* Used by the x86-64 native performance target only. */
#endif
    uint8_t *a = malloc(o.length), *b = malloc(o.length);
    if (a == NULL || b == NULL) { free(a); free(b); fputs("Allocation failed\n", stderr); return 1; }
    uint32_t state = o.seed;
    for (size_t i = 0; i < o.length; ++i) a[i] = (uint8_t)(random_next(&state) >> 24);
    if (puts("experiment,condition,sample,order,algorithm,length,rounds,seed,elapsed_ns,result_sink") == EOF) goto failure;
    if (strcmp(o.experiment, "compare") == 0) {
        const char *conditions[] = {"equal", "mismatch-first", "mismatch-middle", "mismatch-last"};
        compare_fn functions[] = {compare_early_exit, compare_full_scan};
        const char *names[] = {"early-exit", "full-scan"};
        for (size_t c = 0; c < 4; ++c) {
            memcpy(b, a, o.length);
            if (c != 0) b[c == 1 ? 0 : c == 2 ? o.length / 2 : o.length - 1] ^= 0xff;
            for (size_t s = 0; s < o.warmup + o.samples; ++s)
                for (size_t order = 0; order < 2; ++order) {
                    size_t alg = (s + order) % 2;
                    uint64_t elapsed;
                    if (!time_compare(functions[alg], a, b, &o, &elapsed)) goto failure;
                    if (s >= o.warmup && !emit(&o, conditions[c], s - o.warmup, order, names[alg], elapsed)) goto failure;
                }
        }
    } else {
        xor_fn functions[] = {xor_apply, xor_apply};
        const char *conditions[] = {"zeros", "ff"}, *names[] = {"c", "c"};
#ifdef LAB_HAS_X86_ASM
        if (strcmp(o.experiment, "xor-asm") == 0) {
            functions[1] = xor_apply_asm; conditions[0] = "seeded"; conditions[1] = "seeded"; names[1] = "asm";
        }
#endif
        for (size_t s = 0; s < o.warmup + o.samples; ++s)
            for (size_t order = 0; order < 2; ++order) {
                size_t alg = (s + order) % 2;
                if (strcmp(o.experiment, "xor-asm") == 0) memcpy(b, a, o.length);
                else memset(b, alg == 0 ? 0 : 255, o.length);
                uint64_t elapsed;
                if (!time_xor(functions[alg], b, &o, &elapsed)) goto failure;
                if (s >= o.warmup && !emit(&o, conditions[alg], s - o.warmup, order, names[alg], elapsed)) goto failure;
            }
    }
    free(a); free(b);
    if (fflush(stdout) != 0) { fputs("CSV write failed\n", stderr); return 1; }
    return 0;
failure:
    free(a); free(b); fputs("Timer, API or CSV output failed\n", stderr); return 1;
}
