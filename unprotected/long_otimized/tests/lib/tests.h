#ifndef TESTS_H
#define TESTS_H

#include "performance/cpucycles.h"
#include "performance/speed_print.h"
#include "functional/outputs.h"
#include "string.h"

/*
	Export Jasmin functions
*/
extern uint64_t blake2b_init_jazz(uint64_t ctxt, uint64_t outlen, uint64_t key, uint64_t keylen);
extern uint64_t blake2b_update_jazz(uint64_t ctxt, uint64_t input, uint64_t inputlen);
extern uint64_t blake2b_finish_jazz(uint64_t ctxt, uint64_t output);
extern uint64_t blake2b_long_jazz(uint64_t ctxt,  uint64_t out, uint64_t outlen, uint64_t input, uint64_t inputlen);

/*
	Some examples of inputs
*/
#define key_64 "tOZmPlol7A2CTD4nR3IRrYiRSD1P3RGQkAIZMOHijdFhZzL4R1W45PrYdW0CAjRH"
#define input_16384 "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"
#define input_8192 "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"
#define input_4096 "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"
#define input_2048 "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"
#define input_1024 "Rh8mUzFBHNqgQU2j6QGqRWy3iMlfzrxiq0qF6B1e8viuZKqsZJKqRiSBSZRw0YYgWFoyXOAEIi9vwOkdpUwcxCR9kMBtSj6QHEHA9uHSAaJs1v7beKeN7yUyKf3FUgiEe8ePLIqRiBavVh1VUedMCqF9GVNSEgSNsvgqSKJUgpTGULlx8RC3lFMCDGdGNK3lIOOYf75u2XnyNzVCgrx6uQE2WN7VyICwYG9aU4KxdzRFlwxyYfZ4DQXqBrXnNxaAbz7arVAUbC3EFoE3OrxLrXRO3oXcyud9IR7kHZoaWrD7bwikA9ktGjHmf1Sdf1farTjJfGmkpp66Ls6LAmJN93HfiMDBeIgxOzuMdvuwhsEv81IMLCC7Ctnxmv3pvYP8TJyU36CJpu7yQB0IdNRBauZotwRrnvGDW6JqSbIokLjncohQdVGRt8u1FHtK59a1Z6DLVe2gd1zgfBhDwh5eU4JOdgMuyHVjvC7Meq8IByPGD759KWlG1sVO4IqGOEUyFbdqdr2yQOLxBEc7B8JN7dcpaljXey04X93nuRZP9jn5XpVU2ImxDadlq89JgjOvjAXcLpa1VO9BqSeNJrUvkXdZnaOspKoFWD5HOIRVUQt8Q3mWD2jqCqPyRfKxBp8YrwabYDlbsRlqeezbzS8Jd9HvuzwfKRcMBOmycNrtj9fyMKpslQngz1Yw77Nk69OrRxA39ifDV6MNnKAPPswHGiuLpdhNrlFjos3py9sgL8jNfo62Pj3I84JemtxZIhyHmPCdiNMGrlwu8lVNhpX46svh7gjUM6hCNdwbtTbUINt4u2t81feOpWeCQotkJVO6btz7WNV5XWHXbLrmNMt6qA35517yjE3OAqbs1htsTJ7VwOeZtm8qlA6kUOm7ffEeNa8cc3O7miyB9lWjvSOZurfxk0Eicy2nBPRnxWE7IuIwredAkaCWulaaEChEXOQoBrouhaoM63cU58K0rW1u62iZPhYkPCKOTevoUn7Hurgb7d8dqRXtHhhdiuXv3iem"
#define input_512 "8ZMZqrmF4onkP3pe0om1grH1WnM4EmL8EyI60BTrx6ahiNEx0cTARLZziVV2tvFYKtZCLWGHypBaNNm49RdtG0XC7F0Satwl7oZ1IdyRxpepwWz21Tm97i3HFMDQPM9IJPMHrnT9wUs3Gqmwun7jA4Zkc0LIa6HhtdQu98sTPfHUwCsTfyi8aef113w5ik9kqpoP9yiYpz4KAWQmmTLYJWwRvuiJdTmKNShVnCqHoe1ty2OE137ZnAaSQtdVVqVuvwbuA02ynDaOyl7P5Qm0cI9YFhanLzDyQHISErTqe2RoE1N40Lne8F34fQ4QimaPdbw9eX79kJpyLdm6uYld2hq78gD5ph54Vkojl0YpsjAZO8lLzHGjIqp3YLDSE2nuHfHgUsvAyucK3zXRvpUlzsgZqs3RH5Hy8JRPEe2WHhRZxpyAbtoDEDeZiL0GKjto3jumcWgG3ZSIWFvmKJu0SSIGq6q5EoMkK5rG2eGqiWVK3AqtPpnpNLWkhRGDtyVP"
#define input_256 "Kvctjw7JWZKEeqQMAXVQr2JqDD4wNWjI9Isdot24CQGVAmSFtfn4HJ68okQzRGoItq3D80kPeWHl2xiRmd8r2i0ba20TRyWNUzWbZS18OpA34pXbe3BtQYnCTl9Z2okve4Fe31NJd9Z9ho2WeyMmJReRv3DfYSKT4OIJtefhKcSOU0GVT3qUnsNRf1uJML28fde9l3QXWz2XXSmKAwaUoeN8Ojo7VwVl9WWbBp7kHjVTzvxQby4jiHuooQw3bnsK"
#define input_128 "MNLWh8v2UUWwFIvxpmy0bNmTLVvb6qTgwYJg0SrlO1LvNcEyTNKlcrD4GlAffe7KGINam4Sy51ZwPnpTpVULiS4FSG2S9pQVWkkWJjXoatLcqHG6G4w5PBVMi1a4HUak"
#define input_64 "Y8Oj8jhDaubKDE55N1OHoEMqGIy1mIvq4JD00uoR1WCa3V5Tfzhoano3YQ6L5vxe"
#define input_32 "a6VSXSYQuQiE4FXwYvIVPEgMdmF762zn"
#define input_0 ""

#define NTESTS 1000

/*
	Test functions
*/

void test_long_time();
void test_long_cpu();


void test_all_long_times();
void test_all_long_cpus();

void test_functional_long(char* in, uint8_t* out, uint64_t outlen);

void test_long_examples();

#endif