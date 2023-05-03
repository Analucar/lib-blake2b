#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern uint64_t blake2b_init_jazz(uint64_t ctxt, uint64_t outlen, uint64_t key, uint64_t keylen);
extern uint64_t blake2b_update_jazz(uint64_t ctxt, uint64_t input, uint64_t inputlen);
extern uint64_t blake2b_finish_jazz(uint64_t ctxt, uint64_t output);
extern uint64_t blake2b_long_jazz(uint64_t ctxt,  uint64_t out, uint64_t outlen, uint64_t input, uint64_t inputlen);

int main() {
    int flag;
    uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    void *in;
    uint64_t outlen = 64;
     
    in = "Cryptographic Component - Blake2b hash function";
    uint64_t inlen = (uint64_t) strlen(in);
    
    uint64_t ctxt[28] = {0};

    flag = blake2b_long_jazz((uint64_t) ctxt, (uint64_t) out , outlen, (uint64_t) in, inlen);
    
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out[i]);
    }
    printf("\n");
}