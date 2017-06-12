#include "operations.h"
#include "api.h"
#include "fastrandombytes.h"
#include "stm32f4xx_conf.h"
#include "stm32wrapper.h"

#include <stdio.h>
#include <stdint.h>

int main()
{
    //#define CRYPTO_SECRETKEYBYTES 5984 bytes      = ~16 Kbytes
    //#define CRYPTO_PUBLICKEYBYTES 311736 bytes    = ~780Kbytes
    //(1024K flash, 128K RAM)

/*  Flash Memory sector locations
    #define ADDR_FLASH_SECTOR_0     ((uint32_t)0x08000000) /* Base @ of Sector 0, 16 Kbytes
    #define ADDR_FLASH_SECTOR_1     ((uint32_t)0x08004000) /* Base @ of Sector 1, 16 Kbytes
    #define ADDR_FLASH_SECTOR_2     ((uint32_t)0x08008000) /* Base @ of Sector 2, 16 Kbytes
    #define ADDR_FLASH_SECTOR_3     ((uint32_t)0x0800C000) /* Base @ of Sector 3, 16 Kbytes
    #define ADDR_FLASH_SECTOR_4     ((uint32_t)0x08010000) /* Base @ of Sector 4, 64 Kbytes
    #define ADDR_FLASH_SECTOR_5     ((uint32_t)0x08020000) /* Base @ of Sector 5, 128 Kbytes
    #define ADDR_FLASH_SECTOR_6     ((uint32_t)0x08040000) /* Base @ of Sector 6, 128 Kbytes
    #define ADDR_FLASH_SECTOR_7     ((uint32_t)0x08060000) /* Base @ of Sector 7, 128 Kbytes
    #define ADDR_FLASH_SECTOR_8     ((uint32_t)0x08080000) /* Base @ of Sector 8, 128 Kbytes
    #define ADDR_FLASH_SECTOR_9     ((uint32_t)0x080A0000) /* Base @ of Sector 9, 128 Kbytes
    #define ADDR_FLASH_SECTOR_10    ((uint32_t)0x080C0000) /* Base @ of Sector 10, 128 Kbytes
    #define ADDR_FLASH_SECTOR_11    ((uint32_t)0x080E0000) /* Base @ of Sector 11, 128 Kbytes

    #define VoltageRange_1        ((uint8_t)0x00)  /*!< Device operating range: 1.8V to 2.1V
    #define VoltageRange_2        ((uint8_t)0x01)  /*!<Device operating range: 2.1V to 2.7V
    #define VoltageRange_3        ((uint8_t)0x02)  /*!<Device operating range: 2.7V to 3.6V
    #define VoltageRange_4        ((uint8_t)0x03)  /*!<Device operating range: 2.7V to 3.6V +   External Vpp

*/
    //Init keys
    unsigned char p_k[CRYPTO_PUBLICKEYBYTES];
    unsigned char s_k[CRYPTO_SECRETKEYBYTES];
    unsigned char*pk = p_k;
    unsigned char*sk = s_k;

    //Generate keys
    crypto_encrypt_keypair(pk, sk);
    receive_keys();

    //printf("pkey is: %d\n", *pk);
    //printf("skey is: %d\n", *sk); 

    //Store keys in flash
    storeKeys(pk, sk);

    return 0;
}

void receiveKeys()
{
    //example: usart_bidirectional.c
    //Setup
    clock_setup();
    gpio_setup();
    usart_setup(115200);
    unsigned char x;
    clearFlash();

    //send single char to signal ready
    send_USART_bytes((unsigned char*)"\n", 1);

    FLASH_Unlock();

    //receive sKey
    for (i = 0; i < CRYPTO_SECRETKEYBYTES; i = i + 1;)
    {
        recv_USART_bytes(&x, 1);
        FLASH_ProgramByte(SECRET_KEY_ADDRESS + i, x);
    }

    //receive pKey
    for (i = 0; i < CRYPTO_PUBLICKEYBYTES; i = i + 1;)
    {
        recv_USART_bytes(&x, 1);
        FLASH_ProgramByte(PUBLIC_KEY_ADDRESS + i, x);
    }
    
    FLASH_Lock();
}

//Clear sectors with keys, and flags
void clearFlash()
{
    FLASH_Unlock();
    FLASH_ClearFlag( FLASH_FLAG_EOP | FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR);
    FLASH_EraseSector(FLASH_Sector_0, VoltageRange_3);
    FLASH_EraseSector(FLASH_Sector_6, VoltageRange_3);
    FLASH_EraseSector(FLASH_Sector_7, VoltageRange_3);
    FLASH_EraseSector(FLASH_Sector_8, VoltageRange_3);
    FLASH_EraseSector(FLASH_Sector_9, VoltageRange_3);
    FLASH_EraseSector(FLASH_Sector_10, VoltageRange_3);
    FLASH_Lock();
}


void retreivePkey(unsigned char* key)
{
    int i;
    for (i = 0; i < CRYPTO_PUBLICKEYBYTES; i = i + 1;)
    {
        key[i]= *(int16_t *)(PUBLIC_KEY_ADDRESS + i);
    }
}

void retreiveSkey(unsigned char* key, int length)
{
    int i;
    for (i = 0; i < CRYPTO_SECRETKEYBYTES; i = i + 1;)
    {
        key[i]= *(int16_t *)(SECRET_KEY_ADDRESS + i);
    }
}
