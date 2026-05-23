/*
 * 04-buffer-overflow/vuln.c
 *
 * EDUCATIONAL ONLY. This program is deliberately broken. Never ship code
 * that looks like this.
 *
 * It is a classic stack-based buffer overflow: a fixed 16-byte buffer and a
 * strcpy() with no bounds check. Long input runs off the end of the buffer,
 * over the saved frame pointer, and into the saved return address — which is
 * enough to redirect execution to code that is never called normally.
 *
 * Build with stack protection and PIE OFF so the overflow is visible and the
 * target address is stable:
 *
 *   gcc -std=c99 -g -fno-stack-protector -no-pie \
 *       04-buffer-overflow/vuln.c -o /tmp/vuln
 *
 * Then explore it under gdb — see 04-buffer-overflow/README.md for the walk.
 */
#include <stdio.h>
#include <string.h>

/*
 * win() is never reached by normal control flow. The whole exploit is about
 * making the program jump here anyway by overwriting the saved return address
 * of vulnerable() with this function's address.
 */
void win(void) {
    puts("[win] control flow hijacked — this function was never called normally.");
}

/*
 * The vulnerable function.
 *
 * Stack frame layout (low address -> high address):
 *
 *     buf[16]      16 bytes
 *     saved rbp     8 bytes
 *     return addr   8 bytes   <- strcpy reaches this last
 *
 * So the distance from the start of buf to the saved return address is 24
 * bytes. strcpy copies the whole input regardless of length, so:
 *
 *     <= 16 bytes : stays inside buf, returns normally
 *       24 bytes  : overwrites the saved frame pointer
 *       32 bytes  : overwrites the saved return address (usually a crash)
 *       40 bytes  : return address fully under the attacker's control
 */
void vulnerable(const char *input) {
    char buf[16];
    strcpy(buf, input);          /* no length check — this is the bug */
    printf("stored: %s\n", buf);
}

int main(int argc, char **argv) {
    /*
     * Print win()'s address so the exploit input can target it. With -no-pie
     * this address is fixed across runs; with ASLR/PIE on it changes every
     * run, which is exactly why a hardcoded target stops working.
     */
    printf("win() is at %p\n", (void *)win);

    if (argc < 2) {
        printf("usage: %s <input>\n", argv[0]);
        puts("try a short string, then 16, 24, 32, and 40 'A's to watch the frame break.");
        return 0;
    }

    vulnerable(argv[1]);
    puts("returned from vulnerable() normally.");
    return 0;
}
