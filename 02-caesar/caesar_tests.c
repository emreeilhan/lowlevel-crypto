#include <stdio.h>
#include <string.h>

/* Declare the functions we want to test here.
   They are implemented in a separate .c file, but we
   want to use them here, so we declare their signatures. */
void caesar_encode(char *text, int shift);
void caesar_decode(char *text, int shift);
void caesar_rot13(char *text);
void caesar_brute_force(const char *ciphertext);
int  caesar_crack_ic(const char *ciphertext);

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
    /* --- Test 1: basic encode ---
       Proves the forward shift is correct for a known case.
       'A' shifted by 3 should be 'D', 'Z' by 3 should be 'C' (wrap). */
    char msg1[] = "ABC";
    caesar_encode(msg1, 3);
    assert_equal("basic encode shift 3", "DEF", msg1);

    /* --- Test 2: encode/decode round-trip ---
       The fundamental property: encode then decode with the same shift
       must return the original. If this fails, decode is not the inverse. */
    char msg2[] = "Hello, World!";
    caesar_encode(msg2, 7);
    caesar_decode(msg2, 7);
    assert_equal("encode/decode round-trip", "Hello, World!", msg2);

    /* --- Test 3: non-alpha characters are preserved ---
       Spaces, commas, exclamation marks should pass through unchanged.
       Only letters participate in the shift. */
    char msg3[] = "Hi! 123";
    caesar_encode(msg3, 5);
    caesar_decode(msg3, 5);
    assert_equal("non-alpha preserved through round-trip", "Hi! 123", msg3);

    /* --- Test 4: wrap-around at Z ---
       'Z' + 1 should become 'A', not something outside the alphabet.
       This verifies the modular arithmetic handles the boundary correctly. */
    char msg4[] = "XYZ";
    caesar_encode(msg4, 3);
    assert_equal("wrap-around at Z", "ABC", msg4);

    /* --- Test 5: negative shift (large decode) ---
       A shift of -3 is equivalent to a shift of +23 in a 26-letter alphabet.
       This checks that the +26 in the formula prevents a negative modulo. */
    char msg5[] = "ABC";
    caesar_encode(msg5, -3);
    assert_equal("negative shift wraps correctly", "XYZ", msg5);

    /* --- Test 6: ROT13 idempotency ---
       ROT13 applied twice must return the original. This works because
       13 + 13 = 26, a full rotation. encode == decode is the special property. */
    char msg6[] = "Hello";
    caesar_rot13(msg6);
    caesar_rot13(msg6);
    assert_equal("ROT13 applied twice returns original", "Hello", msg6);

    /* --- Test 7: ROT13 known output ---
       'A' -> 'N', 'B' -> 'O', 'C' -> 'P': verifies the shift value is 13. */
    char msg7[] = "ABC";
    caesar_rot13(msg7);
    assert_equal("ROT13 known output", "NOP", msg7);

    /* --- Test 8: lowercase round-trip ---
       Upper and lowercase letters have different ASCII bases ('A'=65, 'a'=97).
       This confirms the base selection in encode handles both independently. */
    char msg8[] = "hello";
    caesar_encode(msg8, 13);
    caesar_decode(msg8, 13);
    assert_equal("lowercase round-trip", "hello", msg8);

    /* --- Test 9: brute force runs without crash ---
       We do not verify the output text here — brute force is visual.
       The test proves the function iterates all 25 shifts without
       segfaulting or corrupting memory on a typical input. */
    printf("\n");
    caesar_brute_force("Khoor");
    printf("\n");
    printf("PASS: brute_force ran without crash\n");

    /* --- Test 10: frequency crack recovers correct shift ---
       encode a known sentence with shift 4, then ask crack_ic to find it.
       the function scores all 26 shifts by letter frequency correlation
       against English; the correct shift should score highest. */
    char known_plain[] = "the quick brown fox jumps over the lazy dog";
    char cipher10[64];
    strncpy(cipher10, known_plain, sizeof(cipher10) - 1);
    cipher10[sizeof(cipher10) - 1] = '\0';
    caesar_encode(cipher10, 4);

    int recovered = caesar_crack_ic(cipher10);
    if (recovered == 4) {
        printf("PASS: IC crack recovered shift = %d\n", recovered);
    } else {
        printf("FAIL: IC crack - expected 4, got %d\n", recovered);
    }

    return 0;
}
