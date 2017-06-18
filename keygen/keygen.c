#include "operations.h"
#include "api.h"
#include "fastrandombytes.h"
#include "keygen.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

int main()
{
    //#define CRYPTO_SECRETKEYBYTES 5984 bytes      = ~16 Kbytes
    //#define CRYPTO_PUBLICKEYBYTES 311736 bytes    = ~780Kbytes
    //(1024Kb flash, 128Kb RAM)

    //Init data. M = 1939 (2048 - 109) so that c = 2048
    unsigned char * m = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada aliquam tortor nec ornare. Donec eu dignissim ipsum. Etiam dictum rhoncus iaculis. Maecenas faucibus nunc at libero dapibus, quis malesuada nisl ultrices. Aliquam consequat enim nec massa lobortis, a dapibus sapien tempor. Nullam neque dui, pellentesque non sem id, mattis facilisis elit. Nulla cursus sodales odio, ac convallis turpis hendrerit luctus. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam ornare erat porttitor nisi maximus, eu accumsan enim laoreet. Sed malesuada, ante non consectetur maximus, erat libero cursus velit, ut suscipit libero lacus quis felis.Nunc maximus aliquam lorem eget sollicitudin. Cras at arcu fermentum, sagittis sem sit amet, luctus nibh. Morbi porta, turpis sit amet aliquet tempor, felis nibh tempor quam, eu pellentesque nibh sem ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc fermentum porta lectus vel pharetra. Donec vestibulum porta dolor, a viverra neque molestie at. Integer ut blandit erat. Maecenas sodales vestibulum massa, ac bibendum nibh. Curabitur at dolor ultricies urna mollis efficitur sed ac lorem. In aliquam viverra pellentesque.Integer quis neque consequat, tempor lectus lobortis, tincidunt neque. Etiam a viverra arcu. Proin consectetur varius vehicula. Morbi non faucibus lectus. Etiam rutrum interdum odio non feugiat. In hac habitasse platea dictumst. Donec sodales libero et magna malesuada dignissim. Nunc placerat iaculis velit, et imperdiet mi vestibulum a. Praesent sit amet nunc vel lacus euismod molestie quis eget mauris. Praesent eget justo feugiat, sagittis turpis vel, mattis velit. Sed luctus libero et urna iaculis maximus. Aliquam convallis, massa ut facilisis placerat, tellus libero luctus massa, eu dictum ex leo venenatis purus. Sed condimentum...";
    unsigned long long mlen = strlen((char*)m);
    unsigned char * c[mlen]; //2048 chars long
    unsigned long long clength = strlen((char*)c);
    unsigned long long * clen = &clength;

    //Init keys
    unsigned char pk[CRYPTO_PUBLICKEYBYTES];
    unsigned char sk[CRYPTO_SECRETKEYBYTES];
    //Generate keys
    printf("> Generating keys..\n");
    crypto_encrypt_keypair(pk, sk);
    //output keys
    printf("> Writing keys..\n");
    storePKey(pk);
    storeSKey(sk);

    //encrypt m and store it
    printf("> Encrypting..\n");
    crypto_encrypt(c,clen,m,mlen,pk);
    printf("c len%d",*clen);
    printf("m len%d",mlen);

    printf("> Storing messagetext..\n");
    storeMessage(m, &mlen);
    printf("> Storing ciphertext..\n");
    storeCipher(c, clen);
    printf("> All done!");
    return 0;
}

void storePKey(unsigned char* key)
{
    FILE *f = fopen("./output/key_p.txt", "w");
    int i;
    for (i=0;i<CRYPTO_PUBLICKEYBYTES;i=i+1)
    {
        fprintf(f, "%d\n", key[i]);
    }
    fclose(f);
}

void storeSKey(unsigned char* key)
{
    FILE *f = fopen("./output/key_s.txt", "w");

    int i;
    for (i=0;i<CRYPTO_SECRETKEYBYTES;i=i+1)
    {
        fprintf(f, "%d\n", key[i]);
    }
    fclose(f);
}

void storeMessage(unsigned char* m, unsigned long long* mlen)
{
    FILE *f = fopen("./output/messageAsBytes.txt", "w");

    int i;
    for (i=0;i< *mlen;i=i+1)
    {
        fprintf(f, "%d\n", m[i]);
    }
    fclose(f);
}

void storeCipher(unsigned char* c, unsigned long long* clen)
{
    FILE *f = fopen("./output/cipher.txt", "w");

    int i;
    for (i=0;i< *clen;i=i+1)
    {
        fprintf(f, "%d\n", c[i]);
    }
    fclose(f);
}
