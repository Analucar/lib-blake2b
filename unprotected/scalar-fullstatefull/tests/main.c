#include "./lib/tests.h"


int main(){
	uint8_t* out = (uint8_t*) calloc(0x40, sizeof(uint8_t));
	
    char* key;
    key = "";
    //test_functional(input_1024,key,out,strlen(input_1024));

	test_examples();
    test_all_times_one_update();
    printf("\n\n");
    test_multi_updates_examples(1);
    test_all_times_multi_updates(2);

    printf("\n\n");
    test_all_cpu_one_update(16);
    test_all_cpu_one_update(32);
    test_all_cpu_one_update(64);

    test_all_cpu_multi_updates(32,2);
    test_all_cpu_multi_updates(32,4);
    test_all_cpu_multi_updates(32,8);


	return 0;
}