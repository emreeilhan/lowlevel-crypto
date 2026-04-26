# Week 1 Devlog

Date: 2026-04-26

## What I Built This Week

This week I implemented an XOR cipher in C from scratch. I did not use crypto libraries for the cipher logic, so it felt much more real to me. It was just me, chars, loops, keys, and a lot of checking whether the output actually made sense.

I wrote three versions. The first one was single-byte key encryption and decryption. The second one was a multi-byte key version, where the key repeats using `i % key_len`. The third one was a constant-time version using `volatile`, because I wanted to start thinking about what the compiler might do to my code.

I also wrote a separate test file with assertions, so I did not have to manually stare at outputs every time. The known-ciphertext test actually caught a bug in my own thinking. I had calculated `e XOR 10` wrong. I expected 107, but the correct answer is 111. That felt annoying for about five seconds, then useful.

## The Key Concept That Clicked For Me

The biggest thing that clicked for me this week is that XOR is self-inverting. If I XOR something with a key, then XOR the result with the same key again, I get the original value back. That means encryption and decryption are literally the same operation.

For example, the character `H` is 72 in ASCII, which is `01001000` in binary. The key 10 is `00001010`. When I XOR them, I get `01000010`, which is 66. That encrypted byte is not `H` anymore.

Then I apply XOR again with the same key. `01000010 XOR 00001010` gives me `01001000`, which is 72 again, and 72 is `H`. So the key both hides the value and brings it back. I think this is the first time a bit-level operation felt like an actual tool instead of just something from a lecture slide.

## What Volatile Actually Does And Why It Matters For Security

`volatile` confused me at first because the code still looks like normal XOR. But the compiler is too smart sometimes. It can decide that some operation is redundant, or that a memory write does not matter, and then optimize it away.

In normal programming, faster code sounds good. But in security-critical code, this can be dangerous because the code that actually runs might not be the exact code I thought I wrote. The way I understand `volatile` now is that it tells the compiler: touch this every single time, no shortcuts. This was my first real encounter with the idea that correctness and security are different things.

## The Weakness I Discovered

After building the cipher, I implemented a frequency analysis attack and a known-plaintext attack. This part was exciting, but also honestly a little unsettling, because I had just built the cipher and then broke it with a few lines of code.

The frequency attack works because English has patterns, and `e` is usually the most common letter. So the most frequent byte in the ciphertext is probably `e` XOR'd with the key, which means `most_frequent_byte XOR 'e'` probably gives the key. The known-plaintext attack is even more direct: if I know one plaintext character and its matching ciphertext character, then `plain XOR cipher = key`. For single-byte XOR, one character is enough to recover the entire key.

This made the weakness feel very concrete. Before this, I could say single-byte XOR is weak because I had heard it or read it. Now I actually saw why.

## One Thing That Confused Me

One bug that confused me was the duplicate `main` linker error. The compiler turns each source file into object code, and then the linker combines those pieces into one executable. But an executable can only have one starting point, so two `main` functions break the build because the linker cannot choose which one starts the program.

## What's Coming Next Week

Next week I want to build the Caesar cipher in C. It is shift-based encryption, so instead of XORing bytes with a key, I will shift letters through the alphabet. I want to implement encryption and decryption first, then brute-force cracking, then frequency analysis again.

I am curious to compare it with XOR. With Caesar, the attack is about finding the shift amount instead of recovering a byte key. It feels like the same basic lesson from a different angle: if the structure is too simple, the patterns survive, and then the cipher starts explaining itself to the attacker.
