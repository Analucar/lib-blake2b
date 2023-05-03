/* ---------------------------------------- */
/* ---------------------------------------- */
/* ---- JASMIN STATEFUL IMPLEMENTATION ---- */
/* ----           INTERFACE            -----*/
/* ---------------------------------------- */
/* ---------------------------------------- */

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

/* Export jasmin functions */
extern uint64_t blake2b_init_jazz(uint64_t ctxt, uint64_t outlen, uint64_t key, uint64_t keylen);
extern uint64_t blake2b_update_jazz(uint64_t ctxt, uint64_t input, uint64_t inputlen);
extern uint64_t blake2b_finish_jazz(uint64_t ctxt, uint64_t output);

typedef struct __blake2b_state {
    uint64_t ctxt[28];
    uint8_t * out;
    uint64_t outlen;
} blake2b_state;


/* Streaming API */
int blake2b_init(blake2b_state *S, size_t outlen);
int blake2b_init_key(blake2b_state *S, size_t outlen, const void *key, size_t keylen);
int blake2b_update(blake2b_state *S, const void *in, size_t inlen);
int blake2b_final(blake2b_state *S, void *out, size_t outlen);


/* Simple API */
int blake2b(void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen);
