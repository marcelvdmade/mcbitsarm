#include "util.h"
#include "params.h"
#include <stdio.h>

void store8(unsigned char *out, uint32_t in_high, uint32_t in_low)
{
	out[0] = (in_low >> 0x00) & 0xFF;
	out[1] = (in_low >> 0x08) & 0xFF;
	out[2] = (in_low >> 0x10) & 0xFF;
	out[3] = (in_low >> 0x18) & 0xFF;
	out[4] = (in_high >> 0x00) & 0xFF;
	out[5] = (in_high >> 0x08) & 0xFF;
	out[6] = (in_high >> 0x10) & 0xFF;
	out[7] = (in_high >> 0x18) & 0xFF;
	// out[0] = in_low & 0x000000FF;
	// out[1] = in_low & 0x0000FF00;
	// out[2] = in_low & 0x00FF0000;
	// out[3] = in_low & 0xFF000000;
	// out[4] = in_high & 0x000000FF;
	// out[5] = in_high & 0x0000FF00;
	// out[6] = in_high & 0x00FF0000;
	// out[7] = in_high & 0xFF000000;
}

//7 loops with 5 instructions each = 35 cycles
//4 store instructions
//Total = 39 cycles
void load8(const unsigned char * in, uint32_t * high, uint32_t * low)
{
	int i;
	uint32_t tempLow = in[7];
	uint32_t tempHigh = 0;
	uint32_t carry;

	for (i = 6; i >= 0; i--)
	{
		asm("LSR %[target], %[value], #24" : [target]"=r" (carry) : [value]"r" (tempLow) );
		asm("LSL %[target], %[value], #8" : [target]"=r" (tempHigh) : [value]"r" (tempHigh) );
		asm("LSL %[target], %[value], #8" : [target]"=r" (tempLow) : [value]"r" (tempLow) );
		asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tempHigh) : [value1]"r" (tempHigh), [value2]"r" (carry) ); 
		asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tempLow) : [value1]"r" (tempLow), [value2]"r" (in[i]) ); 
		//ret <<= 8;
		//ret |= in[i];
	}
    *high = tempHigh;
    *low = tempLow;
}
