CC ?= cc
CFLAGS ?= -std=c99 -O2 -g -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror
BUILD_DIR ?= build
RUNNER ?=
C_BINS = $(BUILD_DIR)/xor_tests $(BUILD_DIR)/caesar_tests $(BUILD_DIR)/hash_tests $(BUILD_DIR)/compare_tests
.PHONY: all test c-test asm-test sanitize coverage bench clean
all: $(C_BINS)
$(BUILD_DIR):
	mkdir -p $@
$(BUILD_DIR)/xor_tests: 01-xor/xor_cipher.c 01-xor/xor_cipher_tests.c 01-xor/xor.h include/lab_status.h include/lab_test.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) 01-xor/xor_cipher.c 01-xor/xor_cipher_tests.c $(LDFLAGS) -o $@
$(BUILD_DIR)/caesar_tests: 02-caesar/caesar.c 02-caesar/caesar_tests.c 02-caesar/caesar.h include/lab_status.h include/lab_test.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) 02-caesar/caesar.c 02-caesar/caesar_tests.c $(LDFLAGS) -o $@
$(BUILD_DIR)/hash_tests: 03-hash/hash.c 03-hash/hash_tests.c 03-hash/hash.h include/lab_status.h include/lab_test.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) 03-hash/hash.c 03-hash/hash_tests.c $(LDFLAGS) -o $@
$(BUILD_DIR)/compare_tests: 05-constant-time/ct_compare.c 05-constant-time/ct_compare_tests.c 05-constant-time/ct_compare.h include/lab_status.h include/lab_test.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) 05-constant-time/ct_compare.c 05-constant-time/ct_compare_tests.c $(LDFLAGS) -o $@
c-test: $(C_BINS)
	$(RUNNER) $(BUILD_DIR)/xor_tests
	$(RUNNER) $(BUILD_DIR)/caesar_tests
	$(RUNNER) $(BUILD_DIR)/hash_tests
	$(RUNNER) $(BUILD_DIR)/compare_tests
$(BUILD_DIR)/lab_bench: bench/lab_bench.c 01-xor/xor_cipher.c 05-constant-time/ct_compare.c 01-xor/xor.h 05-constant-time/ct_compare.h include/lab_status.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) -fno-lto bench/lab_bench.c 01-xor/xor_cipher.c 05-constant-time/ct_compare.c $(LDFLAGS) -o $@
$(BUILD_DIR)/lab_bench_asm: bench/lab_bench.c 01-xor/xor_cipher.c 01-xor/xor_asm_wrapper.c 01-xor/xor_asm_bytes.S 05-constant-time/ct_compare.c 01-xor/xor.h include/lab_status.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) -fno-lto -DLAB_HAS_X86_ASM bench/lab_bench.c 01-xor/xor_cipher.c 01-xor/xor_asm_wrapper.c 01-xor/xor_asm_bytes.S 05-constant-time/ct_compare.c $(LDFLAGS) -o $@
$(BUILD_DIR)/asm_tests: 01-xor/xor_cipher.c 01-xor/xor_asm_wrapper.c 01-xor/xor_asm_bytes.S 01-xor/xor_asm_abi.S 01-xor/xor_asm_tests.c 01-xor/xor.h include/lab_status.h include/lab_test.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) 01-xor/xor_cipher.c 01-xor/xor_asm_wrapper.c 01-xor/xor_asm_bytes.S 01-xor/xor_asm_abi.S 01-xor/xor_asm_tests.c $(LDFLAGS) -o $@
asm-test: $(BUILD_DIR)/asm_tests
	$(RUNNER) $(BUILD_DIR)/asm_tests
test: c-test $(BUILD_DIR)/lab_bench
	BENCH_BINARY=$(BUILD_DIR)/lab_bench ./tests/test_benchmark_cli.sh
	python3 -m unittest discover -s tests -p 'test_*.py'
sanitize:
	$(MAKE) test BUILD_DIR=build/sanitize CC="$(CC)" CFLAGS="-std=c99 -g -O1 -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wstrict-prototypes -Werror -fsanitize=address,undefined -fno-omit-frame-pointer" LDFLAGS="-fsanitize=address,undefined"
coverage:
	./scripts/run_coverage.sh
bench:
	./run_benchmarks.sh
clean:
	rm -rf build
