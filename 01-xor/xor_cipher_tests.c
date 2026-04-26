#include <stdio.h>
#include <string.h>

/* Declare the functions we want to test here.
    They are implemented in a separate .c file, but we
    want to use them here, so we declare their signatures. */
void xor_single(char *text, char key);
void xor_multi(char *text, const char *key, int key_len);

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

    return 0;
}
