#include <stdio.h>
#include <string.h>

/* Declare the functions we want to test here.
    They are implemented in a separate .c file, but we
    want to use them here, so we declare their signatures. */
void xor_single(char *text, char key);
void xor_multi(char *text, const char *key, int key_len);
char frequency_attack(const char *ciphertext, int len);
char known_plaintext_attack(char known_plain, char known_cipher);

/* assert_equal: compares two strings.
    Prints PASS if equal, otherwise prints FAIL and shows expected value.
    This makes tests automatic instead of manual visual checks. */
void assert_equal(const char *test_name, const char *expected, const char *got) {
    if (strcmp(expected, got) == 0) {
        printf("PASS: %s\n", test_name);
    } else {
        printf("FAIL: %s\n", test_name);
        printf("  Expected: %s\n", expected);
        printf("  Got:      %s\n", got);
    }
}

int main(void) {
     /* --- Test 1: single-byte encrypt then decrypt --- */
    char msg1[] = "Hello";
    xor_single(msg1, 10);          /* encrypt */
     xor_single(msg1, 10);          /* decrypt - same operation reverses it */
    assert_equal("single-byte round-trip", "Hello", msg1);

     /* --- Test 2: verify known ciphertext ---
       H (72) XOR 10 = 66, e (101) XOR 10 = 107, ...
         These values are precomputed, and function must match them. */
    char msg2[] = "Hello";
    char expected_cipher[] = {66, 111, 102, 102, 101, '\0'};
    xor_single(msg2, 10);
    assert_equal("single-byte known ciphertext", expected_cipher, msg2);

    /* --- Test 3: multi-byte round-trip --- */
    char msg3[] = "Hello";
    xor_multi(msg3, "AB", 2);      /* encrypt */
    xor_multi(msg3, "AB", 2);      /* decrypt */
    assert_equal("multi-byte round-trip", "Hello", msg3);

     /* --- Test 4: empty string - edge case ---
         Applying XOR to a length-0 string should change nothing.
         Function should not crash and should return empty string. */
    char msg4[] = "";
    xor_single(msg4, 10);
    assert_equal("empty string", "", msg4);

    /* --- Test 5: frequency attack ---
       We use an e-heavy text without spaces so 'e' stays dominant.
       This keeps the demo aligned with the classic simple assumption. */
    char long_msg[] = "theenemyneedstobeseeneverywhere";
    char attack_key = 42;
    xor_single(long_msg, attack_key);

    char recovered_key = frequency_attack(long_msg, (int)strlen(long_msg));
    if (recovered_key == attack_key) {
        printf("PASS: frequency attack recovered key = %d\n", recovered_key);
    } else {
        printf("FAIL: frequency attack - expected %d, got %d\n", attack_key, recovered_key);
    }

    /* --- Test 6: known-plaintext attack ---
       If one plaintext char and cipher char pair is known,
       single-byte XOR key is directly recoverable. */
    char plain_char = 'H';
    char cipher_char = 'H' ^ 10;
    char kp_key = known_plaintext_attack(plain_char, cipher_char);
    if (kp_key == 10) {
        printf("PASS: known-plaintext attack recovered key = %d\n", kp_key);
    } else {
        printf("FAIL: known-plaintext attack - expected 10, got %d\n", kp_key);
    }

    return 0;
}
