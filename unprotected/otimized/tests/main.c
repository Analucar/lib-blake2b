#include "./lib/tests.h"

int main(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	
    char* key;
    key = "";
    test_functional(input_16384,key,out,64);

	test_examples();

    test_all_cpu_one_update(16);
    test_all_cpu_one_update(32);
    test_all_cpu_one_update(64);

    test_all_times_one_update();

    test_all_cpu_multi_updates(32,2);
    test_all_cpu_multi_updates(32,4);
    test_all_cpu_multi_updates(32,8);

    test_all_times_multi_updates(2);
    test_all_times_multi_updates(4);
    test_all_times_multi_updates(8);

	return 0;
}