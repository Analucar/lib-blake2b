#include "blake2b.h"

void init_ctxt_array(blake2b_state *ctx) {
    for(int i = 0; i < 28; i++){
        ctx->ctxt[i] = 0;
    }
}


/* ********************* */
/*  Interface Functions  */
/* ********************* */
int blake2b_init(blake2b_state* ctx, size_t outlen) {
    ctx->outlen = outlen;
    
    uint64_t init_flag;
    init_flag = blake2b_init_jazz((uint64_t)ctx->ctxt, (uint64_t) outlen, (uint64_t)NULL,(uint64_t) 0);
    
	if(init_flag == -1) {
        printf("Context not initialized. **outlen** is too big, it should be lesser than 64 bytes.\n");
		return -1;
	}
    
    return 0;
}

int blake2b_init_key(blake2b_state *ctx, size_t outlen, const void *key, size_t keylen){
    ctx->outlen = outlen;
    

    uint64_t init_flag;
    init_flag = blake2b_init_jazz((uint64_t)ctx->ctxt, (uint64_t) outlen, (uint64_t)key, (uint64_t) keylen);
    
    if(init_flag == -1) {
        printf("Context not initialized. **outlen** is too big, it should be lesser than 64 bytes.\n");
		return -1;
	}
	if(init_flag == -2) {
        printf("Context not initialized. **key** is too big, it should be lesser than 64 bytes.\n");
		return -1;
	}
    return 0;
}

int blake2b_update(blake2b_state* ctx, const void *in, size_t inlen) {
    uint64_t update_flag;

    update_flag = blake2b_update_jazz((uint64_t)ctx->ctxt, (uint64_t)in, (uint64_t) inlen);

    if(update_flag == -1){
		printf("Context not updated. Either not initialised or already finished.\n");
		return -1;
	}
        
    return 0;
}

int blake2b_final(blake2b_state *ctx, void *out, size_t outlen) {
    uint64_t finish_flag;
    
    finish_flag = blake2b_finish_jazz((uint64_t)ctx->ctxt,(uint64_t) out);
  
    if(finish_flag == -1){
		printf("Context not finished. Either not initialised or already finished.\n");
		return -1;
	}
    
    return 0;
}



int blake2b(void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen) {
    
    blake2b_state * ctx = malloc(sizeof( blake2b_state));
    ctx->out = out;
    init_ctxt_array(ctx);

    ctx->outlen = (uint64_t) outlen;


    uint64_t init_flag;
    init_flag = blake2b_init_jazz((uint64_t)ctx->ctxt, (uint64_t) outlen,(uint64_t) key, (uint64_t) keylen);

    if(init_flag == -1) {  //**outlen** is too big
    	printf("Context not initialized. **outlen** is too big, it should be lesser than 64 bytes.\n");
    	return -1;
    }

    if(init_flag == -2) { //**key** is too big
    	printf("Context not initialized. **key** is too big, it should be lesser than 64 bytes.\n");
    	return -1;
    }

    uint64_t update_flag;
    update_flag = blake2b_update_jazz((uint64_t)ctx->ctxt, (uint64_t)in, (uint64_t) inlen);

    uint64_t finish_flag;
    finish_flag = blake2b_finish_jazz((uint64_t)ctx->ctxt, (uint64_t) out);

    return 0;
    
}


int blake2b_long(void *pout, size_t outlen, const void *in, size_t inlen) {
    blake2b_state * ctx = malloc(sizeof( blake2b_state));
   
    uint64_t flag = blake2b_long_jazz((uint64_t)ctx->ctxt, (uint64_t)pout , (uint64_t)outlen, (uint64_t) in, (uint64_t) inlen);
    
    return 0;
}