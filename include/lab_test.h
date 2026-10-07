#ifndef LAB_TEST_H
#define LAB_TEST_H
#include <stdio.h>
#include <string.h>
static unsigned lab_checks, lab_failures;
#define CHECK(name, expression) do { \
    ++lab_checks; \
    if (!(expression)) { ++lab_failures; fprintf(stderr, "FAIL: %s (%s:%d)\n", name, __FILE__, __LINE__); } \
} while (0)
static int lab_test_finish(const char *suite) {
    printf("%s: %u checks, %u failures\n", suite, lab_checks, lab_failures);
    return lab_failures == 0 ? 0 : 1;
}
#endif
