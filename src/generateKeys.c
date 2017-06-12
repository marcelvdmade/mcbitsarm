#include "operations.h"
#include "api.h"
#include "fastrandombytes.h"
#include "stm32f4xx_conf.h"

#include <stdio.h>
#include <stdint.h>

int main()
{
    //#define CRYPTO_SECRETKEYBYTES 5984 bytes      = ~5.8 Kbytes
    //#define CRYPTO_PUBLICKEYBYTES 311736 bytes    = ~304Kbytes
    //(1024K flash, 128K RAM)

    //Init keys
    unsigned char p_k[CRYPTO_PUBLICKEYBYTES];
    unsigned char s_k[CRYPTO_SECRETKEYBYTES];
    unsigned char*pk = p_k;
    unsigned char*sk = s_k;

    //Generate keys
    crypto_encrypt_keypair(pk, sk);

    return 0;
}

void printPkey(unsigned char* key)
{
    int i;
    for (i=0;i<CRYPTO_PUBLICKEYBYTES;i=i+1)
    {
            printf("%d\n", key[i]);
    }
}

void printSkey(unsigned char* key)
{
    int i;
    for (i=0;i<CRYPTO_SECRETKEYBYTES;i=i+1)
    {
        printf("%d\n", key[i]);
    }
}