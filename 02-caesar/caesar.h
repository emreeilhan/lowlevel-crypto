#ifndef CAESAR_H
#define CAESAR_H

/* shift each alpha character by `shift`, skip non-alpha, in-place */
void caesar_encode(char *text, int shift);

/* undo encode by calling it with -shift */
void caesar_decode(char *text, int shift);

/* caesar cipher with shift=13; applying it twice gets back the original
   because 13+13=26, a full rotation */
void caesar_rot13(char *text);

/* print all 25 possible decodes so the plaintext can be spotted by eye */
void caesar_brute_force(const char *ciphertext);

/* find the shift by correlating each candidate's letter frequencies against
   expected English frequencies (a dot product, not chi-squared or IC).
   returns the best-scoring shift (0-25). */
int caesar_crack_freq(const char *ciphertext);

#endif /* CAESAR_H */
