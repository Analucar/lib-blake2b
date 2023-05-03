#include "tests.h"

void cpu_test(char* in, char* k, uint8_t* out, uint64_t outlen ) {

	uint64_t t[NTESTS];

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;
	uint64_t output = (uint64_t) out;


	for(int i = 0; i < NTESTS; i++){
		t[i] = cpucycles();
		blake2b(input, inlen, output, outlen, key, keylen);
	}

	print_results("Blake2b scalar-fullmanagement version: ", t, NTESTS);
}


float time_test(char* in, char* k, uint8_t* out, uint64_t outlen) {
	time_t t;
	float sum, media;

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;
	uint64_t output = (uint64_t) out;

	sum = 0;


	for(int j = 0; j < NTESTS; j++){
		t = clock();

		blake2b(input, inlen, output, outlen, key, keylen);

		t = clock() - t;
		
		sum += ((float) t) /CLOCKS_PER_SEC *1000;
	}

	media = sum/NTESTS;

	return media;
}

void test_time(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
    
  
	float a1 = time_test(input_0,key_64,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);
}

void test_cpu(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;

	cpu_test(input_0, key_64, out, outlen);
}


void test_all_times(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 64;
  	
	//char* key = "";
  	char* key = key_64;  //key_64
  
	float a1 = time_test(input_0,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_32,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_64,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_128,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_256,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_512,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_1024,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_2048,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_4096,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_8192,key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);

	a1 = time_test(input_16384, key,out,outlen);
	printf("Blake2b ref version: %f ms\n",a1);
}

void test_all_cpu(uint64_t outlen){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
  	char* key = "";
	cpu_test(input_0,key,out,outlen);
	cpu_test(input_32,key,out,outlen);
	cpu_test(input_64,key,out,outlen);
	cpu_test(input_128,key,out,outlen);
	cpu_test(input_256,key,out,outlen);
	cpu_test(input_512,key,out,outlen);
	cpu_test(input_1024,key,out,outlen);
	cpu_test(input_2048,key,out,outlen);
	cpu_test(input_4096,key,out,outlen);
	cpu_test(input_8192,key,out,outlen);
	cpu_test(input_16384, key,out,outlen);

	key = key_64;
	cpu_test(input_0,key,out,outlen);
	cpu_test(input_32,key,out,outlen);
	cpu_test(input_64,key,out,outlen);
	cpu_test(input_128,key,out,outlen);
	cpu_test(input_256,key,out,outlen);
	cpu_test(input_512,key,out,outlen);
	cpu_test(input_1024,key,out,outlen);
	cpu_test(input_2048,key,out,outlen);
	cpu_test(input_4096,key,out,outlen);
	cpu_test(input_8192,key,out,outlen);
	cpu_test(input_16384, key,out,outlen);
}
