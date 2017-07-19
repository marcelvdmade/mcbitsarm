#include "operations.h"
#include "api.h"
#include "fastrandombytes.h"
#include "keygen.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

int main(void)
{
    //#define CRYPTO_SECRETKEYBYTES 5984 bytes      = ~16 Kbytes
    //#define CRYPTO_PUBLICKEYBYTES 311736 bytes    = ~780Kbytes
    //128Kb RAM available

    //Init data. M = 1939 (2048 - 109) so that c = 2048
    unsigned const char * m = (unsigned const char *) "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada aliquam tortor nec ornare. Donec eu dignissim ipsum. Etiam dictum rhoncus iaculis. Maecenas faucibus nunc at libero dapibus, quis malesuada nisl ultrices. Aliquam consequat enim nec massa lobortis, a dapibus sapien tempor. Nullam neque dui, pellentesque non sem id, mattis facilisis elit. Nulla cursus sodales odio, ac convallis turpis hendrerit luctus. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam ornare erat porttitor nisi maximus, eu accumsan enim laoreet. Sed malesuada, ante non consectetur maximus, erat libero cursus velit, ut suscipit libero lacus quis felis.Nunc maximus aliquam lorem eget sollicitudin. Cras at arcu fermentum, sagittis sem sit amet, luctus nibh. Morbi porta, turpis sit amet aliquet tempor, felis nibh tempor quam, eu pellentesque nibh sem ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc fermentum porta lectus vel pharetra. Donec vestibulum porta dolor, a viverra neque molestie at. Integer ut blandit erat. Maecenas sodales vestibulum massa, ac bibendum nibh. Curabitur at dolor ultricies urna mollis efficitur sed ac lorem. In aliquam viverra pellentesque.Integer quis neque consequat, tempor lectus lobortis, tincidunt neque. Etiam a viverra arcu. Proin consectetur varius vehicula. Morbi non faucibus lectus. Etiam rutrum interdum odio non feugiat. In hac habitasse platea dictumst. Donec sodales libero et magna malesuada dignissim. Nunc placerat iaculis velit, et imperdiet mi vestibulum a. Praesent sit amet nunc vel lacus euismod molestie quis eget mauris. Praesent eget justo feugiat, sagittis turpis vel, mattis velit. Sed luctus libero et urna iaculis maximus. Aliquam convallis, massa ut facilisis placerat, tellus libero luctus massa, eu dictum ex leo venenatis purus. Sed condimentum...";
    unsigned const long long mlen = 1939;
    unsigned char c[2048];
    unsigned long long clength = 2048;
    unsigned long long * clen = &clength;

    //Init keys
    unsigned char pk[CRYPTO_PUBLICKEYBYTES];
    unsigned char sk[CRYPTO_SECRETKEYBYTES];
    //Generate keys
    printf("> Generating keys..\n");
    mcBits_generate_keypair(pk, sk);
    //output keys
    printf("> Writing keys..\n");
    storePKey(pk);
    storeSKey(sk);
    //encrypt m and store it
    printf("> Encrypting..\n");
    mcBits_encrypt(c,clen,m,mlen,pk);
    printf("> Storing messagetext..\n");
    storeMessage(m, &mlen);
    printf("> Storing ciphertext..\n");
    storeCipher(c, clen);
    printf("> All done! Output is written to ../output/\n");
    return 0;
}

void storePKey(unsigned char* key)
{
    FILE *f = fopen("./../output/key_p.txt", "w");
    //FILE *g = fopen("./../output/key_p_newlines.txt", "w");
    int i;
    for (i=0;i<CRYPTO_PUBLICKEYBYTES;i=i+1)
    {
        fprintf(f, "%u", key[i]);
        //fprintf(g, "%u\n", key[i]);
    }
    fclose(f);
    //fclose(g);
}

void storeSKey(unsigned char* key)
{
    FILE *f = fopen("./../output/key_s.txt", "w");
    // FILE *g = fopen("./../output/key_s_newlines.txt", "w");
    // FILE *h = fopen("./../output/key_s_newlines_padded.txt", "w");
    FILE *j = fopen("./../output/key_s_hex.txt", "w");
    int i;
    for (i=0;i<CRYPTO_SECRETKEYBYTES;i=i+1)
    {
        fprintf(f, "%u", key[i]);
        // fprintf(g, "%u\n", key[i]);
        // fprintf(h, "%03u\n", key[i]);
        fprintf(j, "0x%x,", key[i] & 0xff);
    }
    fclose(f); 
    //fclose(g); fclose(h); 
    fclose(j);
}

void storeMessage(const unsigned char* m, const unsigned long long* mlen)
{
    FILE *f = fopen("./../output/message.txt", "w");
    int i;
    for (i=0;i< *mlen;i=i+1)
    {
        fprintf(f, "%c", m[i]);
    }
    fclose(f);
}

void storeCipher(unsigned char* c, unsigned long long* clen)
{
    // FILE *f = fopen("./../output/cipher.txt", "w");
    // FILE *g = fopen("./../output/cipher_newlines.txt", "w");
    // FILE *h = fopen("./../output/cipher_newlines_padded.txt", "w");
    FILE *j = fopen("./../output/cipher_hex.txt", "w");
    int i;
    for (i=0;i< *clen;i=i+1)
    {
        // fprintf(f, "%u", c[i]);
        // fprintf(g, "%u\n", c[i]);
        // fprintf(h, "%03u\n", c[i]);
        fprintf(j, "0x%x,", c[i] & 0xff);
    }
    //fclose(f); fclose(g); fclose(h);
    fclose(j);
}