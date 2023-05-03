#include "tests.h"

void cpu_test_one_update(char* in, char* k, uint8_t* out, uint64_t outlen ) {

	uint64_t t[NTESTS];

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;
	uint64_t output = (uint64_t) out;

	uint64_t flag;
	uint64_t ctxt[28] = {0};

	for(int i = 0; i < NTESTS; i++){
		t[i] = cpucycles();
		flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);    
    	flag = blake2b_update_jazz((uint64_t)ctxt,input,inlen);
    	flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);
	}

	print_results("Blake2b Scalar-fullstateful [one-update]: ", t, NTESTS);
}


float time_test_one_update(char* in, char* k, uint8_t* out, uint64_t outlen) {
	time_t t;
	float sum, media;

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;

	sum = 0;
	uint64_t flag;
	uint64_t ctxt[28] = {0};

	

	for(int j = 0; j < NTESTS; j++){
		t = clock();

		flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);    
    	flag = blake2b_update_jazz((uint64_t)ctxt,input,inlen);
    	flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);

		t = clock() - t;
		
		sum += ((float) t) /CLOCKS_PER_SEC *1000;
	}

	media = sum/NTESTS;

	return media;
}

void test_time(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
    
  
	float a1 = time_test_one_update(input_0,key_64,out,outlen);
	printf("Blake2b scalar-statefull version: %f ms\n",a1);
}

void test_cpu(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;

	cpu_test_one_update(input_0, key_64, out, outlen);
}


float time_test_multi_updates(char* in, char* k, uint8_t* out, uint64_t outlen, int updates_number) {
	time_t t;
	float sum, media;

	uint64_t inlen = (uint64_t) strlen(in); //uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;

	sum = 0;
	uint64_t flag;
	uint64_t ctxt[28] = {0};

	char** multi_inputs = split_string(in,strlen(in),updates_number);

	for(int j = 0; j < NTESTS; j++){
		t = clock();

		flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);
		for(int i = 0; i < updates_number; i++)   
    		flag = blake2b_update_jazz((uint64_t)ctxt,(uint64_t)multi_inputs[i],(uint64_t)strlen(multi_inputs[i]));
    	flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);

		t = clock() - t;
		
		sum += ((float) t) /CLOCKS_PER_SEC *1000;
	}

	media = sum/NTESTS;

	return media;
}

void cpu_test_multi_updates(char* in, char* k, uint8_t* out, uint64_t outlen, int updates_number ) {

	uint64_t t[NTESTS];

	uint64_t inlen = (uint64_t) strlen(in); uint64_t input = (uint64_t) in;
	uint64_t keylen = (uint64_t) strlen(k); uint64_t key = (uint64_t) k;
	uint64_t output = (uint64_t) out;

	uint64_t flag;
	uint64_t ctxt[28] = {0};

	char** multi_inputs = split_string(in,strlen(in),updates_number);

	for(int i = 0; i < NTESTS; i++){
		t[i] = cpucycles();
		flag = blake2b_init_jazz((uint64_t)ctxt, outlen, key, keylen);    
    	for(int i = 0; i < updates_number; i++)   
    		flag = blake2b_update_jazz((uint64_t)ctxt,(uint64_t)multi_inputs[i],(uint64_t)strlen(multi_inputs[i]));
    	flag = blake2b_finish_jazz((uint64_t)ctxt, (uint64_t)out);
	}

	print_results("Blake2b Scalar-fullstateful [multi-update]: ", t, NTESTS);
}

void test_all_times_one_update(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
  	
  	char* key = key_64;  //key_64
  
	float a1 = time_test_one_update(input_0,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_32,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_64,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_128,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_256,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_512,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_1024,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_2048,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_4096,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_8192,key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);

	a1 = time_test_one_update(input_16384, key,out,outlen);
	printf("Blake2b scalar-fullstatefull version [1 update]: %f ms\n",a1);
}

void test_all_cpu_one_update(uint64_t outlen){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
  	char* key = "";
	cpu_test_one_update(input_0,key,out,outlen);
	cpu_test_one_update(input_32,key,out,outlen);
	cpu_test_one_update(input_64,key,out,outlen);
	cpu_test_one_update(input_128,key,out,outlen);
	cpu_test_one_update(input_256,key,out,outlen);
	cpu_test_one_update(input_512,key,out,outlen);
	cpu_test_one_update(input_1024,key,out,outlen);
	cpu_test_one_update(input_2048,key,out,outlen);
	cpu_test_one_update(input_4096,key,out,outlen);
	cpu_test_one_update(input_8192,key,out,outlen);
	cpu_test_one_update(input_16384, key,out,outlen);

	key = key_64;
	cpu_test_one_update(input_0,key,out,outlen);
	cpu_test_one_update(input_32,key,out,outlen);
	cpu_test_one_update(input_64,key,out,outlen);
	cpu_test_one_update(input_128,key,out,outlen);
	cpu_test_one_update(input_256,key,out,outlen);
	cpu_test_one_update(input_512,key,out,outlen);
	cpu_test_one_update(input_1024,key,out,outlen);
	cpu_test_one_update(input_2048,key,out,outlen);
	cpu_test_one_update(input_4096,key,out,outlen);
	cpu_test_one_update(input_8192,key,out,outlen);
	cpu_test_one_update(input_16384, key,out,outlen);
}

void test_all_times_multi_updates(int update_number){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	uint64_t outlen = 32;
  	
  	char* key = key_64;  //key_64
  
	float a1 = time_test_one_update(input_0,key,out,outlen); //0 input... makes no sense multi updates
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_32,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_64,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_128,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_256,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_512,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_1024,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_2048,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_4096,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_8192,key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);

	a1 = time_test_multi_updates(input_16384, key,out,outlen,update_number);
	printf("Blake2b scalar-fullstatefull version [multi updates]: %f ms\n",a1);
}


void test_all_cpu_multi_updates(uint64_t outlen,int update_number){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
  	char* key; 
	  
	/*key = "";
	cpu_test_multi_updates(input_0,key,out,outlen,update_number);
	cpu_test_multi_updates(input_32,key,out,outlen,update_number);
	cpu_test_multi_updates(input_64,key,out,outlen,update_number);
	cpu_test_multi_updates(input_128,key,out,outlen,update_number);
	cpu_test_multi_updates(input_256,key,out,outlen,update_number);
	cpu_test_multi_updates(input_512,key,out,outlen,update_number);
	cpu_test_multi_updates(input_1024,key,out,outlen,update_number);
	cpu_test_multi_updates(input_2048,key,out,outlen,update_number);
	cpu_test_multi_updates(input_4096,key,out,outlen,update_number);
	cpu_test_multi_updates(input_8192,key,out,outlen,update_number);
	cpu_test_multi_updates(input_16384, key,out,outlen,update_number);*/

	key = key_64;
	cpu_test_multi_updates(input_0,key,out,outlen,update_number);
	cpu_test_multi_updates(input_32,key,out,outlen,update_number);
	cpu_test_multi_updates(input_64,key,out,outlen,update_number);
	cpu_test_multi_updates(input_128,key,out,outlen,update_number);
	cpu_test_multi_updates(input_256,key,out,outlen,update_number);
	cpu_test_multi_updates(input_512,key,out,outlen,update_number);
	cpu_test_multi_updates(input_1024,key,out,outlen,update_number);
	cpu_test_multi_updates(input_2048,key,out,outlen,update_number);
	cpu_test_multi_updates(input_4096,key,out,outlen,update_number);
	cpu_test_multi_updates(input_8192,key,out,outlen,update_number);
	cpu_test_multi_updates(input_16384, key,out,outlen,update_number);
}