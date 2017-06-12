#include "operations.h"
#include "api.h"
#include "fastrandombytes.h"

#include <stdio.h>
#include <stdint.h>

int main()
{
    //#define CRYPTO_SECRETKEYBYTES 5984 bytes      = ~16 Kbytes
    //#define CRYPTO_PUBLICKEYBYTES 311736 bytes    = ~780Kbytes
    //(1024Kb flash, 128Kb RAM)

    //Init keys
    unsigned char pk[CRYPTO_PUBLICKEYBYTES];
    unsigned char sk[CRYPTO_SECRETKEYBYTES];
    //Generate keys
    crypto_encrypt_keypair(pk, sk);
    //output keys
    sendPKey(pk);
    sendSKey(sk);

    return 0;
}

void sendPKey(unsigned char* key)
{
    FILE *f = fopen("key_p.txt", "w");
    int i;
    for (i=0;i<CRYPTO_PUBLICKEYBYTES;i=i+1)
    {
        fprintf(f, "%d\n", key[i]);
    }
    fclose(f);
}

void sendSKey(unsigned char* key)
{
    FILE *f = fopen("key_s.txt", "w");

    int i;
    for (i=0;i<CRYPTO_SECRETKEYBYTES;i=i+1)
    {
        fprintf(f, "%d\n", key[i]);
    }
    fclose(f);
}
