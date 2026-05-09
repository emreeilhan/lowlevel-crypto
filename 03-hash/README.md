# 03-hash

This folder is my first pass at implementing djb2 by hand in C.

djb2 is a simple string hash. It starts from 5381, then walks over each byte:

```c
hash = hash * 33 + c;
```

I also added the XOR variant:

```c
hash = hash * 33 ^ c;
```

Both versions are deterministic, so the same input always gives the same output. That makes them useful for simple lookup demos like putting strings into buckets.

## How I Tested It

```bash
gcc -std=c99 -Wall -Wextra -Werror 03-hash/hash.c 03-hash/hash_tests.c -o 03-hash/hash_tests
./03-hash/hash_tests
```

The test file checks:

- known value for hello
- determinism
- empty string behavior
- classic djb2 vs XOR variant
- bucket placement
- visible bucket collisions with a small bucket count

## Why This Is Not Crypto-Safe

This is the part that matters most to me. djb2 is a hash, but it is not a cryptographic hash.

It has no secret, no serious collision resistance, and no real pre-image resistance. If I use only 8 buckets, collisions show up immediately because many different strings have to share the same small output space. Even with the 32-bit value, the design is simple enough that I should treat it as a fast table hash, not as security.

So the answer to "can I store passwords with this?" is no. Password storage needs a slow, salted password hashing function like Argon2, bcrypt, or scrypt. djb2 is good for learning how bytes flow into a hash value. It is not good for protecting anything.
