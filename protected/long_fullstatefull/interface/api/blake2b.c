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

int blake2b_longv2(void *pout, size_t outlen, const void *in, size_t inlen) {
    uint8_t *out = (uint8_t *)pout;
    blake2b_state blake_state;
    uint8_t outlen_bytes[sizeof(uint32_t)] = {0};
    int ret = -1;

    if (outlen > UINT32_MAX) {
        goto fail;
    }

    /* Ensure little-endian byte order! */
    store32(outlen_bytes, (uint32_t)outlen);

#define TRY(statement)                                                         \
    do {                                                                       \
        ret = statement;                                                       \
        if (ret < 0) {                                                         \
            goto fail;                                                         \
        }                                                                      \
    } while ((void)0, 0)

    if (outlen <= 64) {
        TRY(blake2b_init(&blake_state, outlen));
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
        TRY(blake2b_update(&blake_state, in, inlen));
        TRY(blake2b_final(&blake_state, out, outlen));
    } else {
        uint32_t toproduce;
        uint8_t out_buffer[64];
        uint8_t in_buffer[64];
        TRY(blake2b_init(&blake_state, 64));
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
        TRY(blake2b_update(&blake_state, in, inlen));
        TRY(blake2b_final(&blake_state, out_buffer, 64));
        memcpy(out, out_buffer, 64 / 2);
        out += 64 / 2;
        toproduce = (uint32_t)outlen - 64 / 2;

        while (toproduce > 64) {
            memcpy(in_buffer, out_buffer, 64);
            TRY(blake2b(out_buffer, 64, in_buffer,
                        64, NULL, 0));
            memcpy(out, out_buffer, 64 / 2);
            out += 64 / 2;
            toproduce -= 64 / 2;
        }

        memcpy(in_buffer, out_buffer, 64);
        TRY(blake2b(out_buffer, toproduce, in_buffer, 64, NULL,
                    0));
        memcpy(out, out_buffer, toproduce);
    }
    
fail:
    //clear_internal_memory(&blake_state, sizeof(blake_state));
    return ret;
    
#undef TRY
}