#include "tests.h"

void test_blake2b_long(char* in, void* out, uint64_t outlen){
    uint64_t ctxt[28] = {0};

    uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
    
    uint64_t flag;
    flag = blake2b_long_jazz((uint64_t)ctxt, (uint64_t)out , outlen,input, inlen);
}


void test_functional_long(char* in, uint8_t* out, uint64_t outlen) {
	test_blake2b_long(in,out,outlen);
    for(int i = 0; i < outlen; i++) 
		printf("%02hhx",out[i]);
	printf("\n");
}


void test_long_examples() {
	uint8_t* out = (uint8_t*) calloc(0x80, sizeof(uint8_t));

    test_blake2b_long(input_0,out,32); long_cmp_0_32(out);
    test_blake2b_long(input_32,out,32); long_cmp_32_32(out);
    test_blake2b_long(input_64,out,32); long_cmp_64_32(out);
    test_blake2b_long(input_128,out,32); long_cmp_128_32(out);
    test_blake2b_long(input_256,out,32); long_cmp_256_32(out);
    test_blake2b_long(input_512,out,32); long_cmp_512_32(out);
	test_blake2b_long(input_1024,out,32); long_cmp_1024_32(out);
    test_blake2b_long(input_2048,out,32); long_cmp_2048_32(out);
    test_blake2b_long(input_4096,out,32); long_cmp_4096_32(out);
    test_blake2b_long(input_8192,out,32); long_cmp_8192_32(out);
    test_blake2b_long(input_16384,out,32); long_cmp_16384_32(out);

    printf("#----------------------------------------------------------------------#\n");

    test_blake2b_long(input_0,out,64); long_cmp_0_64(out);
    test_blake2b_long(input_32,out,64); long_cmp_32_64(out);
    test_blake2b_long(input_64,out,64); long_cmp_64_64(out);
    test_blake2b_long(input_128,out,64); long_cmp_128_64(out);
    test_blake2b_long(input_256,out,64); long_cmp_256_64(out);
    test_blake2b_long(input_512,out,64); long_cmp_512_64(out);
	test_blake2b_long(input_1024,out,64); long_cmp_1024_64(out);
    test_blake2b_long(input_2048,out,64); long_cmp_2048_64(out);
    test_blake2b_long(input_4096,out,64); long_cmp_4096_64(out);
    test_blake2b_long(input_8192,out,64); long_cmp_8192_64(out);
    test_blake2b_long(input_16384,out,64); long_cmp_16384_64(out);

    printf("#----------------------------------------------------------------------#\n");
    
    test_blake2b_long(input_0,out,128); long_cmp_0_128(out);
    test_blake2b_long(input_32,out,128); long_cmp_32_128(out);
    test_blake2b_long(input_64,out,128); long_cmp_64_128(out);
    test_blake2b_long(input_128,out,128); long_cmp_128_128(out);
    test_blake2b_long(input_256,out,128); long_cmp_256_128(out);
    test_blake2b_long(input_512,out,128); long_cmp_512_128(out);
    test_blake2b_long(input_1024,out,128); long_cmp_1024_128(out);
    test_blake2b_long(input_2048,out,128); long_cmp_2048_128(out);
    test_blake2b_long(input_4096,out,128); long_cmp_4096_128(out);
    test_blake2b_long(input_8192,out,128); long_cmp_8192_128(out);
    test_blake2b_long(input_16384,out,128); long_cmp_16384_128(out);
}
