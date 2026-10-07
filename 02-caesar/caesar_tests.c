#include <limits.h>
#include "caesar.h"
#include "../include/lab_test.h"
int main(void) {
    const uint8_t original[] = {0xa5,'A','z',0,'!',0xff,0x5a};
    uint8_t bytes[sizeof(original)]; memcpy(bytes, original, sizeof(bytes));
    const uint8_t expected[] = {0xa5,'D','c',0,'!',0xff,0x5a};
    CHECK("ASCII encode binary", caesar_encode_bytes(bytes + 1, 5, 5, 3) == LAB_OK);
    CHECK("known bytes, NUL, guards", memcmp(bytes, expected, sizeof(bytes)) == 0);
    CHECK("decode", caesar_decode_bytes(bytes + 1, 5, 5, 3) == LAB_OK);
    CHECK("inverse", memcmp(bytes, original, sizeof(bytes)) == 0);
    int shifts[] = {INT_MIN, INT_MAX, -100000, -26, -3, 0, 26, 100000};
    int all_ok = 1;
    for (size_t s = 0; s < sizeof(shifts)/sizeof(shifts[0]); ++s) {
        uint8_t all[256], copy[256];
        for (size_t i = 0; i < sizeof(all); ++i) all[i] = (uint8_t)i;
        memcpy(copy, all, sizeof(all));
        if (caesar_encode_bytes(all, sizeof(all), sizeof(all), shifts[s]) != LAB_OK ||
            caesar_decode_bytes(all, sizeof(all), sizeof(all), shifts[s]) != LAB_OK || memcmp(all, copy, sizeof(all)) != 0) all_ok = 0;
    }
    CHECK("all byte values / extreme shifts roundtrip", all_ok);
    uint8_t minimum[] = {'A','a','Z','z'};
    int residue = INT_MIN % 26; if (residue < 0) residue += 26;
    uint8_t minimum_expected[] = {(uint8_t)('A' + (26-residue)%26), (uint8_t)('a' + (26-residue)%26),
                                  (uint8_t)('A' + (25+26-residue)%26), (uint8_t)('a' + (25+26-residue)%26)};
    CHECK("INT_MIN decode direct", caesar_decode_bytes(minimum, sizeof(minimum), sizeof(minimum), INT_MIN) == LAB_OK && memcmp(minimum, minimum_expected, sizeof(minimum)) == 0);
    CHECK("zero NULL", caesar_decode_bytes(NULL, 0, 0, INT_MIN) == LAB_OK);
    CHECK("positive NULL", caesar_encode_bytes(NULL, 1, 1, 3) == LAB_INVALID_ARGUMENT);
    CHECK("capacity", caesar_decode_bytes(bytes, 1, 2, 3) == LAB_CAPACITY_ERROR);
    CHECK("invalid unchanged", memcmp(bytes, original, sizeof(bytes)) == 0);
    int result = 99;
    CHECK("crack zero", caesar_crack_freq_bytes(NULL, 0, &result) == LAB_OK && result == 0);
    CHECK("crack NULL output zero", caesar_crack_freq_bytes(NULL, 0, NULL) == LAB_INVALID_ARGUMENT);
    CHECK("crack NULL input", caesar_crack_freq_bytes(NULL, 1, &result) == LAB_INVALID_ARGUMENT);
    CHECK("crack error output unchanged", result == 0);
    uint8_t demo[CAESAR_DEMO_MAX + 1]; memset(demo, 'e', sizeof(demo));
    CHECK("demo limit minus one", caesar_crack_freq_bytes(demo, CAESAR_DEMO_MAX - 1, &result) == LAB_OK && result == 0);
    CHECK("demo at limit", caesar_crack_freq_bytes(demo, CAESAR_DEMO_MAX, &result) == LAB_OK && result == 0);
    result = 99;
    CHECK("demo over limit", caesar_crack_freq_bytes(demo, sizeof(demo), &result) == LAB_LIMIT_ERROR && result == 99);
    FILE *stream = tmpfile();
    CHECK("test stream", stream != NULL);
    if (stream != NULL) {
        CHECK("bruteforce limit minus one", caesar_brute_force_bytes(demo, CAESAR_DEMO_MAX - 1, stream) == LAB_OK);
        CHECK("bruteforce at limit", caesar_brute_force_bytes(demo, CAESAR_DEMO_MAX, stream) == LAB_OK);
        CHECK("bruteforce over limit", caesar_brute_force_bytes(demo, sizeof(demo), stream) == LAB_LIMIT_ERROR);
        CHECK("bruteforce empty", caesar_brute_force_bytes(NULL, 0, stream) == LAB_OK);
        CHECK("bruteforce NULL data", caesar_brute_force_bytes(NULL, 1, stream) == LAB_INVALID_ARGUMENT);
        CHECK("close stream", fclose(stream) == 0);
    }
    CHECK("bruteforce missing stream", caesar_brute_force_bytes(demo, 1, NULL) == LAB_INVALID_ARGUMENT);
    char text[] = "Hello, World!";
    caesar_encode(text, INT_MIN); caesar_decode(text, INT_MIN);
    CHECK("text INT_MIN", strcmp(text, "Hello, World!") == 0);
    caesar_rot13(text); caesar_rot13(text);
    CHECK("ROT13", strcmp(text, "Hello, World!") == 0);
    caesar_encode(NULL, 1); caesar_decode(NULL, INT_MIN); caesar_brute_force(NULL);
    CHECK("crack NULL wrapper", caesar_crack_freq(NULL) == -1);
    CHECK("empty text", caesar_crack_freq("") == 0);
    char too_long[CAESAR_DEMO_MAX + 2]; memset(too_long, 'e', sizeof(too_long)); too_long[sizeof(too_long)-1] = 0;
    CHECK("bounded text wrapper", caesar_crack_freq(too_long) == -1);
    int alias = 99;
    CHECK("crack output overlaps input", caesar_crack_freq_bytes((const uint8_t *)&alias, sizeof(alias), &alias) == LAB_OVERLAP_ERROR && alias == 99);
    char frequency[] = "thefrequencyoflettersinenglishtextenablesautomaticdecryption";
    caesar_encode(frequency, 4);
    CHECK("correlation recovers sample", caesar_crack_freq(frequency) == 4);
    return lab_test_finish("caesar");
}
