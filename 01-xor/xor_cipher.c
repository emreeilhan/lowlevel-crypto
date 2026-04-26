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

