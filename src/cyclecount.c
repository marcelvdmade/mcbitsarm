#include "cyclecount.h"
#include "stm32wrapper.h"
#include <stdio.h>

//Only call this once
void init_clock_measurement(void)
{
	clock_setup();
    gpio_setup();
    usart_setup(115200);
    DWT_CYCCNT = 0;
}

unsigned int setup_clock_measurement(void)
{
    SCS_DEMCR |= SCS_DEMCR_TRCENA;
    //DWT_CYCCNT = 0;
    DWT_CTRL |= DWT_CTRL_CYCCNTENA;

    unsigned int oldcount = DWT_CYCCNT;
    return oldcount;
}

void send_clock_measurement(unsigned int oldcount, char * index)
{
	unsigned char output[32];
	unsigned int newcount = DWT_CYCCNT-oldcount;
    sprintf((char *)output, "%s %d cycles", index, newcount);
    send_USART_str(output);
}