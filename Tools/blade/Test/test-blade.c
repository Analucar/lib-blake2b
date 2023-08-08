#include <stdint.h>

unsigned int array1_size = 16;
uint8_t array1[16];
uint8_t array2[256 * 512];
uint8_t temp = 0;


void victim_fun(int idx) {
    if (idx < array1_size) {                  
        temp &= array2[array1[idx] * 512];
    }
}

int main(int argn, char* args[]) {

    victim_fun(argn);
    return 0;
}