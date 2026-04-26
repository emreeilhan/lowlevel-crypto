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

    return 0;
}
