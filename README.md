# lowlevel-crypto

Handwritten implementations of cryptographic primitives in C and x86 Assembly — built to learn, not to use in production.

## About

This repository is a learning project focused on understanding how low-level cryptographic ideas work by building them manually in C and x86 assembly. The goal is to explore the mechanics directly, without relying on external libraries, and to build intuition for how security-related logic behaves closer to the machine.

## What's Inside

- `01-xor/` contains a simple XOR cipher implementation in C and x86 assembly.
- `02-caesar/` contains a Caesar cipher implementation in C and x86 assembly.
- `03-hash/` contains a handwritten `djb2` hash implementation in C and x86 assembly.
- `04-buffer-overflow/` contains a small buffer overflow demonstration for educational study.

## Goals

- Learn C from scratch through hands-on implementation.
- Understand x86 assembly by writing and comparing low-level equivalents.
- Connect cryptography and systems theory to real security concepts.

## Devlog

The [`/devlog`](./devlog) folder contains weekly notes documenting what was learned, what was built, and what came up during the process.

## Warning

This code is for educational purposes only. Do not use in production.

## Author

Emre İlhan - [github.com/emreeilhan](https://github.com/emreeilhan)
