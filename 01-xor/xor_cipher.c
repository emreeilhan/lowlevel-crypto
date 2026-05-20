#include <stdio.h>
#include <string.h>

void xor_single(char *text , char key){
    int len = strlen(text);
    for(int i = 0; i < len; i++){
        text[i] = text[i] ^ key;
    }
}

void xor_multi(char *text, const char *key, int key_len){
    int len = strlen(text);
    for(int i = 0; i < len ; i++){
        text[i] = text[i] ^ key[i % key_len];
    }
}

/* frequency_attack: count ciphertext bytes, pick the most frequent one,
   then assume it came from 'e' (most common in English) to recover key.
   This works as a simple demo only against single-byte XOR. */
char frequency_attack(const char *ciphertext, int len) {
    int freq[256] = {0};

    for (int i = 0; i < len; i++) {
        freq[(unsigned char)ciphertext[i]]++;
    }

    int max = 0;
    unsigned char most_frequent = 0;
    for (int i = 0; i < 256; i++) {
        if (freq[i] > max) {
            max = freq[i];
            most_frequent = (unsigned char)i;
        }
    }

    return (char)(most_frequent ^ 'e');
}

/* known_plaintext_attack: if one plaintext byte and its ciphertext byte
   are known, key is recovered in one XOR step for single-byte XOR. */
char known_plaintext_attack(char known_plain, char known_cipher) {
    return (char)(known_plain ^ known_cipher);
}

/* Timing-stable XOR attempt.
   volatile: keeps the output writes visible to the compiler.
   No branch: input byte values do not choose different code paths.

   This is still educational code, not a formal constant-time guarantee.
   Use xor_timing_bench.c to measure whether the implementation shows obvious
   input-dependent timing differences on the current compiler and machine. */
void xor_constant_time(const char *plaintext, const char *key,
                        int key_len, volatile char *out, int len) {
    for (int i = 0; i < len; i++) {
        /* No branch here - only pure arithmetic.
           key[i % key_len]: key wrap-around with same cost per iteration. */
        out[i] = (volatile char)(plaintext[i] ^ key[i % key_len]);
    }
}
