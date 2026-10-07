#ifdef __APPLE__
#define _DARWIN_C_SOURCE 1
#else
#define _DEFAULT_SOURCE 1
#endif
#define _POSIX_C_SOURCE 200809L
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include "xor.h"
#include "../include/lab_test.h"
int xor_asm_check_abi(uint8_t *data, size_t length, uint8_t key);
int main(void) {
    size_t lengths[] = {0, 1, 2, 3, 7, 8, 15, 16, 255, 256, 4095, 4096};
    uint8_t reference[4098], assembly[4098];
    unsigned vector_count = 0;
    int vectors_ok = 1;
    for (size_t n = 0; n < sizeof(lengths)/sizeof(lengths[0]); ++n) {
        size_t length = lengths[n];
        for (unsigned key = 0; key < 256; ++key) {
            memset(reference, 0xa5, sizeof(reference));
            for (size_t i = 0; i < length; ++i) reference[i + 1] = (uint8_t)i;
            memcpy(assembly, reference, sizeof(reference));
            if (xor_apply(reference + 1, length, length, (uint8_t)key) != LAB_OK ||
                xor_apply_asm(assembly + 1, length, length, (uint8_t)key) != LAB_OK) vectors_ok = 0;
            for (size_t i = 0; i < sizeof(reference); ++i) {
                if (reference[i] != assembly[i]) {
                    fprintf(stderr, "C/ASM mismatch: length=%zu key=%u offset=%zu\n", length, key, i);
                    vectors_ok = 0; break;
                }
            }
            ++vector_count;
        }
    }
    CHECK("all keys / length vectors / guards", vectors_ok);
    CHECK("zero NULL", xor_apply_asm(NULL, 0, 0, 255) == LAB_OK);
    CHECK("positive NULL", xor_apply_asm(NULL, 1, 1, 1) == LAB_INVALID_ARGUMENT);
    uint8_t one = 0xa5;
    CHECK("capacity rejected before core", xor_apply_asm(&one, 0, 1, 1) == LAB_CAPACITY_ERROR && one == 0xa5);
    CHECK("callee-saved registers", xor_asm_check_abi(assembly, 256, 42) == 1);
    CHECK("ABI zero NULL", xor_asm_check_abi(NULL, 0, 42) == 1);
    /* Guard pages catch accesses outside an actual mapped allocation. Assembly
     * is not sanitizer-instrumented. Anonymous mappings work on Darwin/Linux. */
    long page_value = sysconf(_SC_PAGESIZE);
    CHECK("page size", page_value > 0);
    if (page_value > 0) {
        size_t page = (size_t)page_value;
        uint8_t *mapping = mmap(NULL, page * 3, PROT_READ | PROT_WRITE,
                                MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        CHECK("map guards", mapping != MAP_FAILED);
        if (mapping != MAP_FAILED) {
            CHECK("protect first page", mprotect(mapping, page, PROT_NONE) == 0);
            CHECK("protect last page", mprotect(mapping + page * 2, page, PROT_NONE) == 0);
            uint8_t *data = mapping + page;
            memset(data, 0, page);
            CHECK("touch both exact page boundaries", xor_apply_asm(data, page, page, 255) == LAB_OK && data[0] == 255 && data[page - 1] == 255);
            CHECK("zero at inaccessible page", xor_apply_asm(mapping, 0, 0, 255) == LAB_OK);
            CHECK("unmap", munmap(mapping, page * 3) == 0);
        }
    }
    printf("ASM byte-vector combinations: %u (correctness only; no timing)\n", vector_count);
    return lab_test_finish("asm");
}
