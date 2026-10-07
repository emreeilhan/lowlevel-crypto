#include "ct_compare.h"
static lab_status validate_compare(const uint8_t *a, const uint8_t *b, size_t length, bool *equal) {
    if (equal == NULL || (length != 0 && (a == NULL || b == NULL))) return LAB_INVALID_ARGUMENT;
    if (lab_ranges_overlap(equal, sizeof(*equal), a, length) ||
        lab_ranges_overlap(equal, sizeof(*equal), b, length)) return LAB_OVERLAP_ERROR;
    return LAB_OK;
}
lab_status compare_full_scan(const uint8_t *a, const uint8_t *b, size_t length, bool *equal) {
    lab_status status = validate_compare(a, b, length, equal);
    if (status != LAB_OK) return status;
    uint8_t difference = 0;
    for (size_t i = 0; i < length; ++i) difference |= (uint8_t)(a[i] ^ b[i]);
    *equal = difference == 0;
    return LAB_OK;
}
lab_status compare_early_exit(const uint8_t *a, const uint8_t *b, size_t length, bool *equal) {
    lab_status status = validate_compare(a, b, length, equal);
    if (status != LAB_OK) return status;
    for (size_t i = 0; i < length; ++i)
        if (a[i] != b[i]) { *equal = false; return LAB_OK; }
    *equal = true;
    return LAB_OK;
}
int insecure_compare(const unsigned char *a, const unsigned char *b, size_t n) {
    bool equal = false;
    return compare_early_exit(a, b, n, &equal) == LAB_OK && equal;
}
int constant_time_compare(const unsigned char *a, const unsigned char *b, size_t n) {
    bool equal = false;
    return compare_full_scan(a, b, n, &equal) == LAB_OK && equal;
}
