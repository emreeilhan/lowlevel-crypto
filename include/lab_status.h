#ifndef LAB_STATUS_H
#define LAB_STATUS_H
#include <stddef.h>
#include <stdint.h>
typedef enum {
    LAB_OK = 0, LAB_INVALID_ARGUMENT, LAB_CAPACITY_ERROR, LAB_EMPTY_KEY,
    LAB_OVERLAP_ERROR, LAB_LIMIT_ERROR, LAB_IO_ERROR, LAB_ALLOCATION_ERROR
} lab_status;
static inline lab_status lab_validate_mutable(const void *data, size_t capacity, size_t length) {
    if (length > capacity) return LAB_CAPACITY_ERROR;
    if (length != 0 && data == NULL) return LAB_INVALID_ARGUMENT;
    return LAB_OK;
}
/* Address distances avoid pointer ordering/subtraction across different objects. */
static inline int lab_ranges_overlap(const void *a, size_t an, const void *b, size_t bn) {
    uintptr_t aa = (uintptr_t)a, bb = (uintptr_t)b;
    if (an == 0 || bn == 0) return 0;
    return aa <= bb ? bb - aa < an : aa - bb < bn;
}
#endif
