#include <string.h>
#include "caesar.h"
static int normalized_shift(int shift) {
    int remainder = shift % 26;
    return remainder < 0 ? remainder + 26 : remainder;
}
static uint8_t shifted_byte(uint8_t c, int shift) {
    int base;
    if (c >= (uint8_t)'A' && c <= (uint8_t)'Z') base = 'A';
    else if (c >= (uint8_t)'a' && c <= (uint8_t)'z') base = 'a';
    else return c;
    return (uint8_t)(((int)c - base + shift) % 26 + base);
}
lab_status caesar_encode_bytes(uint8_t *data, size_t capacity, size_t length, int shift) {
    lab_status status = lab_validate_mutable(data, capacity, length);
    if (status != LAB_OK) return status;
    int normalized = normalized_shift(shift);
    for (size_t i = 0; i < length; ++i) data[i] = shifted_byte(data[i], normalized);
    return LAB_OK;
}
lab_status caesar_decode_bytes(uint8_t *data, size_t capacity, size_t length, int shift) {
    /* Normalize before negation: -INT_MIN is never evaluated. */
    return caesar_encode_bytes(data, capacity, length, -normalized_shift(shift));
}
static lab_status validate_demo(const uint8_t *data, size_t length) {
    if (length > CAESAR_DEMO_MAX) return LAB_LIMIT_ERROR;
    if (length != 0 && data == NULL) return LAB_INVALID_ARGUMENT;
    return LAB_OK;
}
lab_status caesar_brute_force_bytes(const uint8_t *data, size_t length, FILE *stream) {
    lab_status status = validate_demo(data, length);
    if (status != LAB_OK) return status;
    if (stream == NULL) return LAB_INVALID_ARGUMENT;
    uint8_t buffer[CAESAR_DEMO_MAX];
    for (int shift = 1; shift <= 25; ++shift) {
        for (size_t i = 0; i < length; ++i) buffer[i] = shifted_byte(data[i], 26 - shift);
        if (fprintf(stream, "shift %2d: ", shift) < 0 ||
            fwrite(buffer, 1, length, stream) != length || fputc('\n', stream) == EOF)
            return LAB_IO_ERROR;
    }
    return LAB_OK;
}
lab_status caesar_crack_freq_bytes(const uint8_t *data, size_t length, int *shift) {
    static const double english[26] = {
        .0817,.0149,.0278,.0425,.1270,.0223,.0202,.0609,.0697,.0015,.0077,.0402,.0241,
        .0675,.0751,.0193,.0010,.0599,.0633,.0906,.0276,.0098,.0236,.0015,.0197,.0007
    };
    lab_status status = validate_demo(data, length);
    if (status != LAB_OK) return status;
    if (shift == NULL) return LAB_INVALID_ARGUMENT;
    if (lab_ranges_overlap(shift, sizeof(*shift), data, length)) return LAB_OVERLAP_ERROR;
    double best_score = -1.0;
    int best_shift = 0;
    for (int candidate = 0; candidate < 26; ++candidate) {
        size_t frequencies[26] = {0}, total = 0;
        for (size_t i = 0; i < length; ++i) {
            uint8_t c = shifted_byte(data[i], (26 - candidate) % 26);
            if (c >= (uint8_t)'A' && c <= (uint8_t)'Z') { ++frequencies[c - (uint8_t)'A']; ++total; }
            else if (c >= (uint8_t)'a' && c <= (uint8_t)'z') { ++frequencies[c - (uint8_t)'a']; ++total; }
        }
        double score = 0.0;
        if (total != 0)
            for (size_t i = 0; i < 26; ++i) score += (double)frequencies[i] / (double)total * english[i];
        if (score > best_score) { best_score = score; best_shift = candidate; }
    }
    *shift = best_shift;
    return LAB_OK;
}
void caesar_encode(char *text, int shift) {
    if (text != NULL) { size_t n = strlen(text); (void)caesar_encode_bytes((uint8_t *)text, n, n, shift); }
}
void caesar_decode(char *text, int shift) {
    if (text != NULL) { size_t n = strlen(text); (void)caesar_decode_bytes((uint8_t *)text, n, n, shift); }
}
void caesar_rot13(char *text) { caesar_encode(text, 13); }
static lab_status demo_text_length(const char *text, size_t *length) {
    if (text == NULL) return LAB_INVALID_ARGUMENT;
    for (size_t i = 0; i <= CAESAR_DEMO_MAX; ++i)
        if (text[i] == '\0') { *length = i; return LAB_OK; }
    return LAB_LIMIT_ERROR;
}
void caesar_brute_force(const char *ciphertext) {
    size_t length;
    if (demo_text_length(ciphertext, &length) == LAB_OK)
        (void)caesar_brute_force_bytes((const uint8_t *)ciphertext, length, stdout);
}
int caesar_crack_freq(const char *ciphertext) {
    size_t length;
    int shift = -1;
    if (demo_text_length(ciphertext, &length) == LAB_OK)
        (void)caesar_crack_freq_bytes((const uint8_t *)ciphertext, length, &shift);
    return shift;
}
