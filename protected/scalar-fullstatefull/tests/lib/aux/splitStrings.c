#include "splitStrings.h"

char** split_string(char* in, size_t inlen, int updates_number) {
    char** ret = malloc(updates_number * sizeof(char*));

    int division = (int) inlen/updates_number; int rest = inlen%updates_number;
    int last_block = division + rest;

    char* block;
    char* lastBlock; 


    int i;
    for (i = 0; i < updates_number-1; i++){
        block = calloc(division, sizeof(char));
        for(int j = 0; j < division; j++){
            block[j] = *(in + (division * i) + j);
        }
        ret[i] = malloc(division * sizeof(char));
        ret[i] = block;
    }
 
    lastBlock = calloc(last_block,sizeof(char));
    for (int j = 0; j < last_block; j++){
        int position = (division*i) + j;
        lastBlock[j] = *(in + position);
    } 
    
    ret[i] = malloc(last_block * sizeof(char));
    ret[i] = lastBlock;

    return ret;
}