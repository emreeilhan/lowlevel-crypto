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

/* Constant-time XOR - no timing leak.
   volatile: prevents compiler optimization of this buffer so each step is executed.
   No branch: we avoid if/else so CPU follows the same path every time. */
void xor_constant_time(const char *plaintext, const char *key,
                        int key_len, volatile char *out, int len) {
    for (int i = 0; i < len; i++) {
        /* No branch here - only pure arithmetic.
           key[i % key_len]: key wrap-around with same cost per iteration. */
        out[i] = (volatile char)(plaintext[i] ^ key[i % key_len]);
    }
}

int main() {
    /* --- Single-byte test --- */
    char msg1[] = "Hello";
    char key1   = 10;

    printf("Original:  %s\n", msg1);
    xor_single(msg1, key1);
    printf("Encrypted: ");
    for (int i = 0; i < (int)strlen(msg1); i++) {
        printf("%02X ", (unsigned char)msg1[i]);  // print as hex, because this is encrypted
    }                                              // characters may not be printable
    printf("\n");
    xor_single(msg1, key1);
    printf("Decrypted: %s\n\n", msg1);

    /* --- Multi-byte test --- */
    char msg2[]    = "Hello";
    const char key2[] = "AB";
    int key2_len   = strlen(key2);

    printf("Original:  %s\n", msg2);
    xor_multi(msg2, key2, key2_len);
    printf("Encrypted: ");
    for (int i = 0; i < (int)strlen(msg2); i++) {
        printf("%02X ", (unsigned char)msg2[i]);
    }
    printf("\n");
    xor_multi(msg2, key2, key2_len);
    printf("Decrypted: %s\n", msg2);

    /* --- Constant-time test --- */
    char msg3[]       = "Hello";
    const char key3[] = "AB";
    volatile char ct_out[6];  // volatile buffer - compiler cannot skip this

    xor_constant_time(msg3, key3, strlen(key3), ct_out, strlen(msg3));
    printf("\nConstant-time encrypted: ");
    for (int i = 0; i < (int)strlen(msg3); i++) {
        printf("%02X ", (unsigned char)ct_out[i]);
    }
    printf("\n");

    /* Decrypt: call the same function on ciphertext */
    char ct_copy[6];
    for (int i = 0; i < 5; i++) ct_copy[i] = ct_out[i];
    ct_copy[5] = '\0';

    volatile char ct_dec[6];
    xor_constant_time(ct_copy, key3, strlen(key3), ct_dec, strlen(ct_copy));
    ct_dec[5] = '\0';
    printf("Constant-time decrypted: ");
    for (int i = 0; i < 5; i++) printf("%c", ct_dec[i]);
    printf("\n");

    return 0;
}

