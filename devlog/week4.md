---
# Week 4

## What I built

A deliberately broken C program and then the exploit for it.

The bug is on purpose: a 16-byte stack buffer and a `strcpy()` with no length check, so the copy runs as long as the input does. I compiled it with `-fno-stack-protector -no-pie` so nothing got in the way and the addresses stayed put between runs. I also added a `win()` function that normal control flow never calls. The point of the whole week was to make the program run `win()` anyway.

Short input behaved. Then I fed it longer and longer strings and watched the frame come apart. 16 bytes filled the buffer exactly and returned fine. 24 bytes ran over the saved frame pointer. 32 bytes reached the saved return address and the program crashed trying to jump to a garbage address. 40 bytes meant the return address was completely mine.

## What I learned

The offset was the thing that made it real. In gdb the frame is laid out low to high as `buf[16]`, then the saved `rbp` (8 bytes), then the return address (8 bytes). So the distance from the start of the buffer to the return address is exactly 24 bytes. `strcpy` writes upward toward higher addresses, which is why it reaches the return address last. Once I had that number, the exploit was just: 24 bytes of padding, then 8 bytes that are the address of `win()`, little-endian. On `ret` the CPU popped the address I had typed and jumped straight into a function it was never supposed to reach.

That killed any sense of magic in a buffer overflow. It is not a special trick. It is writing past the end of an array into bytes that happen to hold the return address. The CPU does not know the bytes are wrong. It pops whatever is there and jumps. Memory safety is not a feature C takes away from you. It is something C never had.

Then I turned the protections back on one at a time, which was the part that actually taught me what they are for:

- The stack canary (`-fstack-protector-all`) drops a guard value between the buffer and the return address. My overflow changes it, and the check right before `ret` notices and aborts the program before the overwritten return address is ever used. It does not stop the write, it detects it.
- ASLR randomizes the addresses, so my hardcoded `win()` address stopped working. The crash address was different on every single run. That was the moment ASLR stopped being a checklist item, because I literally could not point at the same address twice, which is the entire point of it.
- NX marks the stack non-executable. This exploit reused existing code through the return address, so NX alone does not stop the `win()` trick, but it does kill the other classic version where you inject shellcode into the buffer and jump to it.

Three independent layers, each one breaking a different step of what I had just done.

## Struggles

Getting a clean, repeatable target took more fiddling than I expected. With the canary on, the program aborted before I could see anything interesting. With PIE/ASLR on, `win()` moved every run so my address was wrong every time. I needed both `-fno-stack-protector` and `-no-pie` before the demo behaved the same way twice, and figuring out that I needed both took a couple of confused runs.

The padding count also tripped me. My first instinct was 16 bytes to fill the buffer and then the return address right after. That ignored the saved frame pointer sitting in between, so I was 8 bytes short and just corrupted `rbp` instead of the return address. Counting the frame honestly — 16 + 8 = 24 — fixed it.

## Next week

This closes the four-week build-and-break arc: XOR, Caesar, djb2, and now a stack overflow, each one built and then broken. The thread I keep pulling on is correctness versus security, so the natural next subject is timing. I started a small constant-time comparison module to make that concrete: an early-exit compare leaks how many leading bytes are correct through its own runtime, and a byte-at-a-time accumulator does not. Same output, very different behavior under a stopwatch.
---
