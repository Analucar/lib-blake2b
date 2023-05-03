#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern uint64_t blake2b_init_jazz(uint64_t ctxt, uint64_t outlen, uint64_t key, uint64_t keylen);
extern uint64_t blake2b_update_jazz(uint64_t ctxt, uint64_t input, uint64_t inputlen);
extern uint64_t blake2b_finish_jazz(uint64_t ctxt, uint64_t output);

int main() {
    int flag;
    
    uint64_t ctxt[28] = {0};

    uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    uint64_t outlen = 32;

    void *in, *key;
   
    key = "PassCert Project";
    flag = blake2b_init_jazz((uint64_t)ctxt, outlen, (uint64_t)key, (uint64_t)strlen(key));
    
    in = "Cryptographic Component - Blake2b hash function";
    flag = blake2b_update_jazz((uint64_t)ctxt,(uint64_t)in,(uint64_t)strlen(in));
    
    flag = blake2b_finish_jazz((uint64_t)ctxt,(uint64_t)out);
    
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out[i]);
    }
    printf("\n");
}