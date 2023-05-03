#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void blake2b(uint64_t in, uint64_t inlen, uint64_t out, uint64_t outlen, uint64_t key, uint64_t keylen);

int main() {
    char* input = "Cryptographic Component - Blake2b hash function";
    char* k = "PassCert Project";
    uint64_t inlen = strlen(input); uint64_t in = (uint64_t) input;
    uint64_t keylen = strlen(k); uint64_t key = (uint64_t) k;

    uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    uint64_t outlen = 32;

    blake2b(in, inlen,(uint64_t) out, outlen, key, keylen);
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out[i]);
    }
    printf("\n");
    return 1;
}