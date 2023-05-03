#include "api/blake2b.h"

int main() {
    int flag;
    uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    void *in;
    uint64_t outlen = 32;
     
    in = "Cryptographic Component - Blake2b hash function";

    //outlen = 64;
    flag = blake2b(out, outlen, in, strlen(in),NULL,0);
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out[i]);
    }
    printf("\n");
}