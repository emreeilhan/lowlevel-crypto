#ifndef HASH_H
#define HASH_H

#include <stddef.h>

unsigned long djb2(const char *text);
unsigned long djb2_xor(const char *text);
unsigned long bucket_for(const char *text, unsigned long bucket_count);
void print_bucket_demo(const char *items[], size_t item_count, unsigned long bucket_count);
void print_collision_scan(const char *items[], size_t item_count, unsigned long bucket_count);

#endif
