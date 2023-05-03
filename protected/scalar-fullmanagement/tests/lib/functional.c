#include "tests.h"

void test_blake2b(char* in, char* k, uint8_t* out, uint64_t outlen) {
	uint64_t inlen = (uint64_t) strlen(in);
    uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k);
    uint64_t key = (uint64_t) k;
	blake2b(input, inlen, (uint64_t)out, outlen, (uint64_t) key, keylen);
}

void test_functional(char* in, char* k, uint8_t* out, uint64_t outlen) {
	test_blake2b(in,k,out,outlen);

	for(int i = 0; i < outlen; i++) 
		printf("%02hhx",out[i]);
	printf("\n");
}


void test_examples() {
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
    uint8_t* out_cmp; 
	uint64_t outlen = 32;
	char* cmp = calloc(1,64);
	char* k = "";

    test_blake2b(input_0,k,out,32); cmp_0_0_32(out);
    test_blake2b(input_32,k,out,32); cmp_32_0_32(out);
    test_blake2b(input_64,k,out,32); cmp_64_0_32(out);
    test_blake2b(input_128,k,out,32); cmp_128_0_32(out);
    test_blake2b(input_256,k,out,32); cmp_256_0_32(out);
    test_blake2b(input_512,k,out,32); cmp_512_0_32(out);
	test_blake2b(input_1024,k,out,32); cmp_1024_0_32(out);
    test_blake2b(input_2048,k,out,32); cmp_2048_0_32(out);
    test_blake2b(input_4096,k,out,32); cmp_4096_0_32(out);
    test_blake2b(input_8192,k,out,32); cmp_8192_0_32(out);
    test_blake2b(input_16384,k,out,32); cmp_16384_0_32(out);

    printf("#----------------------------------------------------------------------#\n");

    k = key_64;
    test_blake2b(input_0,k,out,32); cmp_0_64_32(out);
    test_blake2b(input_32,k,out,32); cmp_32_64_32(out);
    test_blake2b(input_64,k,out,32); cmp_64_64_32(out);
    test_blake2b(input_128,k,out,32); cmp_128_64_32(out);
    test_blake2b(input_256,k,out,32); cmp_256_64_32(out);
    test_blake2b(input_512,k,out,32); cmp_512_64_32(out);
    test_blake2b(input_1024,k,out,32); cmp_1024_64_32(out);
    test_blake2b(input_2048,k,out,32); cmp_2048_64_32(out);
    test_blake2b(input_4096,k,out,32); cmp_4096_64_32(out);
    test_blake2b(input_8192,k,out,32); cmp_8192_64_32(out);
    test_blake2b(input_16384,k,out,32); cmp_16384_64_32(out);
    
    printf("#----------------------------------------------------------------------#\n");

    k = "";
    test_blake2b(input_0,k,out,64); cmp_0_0_64(out);
    test_blake2b(input_32,k,out,64); cmp_32_0_64(out);
    test_blake2b(input_64,k,out,64); cmp_64_0_64(out);
    test_blake2b(input_128,k,out,64); cmp_128_0_64(out);
    test_blake2b(input_256,k,out,64); cmp_256_0_64(out);
    test_blake2b(input_512,k,out,64); cmp_512_0_64(out);
    test_blake2b(input_1024,k,out,64); cmp_1024_0_64(out);
    test_blake2b(input_2048,k,out,64); cmp_2048_0_64(out);
    test_blake2b(input_4096,k,out,64); cmp_4096_0_64(out);
    test_blake2b(input_8192,k,out,64); cmp_8192_0_64(out);
    test_blake2b(input_16384,k,out,64); cmp_16384_0_64(out); 

    printf("#----------------------------------------------------------------------#\n");

    k = key_64;
    test_blake2b(input_0,k,out,64); cmp_0_64_64(out);
    test_blake2b(input_32,k,out,64); cmp_32_64_64(out);
    test_blake2b(input_64,k,out,64); cmp_64_64_64(out);
    test_blake2b(input_128,k,out,64); cmp_128_64_64(out);
    test_blake2b(input_256,k,out,64); cmp_256_64_64(out);
    test_blake2b(input_512,k,out,64); cmp_512_64_64(out);
    test_blake2b(input_1024,k,out,64); cmp_1024_64_64(out);
    test_blake2b(input_2048,k,out,64); cmp_2048_64_64(out);
    test_blake2b(input_4096,k,out,64); cmp_4096_64_64(out);
    test_blake2b(input_8192,k,out,64); cmp_8192_64_64(out);
    test_blake2b(input_16384,k,out,64); cmp_16384_64_64(out); 
}
