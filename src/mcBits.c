#include "operations.h"
#include "api.h"
#include "stm32wrapper.h"
#include "mcBits.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

int main(void)
{
    //Set some text to encrypt, 2048 bytes following the paper
    
    char * const message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada aliquam tortor nec ornare. Donec eu dignissim ipsum. Etiam dictum rhoncus iaculis. Maecenas faucibus nunc at libero dapibus, quis malesuada nisl ultrices. Aliquam consequat enim nec massa lobortis, a dapibus sapien tempor. Nullam neque dui, pellentesque non sem id, mattis facilisis elit. Nulla cursus sodales odio, ac convallis turpis hendrerit luctus. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam ornare erat porttitor nisi maximus, eu accumsan enim laoreet. Sed malesuada, ante non consectetur maximus, erat libero cursus velit, ut suscipit libero lacus quis felis.Nunc maximus aliquam lorem eget sollicitudin. Cras at arcu fermentum, sagittis sem sit amet, luctus nibh. Morbi porta, turpis sit amet aliquet tempor, felis nibh tempor quam, eu pellentesque nibh sem ac libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc fermentum porta lectus vel pharetra. Donec vestibulum porta dolor, a viverra neque molestie at. Integer ut blandit erat. Maecenas sodales vestibulum massa, ac bibendum nibh. Curabitur at dolor ultricies urna mollis efficitur sed ac lorem. In aliquam viverra pellentesque.Integer quis neque consequat, tempor lectus lobortis, tincidunt neque. Etiam a viverra arcu. Proin consectetur varius vehicula. Morbi non faucibus lectus. Etiam rutrum interdum odio non feugiat. In hac habitasse platea dictumst. Donec sodales libero et magna malesuada dignissim. Nunc placerat iaculis velit, et imperdiet mi vestibulum a. Praesent sit amet nunc vel lacus euismod molestie quis eget mauris. Praesent eget justo feugiat, sagittis turpis vel, mattis velit. Sed luctus libero et urna iaculis maximus. Aliquam convallis, massa ut facilisis placerat, tellus libero luctus massa, eu dictum ex leo venenatis purus. Sed condimentum, lectus ut viverra sagittis, dolor ligula volutpat nisi, at dictum elit eros eget neque. Phasellus turpis duis.";

    unsigned char * const m = (unsigned char *) message;    

    unsigned long long mlength = strlen(message); 
    unsigned long long * mlen = &mlength;

    unsigned char c[2048]; //mlen + CRYPTO_BYTES
    unsigned long long clen = 2048; 

    unsigned char sk[CRYPTO_SECRETKEYBYTES];

    //ABC: Receive key and cipherText from host-side
    receiveKeys(sk, c);

    //Init cycle count
    init_clock_measurement();

    //Start measurement
    unsigned int oldcount = setup_clock_measurement();

    //Decrypt
    int res;
    res = crypto_encrypt_open(m, mlen, c, clen, sk);

    //Send cycle count
    send_clock_measurement(oldcount, 1);
    
    //Send decrypted message to hostside
    //unsigned char output[mlen+32];
    //sprintf((char *)output, "Decrypted message: %s", m);
    //send_USART_str(output);
    return 0;
}

void receiveKeys(unsigned char *sk, unsigned char *c)
{
    //example: usart_bidirectional.c
    //Setup
    clock_setup();
    gpio_setup();
    usart_setup(115200);
    unsigned char x;

    //A: send single char to signal ready
    send_USART_bytes((unsigned char*)"\n", 1);

    //B: receive sKey
    int i;
    for (i = 0; i < CRYPTO_SECRETKEYBYTES; i = i + 1)
    {
        recv_USART_bytes(&x, 1);
        sk[i]=x;
    }

    //C: receive cipherText
    for (i = 0; i < 2048; i = i + 1)
    {
        recv_USART_bytes(&x, 1);
        c[i]=x;
    }
}
