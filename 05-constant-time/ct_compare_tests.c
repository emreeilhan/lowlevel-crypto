#include "ct_compare.h"
#include "../include/lab_test.h"
int main(void) {
    uint8_t a[256], b[256];
    for (size_t i = 0; i < sizeof(a); ++i) a[i] = (uint8_t)i;
    memcpy(b, a, sizeof(a));
    bool equal = false;
    CHECK("equal all bytes", compare_full_scan(a, b, sizeof(a), &equal) == LAB_OK && equal);
    CHECK("early equal all bytes", compare_early_exit(a, b, sizeof(a), &equal) == LAB_OK && equal);
    size_t offsets[] = {0, 128, 255};
    for (size_t i = 0; i < sizeof(offsets)/sizeof(offsets[0]); ++i) {
        b[offsets[i]] ^= 0xff;
        CHECK("first/middle/last difference full", compare_full_scan(a, b, sizeof(a), &equal) == LAB_OK && !equal);
        CHECK("first/middle/last difference early", compare_early_exit(a, b, sizeof(a), &equal) == LAB_OK && !equal);
        b[offsets[i]] ^= 0xff;
    }
    CHECK("zero NULL true", compare_full_scan(NULL, NULL, 0, &equal) == LAB_OK && equal);
    CHECK("zero NULL early true", compare_early_exit(NULL, NULL, 0, &equal) == LAB_OK && equal);
    CHECK("NULL output zero", compare_full_scan(NULL, NULL, 0, NULL) == LAB_INVALID_ARGUMENT);
    CHECK("NULL output positive", compare_full_scan(a, b, sizeof(a), NULL) == LAB_INVALID_ARGUMENT);
    CHECK("NULL first input", compare_full_scan(NULL, b, sizeof(a), &equal) == LAB_INVALID_ARGUMENT && equal);
    CHECK("NULL second input", compare_full_scan(a, NULL, sizeof(a), &equal) == LAB_INVALID_ARGUMENT && equal);
    CHECK("early NULL first", compare_early_exit(NULL, b, 1, &equal) == LAB_INVALID_ARGUMENT && equal);
    CHECK("early NULL second", compare_early_exit(a, NULL, 1, &equal) == LAB_INVALID_ARGUMENT && equal);
    CHECK("early NULL output zero", compare_early_exit(NULL, NULL, 0, NULL) == LAB_INVALID_ARGUMENT);
    CHECK("early NULL output positive", compare_early_exit(a, b, 1, NULL) == LAB_INVALID_ARGUMENT);
    bool overlap = true;
    CHECK("output alias input", compare_full_scan((const uint8_t *)&overlap, b, sizeof(overlap), &overlap) == LAB_OVERLAP_ERROR && overlap);
    CHECK("output alias second", compare_full_scan(a, (const uint8_t *)&overlap, sizeof(overlap), &overlap) == LAB_OVERLAP_ERROR && overlap);
    CHECK("legacy equal", constant_time_compare(a, b, sizeof(a)) == 1 && insecure_compare(a, b, sizeof(a)) == 1);
    CHECK("legacy NULL positive", constant_time_compare(NULL, b, 1) == 0 && insecure_compare(a, NULL, 1) == 0);
    CHECK("legacy zero NULL", constant_time_compare(NULL, NULL, 0) == 1 && insecure_compare(NULL, NULL, 0) == 1);
    return lab_test_finish("compare");
}
