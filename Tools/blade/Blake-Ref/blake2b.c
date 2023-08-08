#include <stdint.h>   
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// state context   
typedef struct {       
    uint8_t b[128]; // input buffer       
    uint64_t h[8];  // chained state      
    uint64_t t[2];  // total number of bytes       
    size_t c;       // pointer for b[]
    size_t outlen;  // digest size   
} blake2b_ctx;

/* Necessary to blake2b_long */
static void store32(void *dst, uint32_t w) {
    #if defined(NATIVE_LITTLE_ENDIAN)
        memcpy(dst, &w, sizeof w);
    #else
        uint8_t *p = (uint8_t *)dst;
        *p++ = (uint8_t)w;
        w >>= 8;
        *p++ = (uint8_t)w;
        w >>= 8;
        *p++ = (uint8_t)w;
        w >>= 8;
        *p++ = (uint8_t)w;
    #endif
}

#ifndef ROTR64   
#define ROTR64(x, y)  ( ( (x) >> (y) ) ^ ( (x) << (64 - (y)) ))   
#endif

#define B2B_GET64(p)                            \
(((uint64_t) ((uint8_t *) (p))[0]) ^        \
(((uint64_t) ((uint8_t *) (p))[1]) << 8) ^  \
(((uint64_t) ((uint8_t *) (p))[2]) << 16) ^ \
(((uint64_t) ((uint8_t *) (p))[3]) << 24) ^ \
(((uint64_t) ((uint8_t *) (p))[4]) << 32) ^ \
(((uint64_t) ((uint8_t *) (p))[5]) << 40) ^ \
(((uint64_t) ((uint8_t *) (p))[6]) << 48) ^ \
(((uint64_t) ((uint8_t *) (p))[7]) << 56))


#define B2B_G(a, b, c, d, x, y) {   \
v[a] = v[a] + v[b] + x;         \
v[d] = ROTR64(v[d] ^ v[a], 32); \
v[c] = v[c] + v[d];             \
v[b] = ROTR64(v[b] ^ v[c], 24); \
v[a] = v[a] + v[b] + y;         \
v[d] = ROTR64(v[d] ^ v[a], 16); \
v[c] = v[c] + v[d];             \
v[b] = ROTR64(v[b] ^ v[c], 63); }


static const uint64_t blake2b_iv[8] = {
    0x6A09E667F3BCC908, 0xBB67AE8584CAA73B,
    0x3C6EF372FE94F82B, 0xA54FF53A5F1D36F1,
    0x510E527FADE682D1, 0x9B05688C2B3E6C1F,
    0x1F83D9ABFB41BD6B, 0x5BE0CD19137E2179
};


static void blake2b_compress(blake2b_ctx *ctx, int last)   {
    //printf("Start Compress. \n");
    const uint8_t sigma[12][16] = {
        { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
        { 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 },
        { 11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4 },
        { 7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8 },
        { 9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13 },
        { 2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9 },
        { 12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11 },
        { 13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10 },
        { 6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5 },
        { 10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0 },
        { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
        { 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 }
    };

    int i;
    uint64_t v[16], m[16];

    for (i = 0; i < 8; i++) {           // init work variables
        v[i] = ctx->h[i];
        v[i + 8] = blake2b_iv[i];
    }

    v[12] ^= ctx->t[0];                 // low 64 bits of offset
    v[13] ^= ctx->t[1];                 // high 64 bits
    if (last)                           // last block flag set ?
        v[14] = ~v[14];

    for (i = 0; i < 16; i++)            // get little-endian words
        m[i] = B2B_GET64(&ctx->b[8 * i]);


    for (i = 0; i < 12; i++) { // twelve rounds
    
        B2B_G( 0, 4,  8, 12, m[sigma[i][0]], m[sigma[i][ 1]]);

        B2B_G( 1, 5,  9, 13, m[sigma[i][2]], m[sigma[i][ 3]]);
    
        B2B_G( 2, 6, 10, 14, m[sigma[i][4]], m[sigma[i][ 5]]);
       
        B2B_G( 3, 7, 11, 15, m[sigma[i][6]], m[sigma[i][ 7]]);
        
        B2B_G( 0, 5, 10, 15, m[sigma[i][8]], m[sigma[i][ 9]]);
        
        B2B_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
        
        B2B_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
       
        B2B_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);       
    }       


    for( i = 0; i < 8; ++i )
        ctx->h[i] ^= v[i] ^ v[i + 8];

}


int blake2b_init(blake2b_ctx *ctx, size_t outlen, const void *key, size_t keylen) { 
    size_t i;       
    if (outlen == 0 || outlen > 64 || keylen > 64)           
        return -1;                      // illegal parameters       
    
    for (i = 0; i < 8; i++)             // state, "param block"
        ctx->h[i] = blake2b_iv[i];       
    
    ctx->h[0] ^= 0x01010000 ^ (keylen << 8) ^ outlen;
    
    ctx->t[0] = 0;                      // input count low word
    ctx->t[1] = 0;                      // input count high word      
    
    ctx->c = 0;                         // pointer within buffer
    ctx->outlen = outlen;

    for (i = keylen; i < 128; i++)      // zero input block           
        ctx->b[i] = 0;       
    
    if (keylen > 0) {           
        blake2b_update(ctx, key, keylen);           
        ctx->c = 128;                   // at the end       
    }
    return 0;   
}

int blake2b_update(blake2b_ctx *ctx, const void *in, size_t inlen) {       
    size_t i;   
    for (i = 0; i < inlen; i++) {
        if (ctx->c == 128) {            // buffer full ?
            ctx->t[0] += ctx->c;        // add counters
            if (ctx->t[0] < ctx->c)     // carry overflow ?
                ctx->t[1]++;            // high word
            blake2b_compress(ctx, 0);   // compress (not last)
            ctx->c = 0;                 // counter to zero
        }           
        ctx->b[ctx->c++] = ((const uint8_t *) in)[i];    /* ---- Spectre vulnerability ---- */   
    }
    //printf("[update] c: %d\n",ctx->c);
    return 0;
}  

int blake2b_final(blake2b_ctx *ctx, void *out)   {       
    size_t i;   
    
    ctx->t[0] += ctx->c;               // mark last block offset
    
    if (ctx->t[0] < ctx->c)             // carry overflow
        ctx->t[1]++;                    // high word
    
    while (ctx->c < 128)                // fill up with zeros
        ctx->b[ctx->c++] = 0;           /* ---- Spectre vulnerability ---- */
    
    blake2b_compress(ctx, 1);           // final block flag = 1
    
    // little endian convert and store       
    for (i = 0; i < ctx->outlen; i++) {           
        ((uint8_t *) out)[i] = (ctx->h[i >> 3] >> (8 * (i & 7))) & 0xFF;       
    }
    return 0;
}

int blake2b(void *out, size_t outlen, const void *key, size_t keylen, const void *in, size_t inlen) {
    blake2b_ctx ctx;
    
    if (blake2b_init(&ctx, outlen, key, keylen))
        return -1;

    blake2b_update(&ctx, in, inlen);

    blake2b_final(&ctx, out);
    return 0;   
}


int blake2b_long(void *pout, size_t outlen, const void *in, size_t inlen) {
    uint8_t *out = (uint8_t *)pout;
    blake2b_ctx blake_state;
    uint8_t outlen_bytes[sizeof(uint32_t)] = {0};
    int ret = -1;

    if (outlen > UINT32_MAX) {
        goto fail;
    }

    // Ensure little-endian byte order!
    store32(outlen_bytes, (uint32_t)outlen);

#define TRY(statement)                                                         \
    do {                                                                       \
        ret = statement;                                                       \
        if (ret < 0) {                                                         \
            goto fail;                                                         \
        }                                                                      \
    } while ((void)0, 0)

    if (outlen <= 64) {
        TRY(blake2b_init(&blake_state, outlen, NULL,0));
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
        TRY(blake2b_update(&blake_state, in, inlen));
        TRY(blake2b_final(&blake_state, out));
    } else {
        uint32_t toproduce;
        uint8_t out_buffer[64];
        uint8_t in_buffer[64];
        TRY(blake2b_init(&blake_state, 64, NULL, 0));
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
        TRY(blake2b_update(&blake_state, in, inlen));
        TRY(blake2b_final(&blake_state, out_buffer));
        memcpy(out, out_buffer, 64 / 2);
        out += 64 / 2;
        toproduce = (uint32_t)outlen - 64 / 2;

        while (toproduce > 64) {
            memcpy(in_buffer, out_buffer, 64);
            TRY(blake2b(out_buffer, 64, NULL, 0, in_buffer, 64));
            memcpy(out, out_buffer, 64 / 2);
            out += 64 / 2;
            toproduce -= 64 / 2;
        }

        memcpy(in_buffer, out_buffer, 64);
        TRY(blake2b(out_buffer, toproduce, NULL, 0, in_buffer, 64));
        memcpy(out, out_buffer, toproduce);
    }
    
fail:
    //clear_internal_memory(&blake_state, sizeof(blake_state));
    return ret;
    
#undef TRY
}


int main(int argc, char *argv[]){

    char in[1000];
    char key[512];

    uint8_t* out = (uint8_t*) calloc(0x20, sizeof(uint8_t));

    //char* in = "Certificação da Componente Criptográfica: Blake2b Hash Function";
    //char* key = "PassCert";

    for (int i = 0; i < 1000; i++) {     
        in[i] = argv[1][i];     
    }

    for (int i = 0; i < 512; i++) {     
        key[i] = argv[2][i];     
    }
    
    blake2b(out, 0x20, key, strlen(key), in, strlen(in));
}