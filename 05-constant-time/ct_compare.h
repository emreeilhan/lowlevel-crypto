#ifndef CT_COMPARE_H
#define CT_COMPARE_H
#include <stdbool.h>
#include "../include/lab_status.h"
/* Public length; output required even at zero length. See docs/api-contracts.md.
 * Full scan has no content-dependent early exit in C source. Generated machine
 * code and timing behavior require target-specific analysis; no formal guarantee. */
lab_status compare_full_scan(const uint8_t *a, const uint8_t *b, size_t length, bool *equal);
lab_status compare_early_exit(const uint8_t *a, const uint8_t *b, size_t length, bool *equal);
/* Compatibility names. Invalid positive-length NULL input returns false. */
int insecure_compare(const unsigned char *a, const unsigned char *b, size_t n);
int constant_time_compare(const unsigned char *a, const unsigned char *b, size_t n);
#endif
