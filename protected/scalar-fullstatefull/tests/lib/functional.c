#include "tests.h"

void test_blake2b(char* in, char* k, uint8_t* out, uint64_t outlen) {
	uint64_t ctxt[28] = {0};
    
    uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;
    
    uint64_t flag;
    
    flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);    
    flag = blake2b_update_jazz((uint64_t)ctxt,input,inlen);
    flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);
}

void test_functional(char* in, char* k, uint8_t* out, uint64_t outlen) {
	test_blake2b(in,k,out,outlen);
	for(int i = 0; i < outlen; i++) 
		printf("%02hhx",out[i]);
	printf("\n");
}


void test_examples() {
    printf("#----------------------- Testing single update ------------------------#\n");
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
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

void test_multi_updates_blake2b(char* in, char* k, uint8_t* out, uint64_t outlen, int updates_number){
    uint64_t inlen = (uint64_t) strlen(in); //uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;

	uint64_t flag;
	uint64_t ctxt[28] = {0};

    char** multi_inputs = split_string(in,strlen(in),updates_number);
    //  init
	flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);
	for(int i = 0; i < updates_number; i++){
        //  multi-updates
        flag = blake2b_update_jazz((uint64_t)ctxt,(uint64_t)multi_inputs[i],(uint64_t)strlen(multi_inputs[i]));
    }
    
    //  finishs
    flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);
}

void test_multi_updates(char* in, char* k, uint8_t* out, uint64_t outlen, int updates_number) {
    test_multi_updates_blake2b(in,k,out,outlen,updates_number);

    for(int i = 0; i < outlen; i++) 
		printf("%02hhx",out[i]);
	printf("\n");
}

void test_multi_updates_examples(int updates_number){
    printf("#----------------------- Testing multi-updates ------------------------#\n");
    uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
	char* k = "";
    test_multi_updates_blake2b(input_0,k,out,32,updates_number); cmp_0_0_32(out);
    test_multi_updates_blake2b(input_32,k,out,32,updates_number); cmp_32_0_32(out);
    test_multi_updates_blake2b(input_64,k,out,32,updates_number); cmp_64_0_32(out);
    test_multi_updates_blake2b(input_128,k,out,32,updates_number); cmp_128_0_32(out);
    test_multi_updates_blake2b(input_256,k,out,32,updates_number); cmp_256_0_32(out);
    test_multi_updates_blake2b(input_512,k,out,32,updates_number); cmp_512_0_32(out);
	test_multi_updates_blake2b(input_1024,k,out,32,updates_number); cmp_1024_0_32(out);
    test_multi_updates_blake2b(input_2048,k,out,32,updates_number); cmp_2048_0_32(out);
    test_multi_updates_blake2b(input_4096,k,out,32,updates_number); cmp_4096_0_32(out);
    test_multi_updates_blake2b(input_8192,k,out,32,updates_number); cmp_8192_0_32(out);
    test_multi_updates_blake2b(input_16384,k,out,32,updates_number); cmp_16384_0_32(out);

    printf("#----------------------------------------------------------------------#\n");

    k = key_64;
    test_multi_updates_blake2b(input_0,k,out,32,updates_number); cmp_0_64_32(out);
    test_multi_updates_blake2b(input_32,k,out,32,updates_number); cmp_32_64_32(out);
    test_multi_updates_blake2b(input_64,k,out,32,updates_number); cmp_64_64_32(out);
    test_multi_updates_blake2b(input_128,k,out,32,updates_number); cmp_128_64_32(out);
    test_multi_updates_blake2b(input_256,k,out,32,updates_number); cmp_256_64_32(out);
    test_multi_updates_blake2b(input_512,k,out,32,updates_number); cmp_512_64_32(out);
    test_multi_updates_blake2b(input_1024,k,out,32,updates_number); cmp_1024_64_32(out);
    test_multi_updates_blake2b(input_2048,k,out,32,updates_number); cmp_2048_64_32(out);
    test_multi_updates_blake2b(input_4096,k,out,32,updates_number); cmp_4096_64_32(out);
    test_multi_updates_blake2b(input_8192,k,out,32,updates_number); cmp_8192_64_32(out);
    test_multi_updates_blake2b(input_16384,k,out,32,updates_number); cmp_16384_64_32(out);
    
    printf("#----------------------------------------------------------------------#\n");

    k = "";
    test_multi_updates_blake2b(input_0,k,out,64,updates_number); cmp_0_0_64(out);
    test_multi_updates_blake2b(input_32,k,out,64,updates_number); cmp_32_0_64(out);
    test_multi_updates_blake2b(input_64,k,out,64,updates_number); cmp_64_0_64(out);
    test_multi_updates_blake2b(input_128,k,out,64,updates_number); cmp_128_0_64(out);
    test_multi_updates_blake2b(input_256,k,out,64,updates_number); cmp_256_0_64(out);
    test_multi_updates_blake2b(input_512,k,out,64,updates_number); cmp_512_0_64(out);
    test_multi_updates_blake2b(input_1024,k,out,64,updates_number); cmp_1024_0_64(out);
    test_multi_updates_blake2b(input_2048,k,out,64,updates_number); cmp_2048_0_64(out);
    test_multi_updates_blake2b(input_4096,k,out,64,updates_number); cmp_4096_0_64(out);
    test_multi_updates_blake2b(input_8192,k,out,64,updates_number); cmp_8192_0_64(out);
    test_multi_updates_blake2b(input_16384,k,out,64,updates_number); cmp_16384_0_64(out); 

    printf("#----------------------------------------------------------------------#\n");

    k = key_64;
    test_multi_updates_blake2b(input_0,k,out,64,updates_number); cmp_0_64_64(out);
    test_multi_updates_blake2b(input_32,k,out,64,updates_number); cmp_32_64_64(out);
    test_multi_updates_blake2b(input_64,k,out,64,updates_number); cmp_64_64_64(out);
    test_multi_updates_blake2b(input_128,k,out,64,updates_number); cmp_128_64_64(out);
    test_multi_updates_blake2b(input_256,k,out,64,updates_number); cmp_256_64_64(out);
    test_multi_updates_blake2b(input_512,k,out,64,updates_number); cmp_512_64_64(out);
    test_multi_updates_blake2b(input_1024,k,out,64,updates_number); cmp_1024_64_64(out);
    test_multi_updates_blake2b(input_2048,k,out,64,updates_number); cmp_2048_64_64(out);
    test_multi_updates_blake2b(input_4096,k,out,64,updates_number); cmp_4096_64_64(out);
    test_multi_updates_blake2b(input_8192,k,out,64,updates_number); cmp_8192_64_64(out);
    test_multi_updates_blake2b(input_16384,k,out,64,updates_number); cmp_16384_64_64(out);
}
