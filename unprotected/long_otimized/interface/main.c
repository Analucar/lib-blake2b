#include "api/blake2b.h"

int main() {
    int flag;
    uint8_t* out = (uint8_t*) calloc(0x80, sizeof(uint8_t));
    void *in;
    uint64_t outlen = 64;
     
    in = "Cryptographic Component - Blake2b hash function";

    outlen = 128;
    flag = blake2b_long(out, outlen, input_16384, strlen(input_16384));
    for(int i = 0; i < outlen; i++) 
		printf("%02hhx",out[i]);
	printf("\n");
}