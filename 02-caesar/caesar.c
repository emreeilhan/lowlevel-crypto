#include <stdio.h>
#include <string.h>
#include "caesar.h"

void caesar_encode(char *text, int shift) {
    int len = (int)strlen(text);

    for (int i = 0; i < len; i++) {
        char c = text[i];
        char base;

        if (c >= 'A' && c <= 'Z') {
            base = 'A';
        } else if (c >= 'a' && c <= 'z') {
            base = 'a';
        } else {
            continue; /* non-alpha: spaces, digits, punctuation stay untouched */
        }

        /* Formula: ((c - base + shift % 26 + 26) % 26) + base
           - (c - base)       maps the letter to 0-25
           - + shift % 26     applies the shift, still possibly negative
           - + 26             ensures the value is positive before the final mod;
                              without this, C's % can return a negative remainder
                              when shift is negative (e.g. shift=-3 on 'a' gives -3,
                              and -3 % 26 == -3 in C99, not 23 like we want)
           - final % 26       wraps values >= 26 back into 0-25
           - + base           maps back to the correct ASCII letter */
        text[i] = (char)(((c - base + shift % 26 + 26) % 26) + base);
    }
}

void caesar_decode(char *text, int shift) {
    caesar_encode(text, -shift);
}

/* 13+13=26, full rotation, so encode and decode are the same operation */
void caesar_rot13(char *text) {
    caesar_encode(text, 13);
}

void caesar_brute_force(const char *ciphertext) {
    int len = (int)strlen(ciphertext);
    char buf[len + 1];

    printf("=== Brute Force (all 25 shifts) ===\n");
    for (int shift = 1; shift <= 25; shift++) {
        /* copy ciphertext into a mutable buffer for each attempt */
        memcpy(buf, ciphertext, len + 1);
        caesar_decode(buf, shift);
        printf("shift %2d: %s\n", shift, buf);
    }
}

/* try all 26 shifts, score each by comparing letter frequencies against
   expected English. the correct shift produces the highest correlation. */
int caesar_crack_ic(const char *ciphertext) {
    /* expected English letter frequencies, a-z */
    static const double english[26] = {
        0.0817, 0.0149, 0.0278, 0.0425, 0.1270, 0.0223, 0.0202, 0.0609,
        0.0697, 0.0015, 0.0077, 0.0402, 0.0241, 0.0675, 0.0751, 0.0193,
        0.0010, 0.0599, 0.0633, 0.0906, 0.0276, 0.0098, 0.0236, 0.0015,
        0.0197, 0.0007
    };

    int len = (int)strlen(ciphertext);

    /* only alpha chars matter for scoring */
    int alpha_len = 0;
    for (int i = 0; i < len; i++) {
        char c = ciphertext[i];
        if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
            alpha_len++;
        }
    }

    if (alpha_len == 0) return 0;

    double best_score = -1.0;
    int best_shift = 0;

    char buf[len + 1];

    for (int shift = 0; shift <= 25; shift++) {
        memcpy(buf, ciphertext, len + 1);
        caesar_decode(buf, shift);

        /* count letter frequency in the decoded candidate */
        int freq[26] = {0};
        for (int i = 0; i < len; i++) {
            char c = buf[i];
            if (c >= 'A' && c <= 'Z') freq[c - 'A']++;
            else if (c >= 'a' && c <= 'z') freq[c - 'a']++;
        }

        /* dot product of observed vs expected frequencies */
        double score = 0.0;
        for (int j = 0; j < 26; j++) {
            score += ((double)freq[j] / (double)alpha_len) * english[j];
        }

        /* keep the best match so far */
        if (score > best_score) {
            best_score = score;
            best_shift = shift;
        }
    }

    return best_shift;
}
