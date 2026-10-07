#include <stdio.h>
#include <string.h>
#include "hash.h"
static lab_status hash_bytes(const uint8_t *data, size_t length, uint32_t *result, int xor_variant) {
    if (result == NULL || (length != 0 && data == NULL)) return LAB_INVALID_ARGUMENT;
    if (lab_ranges_overlap(result, sizeof(*result), data, length)) return LAB_OVERLAP_ERROR;
    uint32_t hash = UINT32_C(5381);
    for (size_t i = 0; i < length; ++i)
        hash = xor_variant ? (hash * UINT32_C(33)) ^ data[i] : hash * UINT32_C(33) + data[i];
    *result = hash;
    return LAB_OK;
}
lab_status djb2_32_bytes(const uint8_t *data, size_t length, uint32_t *result) {
    return hash_bytes(data, length, result, 0);
}
lab_status djb2_xor_32_bytes(const uint8_t *data, size_t length, uint32_t *result) {
    return hash_bytes(data, length, result, 1);
}
lab_status djb2_bucket_bytes(const uint8_t *data, size_t length, size_t buckets, size_t *result) {
    if (buckets == 0 || result == NULL) return LAB_INVALID_ARGUMENT;
    if (lab_ranges_overlap(result, sizeof(*result), data, length)) return LAB_OVERLAP_ERROR;
    uint32_t hash;
    lab_status status = djb2_32_bytes(data, length, &hash);
    if (status != LAB_OK) return status;
    *result = (size_t)hash % buckets;
    return LAB_OK;
}
unsigned long djb2(const char *text) {
    uint32_t result = 0;
    if (text != NULL) (void)djb2_32_bytes((const uint8_t *)text, strlen(text), &result);
    return (unsigned long)result;
}
unsigned long djb2_xor(const char *text) {
    uint32_t result = 0;
    if (text != NULL) (void)djb2_xor_32_bytes((const uint8_t *)text, strlen(text), &result);
    return (unsigned long)result;
}
unsigned long bucket_for(const char *text, unsigned long bucket_count) {
    if (text == NULL || bucket_count == 0) return 0;
    return djb2(text) % bucket_count;
}
static int valid_items(const char *items[], size_t count, unsigned long buckets) {
    if (buckets == 0 || (count != 0 && items == NULL)) return 0;
    for (size_t i = 0; i < count; ++i) if (items[i] == NULL) return 0;
    return 1;
}
void print_bucket_demo(const char *items[], size_t item_count, unsigned long bucket_count) {
    if (!valid_items(items, item_count, bucket_count)) return;
    puts("=== djb2 noncryptographic bucket demo ===");
    for (size_t i = 0; i < item_count; ++i)
        printf("%-12s hash=%10lu bucket=%lu\n", items[i], djb2(items[i]), bucket_for(items[i], bucket_count));
}
void print_collision_scan(const char *items[], size_t item_count, unsigned long bucket_count) {
    if (!valid_items(items, item_count, bucket_count)) return;
    for (size_t i = 0; i < item_count; ++i)
        for (size_t j = i + 1; j < item_count; ++j)
            if (bucket_for(items[i], bucket_count) == bucket_for(items[j], bucket_count))
                printf("collision: %s / %s\n", items[i], items[j]);
}
