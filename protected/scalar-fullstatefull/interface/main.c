#include "api/blake2b.h"

int main() {
    int flag;
    blake2b_state* S = malloc(sizeof(struct __blake2b_state));
    uint8_t* out0 = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    uint8_t* out1 = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    uint8_t* out2 = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    void *in, *key;
    uint64_t outlen = 32;

    flag = blake2b_init(S, outlen);
     
    in = "Cryptographic Component - Blake2b hash function";
    flag = blake2b_update(S, in, strlen(in));

    flag = blake2b_final(S, out0, outlen);
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out0[i]);
    }
    printf("\n");

    key = "PassCert Project";
    flag = blake2b_init_key(S, outlen,key, strlen(key));
    
    flag = blake2b_update(S,in,strlen(in));
    
    flag = blake2b_final(S,out1,outlen);


    flag = blake2b(out2, outlen, in, strlen(in), key, strlen(key));

    
    
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out1[i]);
    }
    printf("\n");
    
    for(int i = 0; i < outlen; i++) {
        printf("%02hhx",out2[i]);
    }
    printf("\n");
}