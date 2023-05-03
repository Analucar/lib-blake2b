#include "./lib/tests.h"

int main(){
	
    printf("#----------------------------------------------------------------------#\n");
    printf("#                        Testing long version.                         #\n");
    printf("#                             Functional.                              #\n");
    printf("#----------------------------------------------------------------------#\n");
    test_long_examples(64);

    printf("#----------------------------------------------------------------------#\n");
    printf("#                        Testing long version.                         #\n");
    printf("#                               Times.                                 #\n");
    printf("#----------------------------------------------------------------------#\n");
    test_all_long_times(1024);

    test_all_long_cpus(64);
    test_all_long_cpus(128);
    test_all_long_cpus(256);
    test_all_long_cpus(512);
    test_all_long_cpus(1024);
	return 0;
}