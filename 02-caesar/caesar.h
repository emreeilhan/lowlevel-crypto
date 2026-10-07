#ifndef CAESAR_H
#define CAESAR_H
#include <stdio.h>
#include "../include/lab_status.h"
#define CAESAR_DEMO_MAX 4096U
lab_status caesar_encode_bytes(uint8_t *data, size_t capacity, size_t length, int shift);
lab_status caesar_decode_bytes(uint8_t *data, size_t capacity, size_t length, int shift);
lab_status caesar_crack_freq_bytes(const uint8_t *data, size_t length, int *shift);
lab_status caesar_brute_force_bytes(const uint8_t *data, size_t length, FILE *stream);
void caesar_encode(char *text, int shift);
void caesar_decode(char *text, int shift);
void caesar_rot13(char *text);
void caesar_brute_force(const char *ciphertext);
int caesar_crack_freq(const char *ciphertext);
#endif
