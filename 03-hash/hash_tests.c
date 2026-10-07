#include "hash.h"
#include "../include/lab_test.h"
int main(void) {
    uint32_t hash = 99;
    const uint8_t bytes[] = {0, 0xff, 0x2a, 0};
    CHECK("djb2 binary vector", djb2_32_bytes(bytes, sizeof(bytes), &hash) == LAB_OK && hash == UINT32_C(2086752686));
    CHECK("xor binary vector", djb2_xor_32_bytes(bytes, sizeof(bytes), &hash) == LAB_OK && hash == UINT32_C(2086599632));
    CHECK("hello classic", djb2("hello") == 261238937UL);
    CHECK("hello XOR", djb2_xor("hello") == 178056679UL);
    CHECK("zero input NULL", djb2_32_bytes(NULL, 0, &hash) == LAB_OK && hash == 5381);
    CHECK("zero XOR NULL", djb2_xor_32_bytes(NULL, 0, &hash) == LAB_OK && hash == 5381);
    hash = 99;
    CHECK("NULL positive", djb2_32_bytes(NULL, 1, &hash) == LAB_INVALID_ARGUMENT && hash == 99);
    CHECK("NULL XOR positive", djb2_xor_32_bytes(NULL, 1, &hash) == LAB_INVALID_ARGUMENT && hash == 99);
    CHECK("NULL output zero", djb2_32_bytes(NULL, 0, NULL) == LAB_INVALID_ARGUMENT);
    CHECK("NULL output positive", djb2_xor_32_bytes(bytes, sizeof(bytes), NULL) == LAB_INVALID_ARGUMENT);
    size_t bucket = 99;
    CHECK("zero bucket error", djb2_bucket_bytes(bytes, sizeof(bytes), 0, &bucket) == LAB_INVALID_ARGUMENT && bucket == 99);
    CHECK("one bucket valid zero", djb2_bucket_bytes(bytes, sizeof(bytes), 1, &bucket) == LAB_OK && bucket == 0);
    CHECK("normal bucket", djb2_bucket_bytes((const uint8_t *)"hello", 5, 8, &bucket) == LAB_OK && bucket == 1);
    CHECK("bucket zero length", djb2_bucket_bytes(NULL, 0, 8, &bucket) == LAB_OK && bucket == 5);
    bucket = 99;
    CHECK("bucket NULL input", djb2_bucket_bytes(NULL, 1, 8, &bucket) == LAB_INVALID_ARGUMENT && bucket == 99);
    CHECK("bucket NULL output", djb2_bucket_bytes(bytes, sizeof(bytes), 8, NULL) == LAB_INVALID_ARGUMENT);
    CHECK("legacy NULL classic", djb2(NULL) == 0);
    CHECK("legacy NULL XOR", djb2_xor(NULL) == 0);
    CHECK("legacy zero bucket", bucket_for("hello", 0) == 0);
    CHECK("legacy NULL bucket", bucket_for(NULL, 8) == 0);
    uint8_t all[256]; for (size_t i = 0; i < sizeof(all); ++i) all[i] = (uint8_t)i;
    CHECK("32-bit wrap across all byte values", djb2_32_bytes(all, sizeof(all), &hash) == LAB_OK && hash == UINT32_C(2589693061));
    uint32_t aliased = 99;
    CHECK("hash output overlaps input", djb2_32_bytes((const uint8_t *)&aliased, sizeof(aliased), &aliased) == LAB_OVERLAP_ERROR && aliased == 99);
    size_t aliased_bucket = 99;
    CHECK("bucket output overlaps input", djb2_bucket_bytes((const uint8_t *)&aliased_bucket, sizeof(aliased_bucket), 8, &aliased_bucket) == LAB_OVERLAP_ERROR && aliased_bucket == 99);
    const char *bad[] = {"ok", NULL};
    print_bucket_demo(NULL, 1, 8); print_collision_scan(NULL, 1, 8);
    print_bucket_demo(bad, 2, 8); print_collision_scan(bad, 2, 8);
    print_bucket_demo(bad, 2, 0);
    return lab_test_finish("hash");
}
