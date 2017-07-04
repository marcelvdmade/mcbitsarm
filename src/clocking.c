#include "clocking.h"
#include "stm32wrapper.h"

//Only call this once
static void init_clock_measurement()
{
	clock_setup();
    gpio_setup();
    usart_setup(115200);
}

static unsigned int setup_clock_measurement()
{
    SCS_DEMCR |= SCS_DEMCR_TRCENA;
    DWT_CYCCNT = 0;
    DWT_CTRL |= DWT_CTRL_CYCCNTENA;

    unsigned int oldcount = DWT_CYCCNT;
    return oldcount;
}

static void send_clock_measurement(unsigned int oldcount, int index)
{
	unsigned char output[32];
	unsigned int newcount = DWT_CYCCNT-oldcount;
    sprintf((char *)output, "index %d cost: %d", index, newcount);
    send_USART_str(output);
}