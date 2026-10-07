#include "xor.h"
lab_status xor_apply_asm(uint8_t *data, size_t capacity, size_t length, uint8_t key) {
    lab_status status = lab_validate_mutable(data, capacity, length);
    if (status != LAB_OK) return status;
    xor_asm_bytes(data, length, key);
    return LAB_OK;
}
