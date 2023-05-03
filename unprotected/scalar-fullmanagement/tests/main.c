#include "./lib/tests.h"


int main(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	
    char* key;
    key = "";
    test_functional(input_16384,key,out,64);

	test_examples();

    test_all_cpu(16);
    test_all_cpu(32);
    test_all_cpu(64);
	return 0;
}