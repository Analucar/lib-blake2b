#include "tests.h"

void cpu_test_long(char* in, uint8_t* out, uint64_t outlen){
    uint64_t t[NTESTS];
    
    uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
    
	uint64_t flag;
	uint64_t ctxt[28] = {0};

	for(int i = 0; i < NTESTS; i++){
		t[i] = cpucycles();
    	flag = blake2b_long_jazz((uint64_t)ctxt, (uint64_t) out, outlen, input, inlen);
	}

	print_results("Blake2b_long otimized: ", t, NTESTS);
}

float time_test_long(char* in, uint8_t* out, uint64_t outlen) {
	time_t t;
	float sum, media;

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
    
	uint64_t flag;
	uint64_t ctxt[28] = {0};


	sum = 0;

	for(int j = 0; j < NTESTS; j++){
		t = clock();

		flag = blake2b_long_jazz((uint64_t)ctxt, (uint64_t) out, outlen, input, inlen);

		t = clock() - t;
		
		sum += ((float) t) /CLOCKS_PER_SEC *1000;
	}

	media = sum/NTESTS;

	return media;
}

void test_long_time(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
    
  
	float a1 = time_test_long(input_0,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);
}

void test_long_cpu(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;

	cpu_test_long(input_0, out, outlen);
}

void test_all_long_times(uint64_t outlen){
	uint8_t* out = (uint8_t*) calloc(outlen, sizeof(uint8_t));

  
	float a1 = time_test_long(input_0,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_32,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_64,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_128,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_256,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_512,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_1024,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_2048,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_4096,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_8192,out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);

	a1 = time_test_long(input_16384, out,outlen);
	printf("Blake2b_long otimized version: %f ms\n",a1);
}

void test_all_long_cpus(uint64_t outlen){
	uint8_t* out = (uint8_t*) calloc(outlen, sizeof(uint8_t));

	cpu_test_long(input_0,out,outlen);
	
	cpu_test_long(input_32,out,outlen);

	cpu_test_long(input_64,out,outlen);

	cpu_test_long(input_128,out,outlen);
	
	cpu_test_long(input_256,out,outlen);

	cpu_test_long(input_512,out,outlen);

	cpu_test_long(input_1024,out,outlen);

	cpu_test_long(input_2048,out,outlen);

	cpu_test_long(input_4096,out,outlen);

	cpu_test_long(input_8192,out,outlen);

	cpu_test_long(input_16384,out,outlen);
}