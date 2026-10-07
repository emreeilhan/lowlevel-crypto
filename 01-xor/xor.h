#ifndef XOR_H
#define XOR_H
#include "../include/lab_status.h"
lab_status xor_apply(uint8_t *data, size_t capacity, size_t length, uint8_t key);
lab_status xor_repeat(uint8_t *data, size_t capacity, size_t length,
                      const uint8_t *key, size_t key_length);
/* These declarations require the separate x86-64 ASM target at link time. */
lab_status xor_apply_asm(uint8_t *data, size_t capacity, size_t length, uint8_t key);
void xor_asm_bytes(uint8_t *data, size_t length, uint8_t key);
void xor_single(char *text, char key);
void xor_multi(char *text, const char *key, int key_len);
char frequency_attack(const char *ciphertext, int len);
char known_plaintext_attack(char known_plain, char known_cipher);
void xor_constant_time(const char *plaintext, const char *key, int key_len,
                       volatile char *out, int len);
#endif
