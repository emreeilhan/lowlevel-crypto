# Week 2 Devlog

Date: 2026-05-03

## What I Built This Week

This week was Caesar cipher. Five functions: encode, decode, rot13, brute force, and a statistical crack. Same rules as last week, no libraries, just C99 and math.

The encode function shifts each letter by some amount and skips everything else. The formula is `((c - base + shift % 26 + 26) % 26) + base`. The `+ 26` is there because C's `%` operator can return a negative number when the left side is negative. So if shift is `-3`, then `shift % 26` gives `-3`, not `23`. Adding 26 before the final mod fixes that. Decode just calls encode with `-shift`. ROT13 calls encode with 13. Those two are literally one line each.

## The Bug That Wasted My Time

I wrote the crack function using the Index of Coincidence. The formula is `sum(freq[i] * (freq[i]-1)) / (N * (N-1))`. I tested it on a sentence encoded with shift 4 and expected the function to return 4. It returned 0 every time.

I added print statements to see what IC scores the function was computing for each shift. The output was something like:

```
shift  0: 0.0621
shift  1: 0.0619
shift  2: 0.0624
shift  3: 0.0618
shift  4: 0.0622
```

Every single shift scored the same. That is when I realized the IC is not actually measuring what I thought it was. It measures how many letter pairs in the text are identical. But Caesar just relabels the letters. The number of matching pairs does not change. It does not matter if the most common letter is `e` or `h` — there is the same number of repeated letters either way. So IC is the same for every Caesar rotation of the same text.

The actual attack is a dot product: for each shift, compute the letter frequencies of the decoded text, then multiply each one against the known English frequency for that letter and sum them up. When the shift is right, the decoded `e` frequency lines up with English `e` frequency and the score is high. For any wrong shift it is misaligned and the score drops. That worked on the first try and the function returned 4.

## What I Took Away

Caesar has 25 useful keys. That is `log2(25) ≈ 4.7 bits` of entropy. Single-byte XOR has 256 keys, which is 8 bits. The gap sounds small but both ciphers fall apart the same way: letter frequency survives the transformation completely, and once patterns survive, the cipher is already broken. The key count barely matters.

Next week I want to look at hash functions. A cipher is reversible by design. I want to understand what it actually means for something to be one-way.
