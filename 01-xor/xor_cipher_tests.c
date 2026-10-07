#include "xor.h"
#include "../include/lab_test.h"
int main(void) {
    uint8_t storage[] = {0xa5, 0x00, 0x2a, 0xff, 0x00, 0x5a};
    const uint8_t original[] = {0xa5, 0x00, 0x2a, 0xff, 0x00, 0x5a};
    const uint8_t expected[] = {0xa5, 0x2a, 0x00, 0xd5, 0x2a, 0x5a};
    CHECK("binary encode", xor_apply(storage + 1, 4, 4, 0x2a) == LAB_OK);
    CHECK("known bytes and guards", memcmp(storage, expected, sizeof(storage)) == 0);
    CHECK("binary decode through embedded NUL", xor_apply(storage + 1, 4, 4, 0x2a) == LAB_OK);
    CHECK("roundtrip and guards", memcmp(storage, original, sizeof(storage)) == 0);
    CHECK("zero NULL", xor_apply(NULL, 0, 0, 12) == LAB_OK);
    CHECK("positive NULL", xor_apply(NULL, 1, 1, 12) == LAB_INVALID_ARGUMENT);
    CHECK("capacity rejection", xor_apply(storage, 2, 3, 12) == LAB_CAPACITY_ERROR);
    CHECK("error unchanged", memcmp(storage, original, sizeof(storage)) == 0);
    uint8_t key[] = {0x00, 0xff, 0x2a};
    CHECK("repeat", xor_repeat(storage + 1, 4, 4, key, sizeof(key)) == LAB_OK);
    CHECK("repeat known vector", storage[1] == 0 && storage[2] == 0xd5 && storage[3] == 0xd5 && storage[4] == 0);
    CHECK("repeat inverse", xor_repeat(storage + 1, 4, 4, key, sizeof(key)) == LAB_OK);
    CHECK("repeat restored", memcmp(storage, original, sizeof(storage)) == 0);
    CHECK("empty key error", xor_repeat(storage, sizeof(storage), sizeof(storage), key, 0) == LAB_EMPTY_KEY);
    CHECK("empty key at zero data", xor_repeat(NULL, 0, 0, NULL, 0) == LAB_EMPTY_KEY);
    CHECK("NULL key", xor_repeat(storage, sizeof(storage), 4, NULL, 1) == LAB_INVALID_ARGUMENT);
    CHECK("NULL data", xor_repeat(NULL, 4, 4, key, sizeof(key)) == LAB_INVALID_ARGUMENT);
    CHECK("repeat capacity", xor_repeat(storage, 2, 3, key, sizeof(key)) == LAB_CAPACITY_ERROR);
    CHECK("key overlap", xor_repeat(storage, sizeof(storage), sizeof(storage), storage + 1, 2) == LAB_OVERLAP_ERROR);
    CHECK("overlap reverse order", xor_repeat(storage + 1, 4, 4, storage, 2) == LAB_OVERLAP_ERROR);
    CHECK("errors unchanged", memcmp(storage, original, sizeof(storage)) == 0);
    CHECK("zero repeat valid", xor_repeat(NULL, 0, 0, key, sizeof(key)) == LAB_OK);
    uint8_t all[256], copy[256];
    for (size_t i = 0; i < sizeof(all); ++i) all[i] = (uint8_t)i;
    memcpy(copy, all, sizeof(all));
    int vectors_ok = 1;
    for (unsigned k = 0; k < 256; ++k) {
        if (xor_apply(all, sizeof(all), sizeof(all), (uint8_t)k) != LAB_OK) vectors_ok = 0;
        for (size_t i = 0; i < sizeof(all); ++i)
            if (all[i] != (uint8_t)(copy[i] ^ (uint8_t)k)) vectors_ok = 0;
        if (xor_apply(all, sizeof(all), sizeof(all), (uint8_t)k) != LAB_OK || memcmp(all, copy, sizeof(all)) != 0) vectors_ok = 0;
    }
    CHECK("all 256 byte values and keys", vectors_ok);
    char text[] = "Hello";
    xor_single(text, 10); xor_single(text, 10);
    CHECK("text wrapper", strcmp(text, "Hello") == 0);
    xor_multi(text, "AB", 2); xor_multi(text, "AB", 2);
    CHECK("multi wrapper", strcmp(text, "Hello") == 0);
    xor_multi(text, "", 0); xor_multi(text, NULL, 1); xor_multi(text, "AB", -1);
    xor_single(NULL, 1); xor_multi(NULL, "A", 1);
    CHECK("legacy bad key unchanged", strcmp(text, "Hello") == 0);
    CHECK("known plaintext key", known_plaintext_attack('H', (char)('H' ^ 10)) == 10);
    char attack[] = "theenemyneedstobeseeneverywhere";
    xor_single(attack, 42);
    CHECK("frequency sample", frequency_attack(attack, (int)(sizeof(attack) - 1)) == 42);
    CHECK("frequency NULL", frequency_attack(NULL, 2) == 0);
    CHECK("frequency negative", frequency_attack(attack, -1) == 0);
    volatile char output[4] = {1, 2, 3, 4};
    xor_constant_time("abcd", "", 0, output, 4);
    CHECK("legacy empty key no divide by zero", output[0] == 1 && output[3] == 4);
    xor_constant_time(NULL, "A", 1, output, 4);
    xor_constant_time("abcd", "A", 1, output, -1);
    xor_constant_time(NULL, "A", 1, NULL, 0);
    xor_constant_time("abcd", "A", 1, NULL, 4);
    CHECK("legacy bad inputs unchanged", output[0] == 1 && output[3] == 4);
    xor_constant_time("abcd", "A", 1, output, 4);
    CHECK("legacy explicit length", (uint8_t)output[0] == ((uint8_t)'a' ^ (uint8_t)'A') && (uint8_t)output[3] == ((uint8_t)'d' ^ (uint8_t)'A'));
    char partial[] = "abcde";
    xor_constant_time(partial, "X", 1, partial + 1, 4);
    CHECK("legacy partial overlap rejected", strcmp(partial, "abcde") == 0);
    xor_constant_time(partial, partial, 1, partial, 4);
    CHECK("legacy key overlap rejected", strcmp(partial, "abcde") == 0);
    return lab_test_finish("xor");
}
