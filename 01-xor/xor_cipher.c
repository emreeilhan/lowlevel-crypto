#include <string.h>
#include "xor.h"
lab_status xor_apply(uint8_t *data, size_t capacity, size_t length, uint8_t key) {
    lab_status status = lab_validate_mutable(data, capacity, length);
    if (status != LAB_OK) return status;
    for (size_t i = 0; i < length; ++i) data[i] ^= key;
    return LAB_OK;
}
lab_status xor_repeat(uint8_t *data, size_t capacity, size_t length,
                      const uint8_t *key, size_t key_length) {
    lab_status status = lab_validate_mutable(data, capacity, length);
    if (status != LAB_OK) return status;
    if (key_length == 0) return LAB_EMPTY_KEY;
    if (key == NULL) return LAB_INVALID_ARGUMENT;
    if (lab_ranges_overlap(data, length, key, key_length)) return LAB_OVERLAP_ERROR;
    for (size_t i = 0; i < length; ++i) data[i] ^= key[i % key_length];
    return LAB_OK;
}
void xor_single(char *text, char key) {
    if (text != NULL) {
        size_t length = strlen(text);
        (void)xor_apply((uint8_t *)text, length, length, (uint8_t)key);
    }
}
void xor_multi(char *text, const char *key, int key_len) {
    if (text != NULL && key != NULL && key_len > 0) {
        size_t length = strlen(text);
        (void)xor_repeat((uint8_t *)text, length, length,
                         (const uint8_t *)key, (size_t)key_len);
    }
}
char frequency_attack(const char *ciphertext, int len) {
    size_t frequencies[256] = {0};
    uint8_t most_frequent = 0;
    if (len <= 0 || ciphertext == NULL) return 0;
    for (size_t i = 0; i < (size_t)len; ++i) ++frequencies[(uint8_t)ciphertext[i]];
    for (size_t i = 1; i < 256; ++i)
        if (frequencies[i] > frequencies[most_frequent]) most_frequent = (uint8_t)i;
    return (char)(most_frequent ^ (uint8_t)'e');
}
char known_plaintext_attack(char known_plain, char known_cipher) {
    return (char)((uint8_t)known_plain ^ (uint8_t)known_cipher);
}
/* Compatibility experiment only: volatile stores are not a timing guarantee. */
void xor_constant_time(const char *plaintext, const char *key, int key_len,
                       volatile char *out, int len) {
    if (len < 0 || key_len <= 0 || key == NULL) return;
    if (len == 0) return;
    if (plaintext == NULL || out == NULL) return;
    if (lab_ranges_overlap((const void *)out, (size_t)len, key, (size_t)key_len)) return;
    if ((const void *)out != (const void *)plaintext &&
        lab_ranges_overlap((const void *)out, (size_t)len, plaintext, (size_t)len)) return;
    for (size_t i = 0; i < (size_t)len; ++i)
        out[i] = (char)((uint8_t)plaintext[i] ^ (uint8_t)key[i % (size_t)key_len]);
}
