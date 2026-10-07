#ifndef HASH_H
#define HASH_H
#include "../include/lab_status.h"
lab_status djb2_32_bytes(const uint8_t *data, size_t length, uint32_t *result);
lab_status djb2_xor_32_bytes(const uint8_t *data, size_t length, uint32_t *result);
lab_status djb2_bucket_bytes(const uint8_t *data, size_t length, size_t buckets, size_t *result);
unsigned long djb2(const char *text);
unsigned long djb2_xor(const char *text);
unsigned long bucket_for(const char *text, unsigned long bucket_count);
void print_bucket_demo(const char *items[], size_t item_count, unsigned long bucket_count);
void print_collision_scan(const char *items[], size_t item_count, unsigned long bucket_count);
#endif
