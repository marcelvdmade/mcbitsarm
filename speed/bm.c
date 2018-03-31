#include "bm.h"

#include "util.h"
#include "vec.h"
#include "gf.h"
#include "stm32wrapper.h"

typedef uint16_t gf;

static void into_vec(uint32_t *out_high, uint32_t *out_low, gf in)
{
	int i;

	for (i = 0; i < GFBITS; i++)
	{
	    out_low[i] = (in >> i) & 1;
	    out_high[i] = -out_low[i];
	    out_low[i] = -out_low[i];
	}
}

static gf vec_reduce(uint32_t *prod_high, uint32_t *prod_low)
{
	int i;
	uint32_t tmp_high[ GFBITS ], tmp_low[ GFBITS ];
	uint32_t temp, shift;
	gf ret = 0;

	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[0]) : [in]"r" (prod_high[0]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[0])  : [in]"r" (prod_low[0]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[1]) : [in]"r" (prod_high[1]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[1])  : [in]"r" (prod_low[1]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[2]) : [in]"r" (prod_high[2]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[2])  : [in]"r" (prod_low[2]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[3]) : [in]"r" (prod_high[3]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[3])  : [in]"r" (prod_low[3]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[4]) : [in]"r" (prod_high[4]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[4])  : [in]"r" (prod_low[4]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[5]) : [in]"r" (prod_high[5]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[5])  : [in]"r" (prod_low[5]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[6]) : [in]"r" (prod_high[6]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[6])  : [in]"r" (prod_low[6]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[7]) : [in]"r" (prod_high[7]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[7])  : [in]"r" (prod_low[7]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[8]) : [in]"r" (prod_high[8]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[8])  : [in]"r" (prod_low[8]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[9]) : [in]"r" (prod_high[9]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[9])  : [in]"r" (prod_low[9]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[10]): [in]"r" (prod_high[10]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[10]) : [in]"r" (prod_low[10]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_high[11]): [in]"r" (prod_high[11]) );
	asm("MOV %[out], %[in]" : [out]"=r" (tmp_low[11]) : [in]"r" (prod_low[11]) );

	//for (i = GFBITS-1; i >= 0; i--)
	{	//tmp[i] ^= (tmp[i] >> 32);
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[11]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[11]) : [in]"r" (tmp_high[11]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[11]) : [r1]"r" (tmp_low[11]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[10]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[10]) : [in]"r" (tmp_high[10]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[10]) : [r1]"r" (tmp_low[10]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[9]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[9]) : [in]"r" (tmp_high[9]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[9]) : [r1]"r" (tmp_low[9]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[8]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[8]) : [in]"r" (tmp_high[8]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[8]) : [r1]"r" (tmp_low[8]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[7]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[7]) : [in]"r" (tmp_high[7]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[7]) : [r1]"r" (tmp_low[7]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[6]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[6]) : [in]"r" (tmp_high[6]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[6]) : [r1]"r" (tmp_low[6]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[5]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[5]) : [in]"r" (tmp_high[5]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[5]) : [r1]"r" (tmp_low[5]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[4]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[4]) : [in]"r" (tmp_high[4]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[4]) : [r1]"r" (tmp_low[4]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[3]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[3]) : [in]"r" (tmp_high[3]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[3]) : [r1]"r" (tmp_low[3]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[2]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[2]) : [in]"r" (tmp_high[2]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[2]) : [r1]"r" (tmp_low[2]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[1]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[1]) : [in]"r" (tmp_high[1]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[1]) : [r1]"r" (tmp_low[1]) , [r2]"r" (temp) );
		asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (tmp_high[0]) );
		asm("BIC %[out], %[in], 0x00000000" : [out]"=r" (tmp_high[0]) : [in]"r" (tmp_high[0]) );
		asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (tmp_low[0]) : [r1]"r" (tmp_low[0]) , [r2]"r" (temp) );
	}
	//for (i = GFBITS-1; i >= 0; i--)
	{	//tmp[i] ^= (tmp[i] >> 16);
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[11]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[11]) : [value1]"r" (tmp_low[11]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[11]) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[10]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[10]) : [value1]"r" (tmp_low[10]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[10]) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[9]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[9]) : [value1]"r" (tmp_low[9]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[9]) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[8]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[8]) : [value1]"r" (tmp_low[8]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[8]) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[7]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[7]) : [value1]"r" (tmp_low[7]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[7]) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[6]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[6]) : [value1]"r" (tmp_low[6]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[6]) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[5]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[5]) : [value1]"r" (tmp_low[5]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[5]) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[4]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[4]) : [value1]"r" (tmp_low[4]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[4]) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[3]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[3]) : [value1]"r" (tmp_low[3]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[3]) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[2]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[2]) : [value1]"r" (tmp_low[2]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[2]) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[1]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[1]) : [value1]"r" (tmp_low[1]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[1]) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsl #16" : [target]"=r" (shift) : [value]"r" (tmp_high[0]) );
		asm("MOV %[target], %[value], lsr #16" : [target]"=r" (temp) : [value]"r" (tmp_low[0]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[0]) : [value1]"r" (tmp_low[0]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #16" : [target]"=r" (tmp_high[0]) : [value]"r" (tmp_high[0]) );
	}
	//for (i = GFBITS-1; i >= 0; i--)
	{	//tmp[i] ^= (tmp[i] >> 8);
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[11]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[11]) : [value1]"r" (tmp_low[11]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[11]) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[10]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[10]) : [value1]"r" (tmp_low[10]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[10]) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[9]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[9]) : [value1]"r" (tmp_low[9]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[9]) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[8]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[8]) : [value1]"r" (tmp_low[8]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[8]) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[7]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[7]) : [value1]"r" (tmp_low[7]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[7]) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[6]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[6]) : [value1]"r" (tmp_low[6]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[6]) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[5]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[5]) : [value1]"r" (tmp_low[5]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[5]) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[4]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[4]) : [value1]"r" (tmp_low[4]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[4]) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[3]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[3]) : [value1]"r" (tmp_low[3]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[3]) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[2]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[2]) : [value1]"r" (tmp_low[2]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[2]) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[1]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[1]) : [value1]"r" (tmp_low[1]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[1]) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsl #24" : [target]"=r" (shift) : [value]"r" (tmp_high[0]) );
		asm("MOV %[target], %[value], lsr #8" : [target]"=r" (temp) : [value]"r" (tmp_low[0]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[0]) : [value1]"r" (tmp_low[0]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #8" : [target]"=r" (tmp_high[0]) : [value]"r" (tmp_high[0]) );
	}
	//for (i = GFBITS-1; i >= 0; i--)
	{	//tmp[i] ^= (tmp[i] >> 4);
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[11]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[11]) : [value1]"r" (tmp_low[11]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[11]) : [value]"r" (tmp_high[11]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[10]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[10]) : [value1]"r" (tmp_low[10]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[10]) : [value]"r" (tmp_high[10]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[9]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[9]) : [value1]"r" (tmp_low[9]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[9]) : [value]"r" (tmp_high[9]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[8]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[8]) : [value1]"r" (tmp_low[8]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[8]) : [value]"r" (tmp_high[8]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[7]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[7]) : [value1]"r" (tmp_low[7]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[7]) : [value]"r" (tmp_high[7]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[6]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[6]) : [value1]"r" (tmp_low[6]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[6]) : [value]"r" (tmp_high[6]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[5]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[5]) : [value1]"r" (tmp_low[5]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[5]) : [value]"r" (tmp_high[5]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[4]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[4]) : [value1]"r" (tmp_low[4]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[4]) : [value]"r" (tmp_high[4]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[3]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[3]) : [value1]"r" (tmp_low[3]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[3]) : [value]"r" (tmp_high[3]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[2]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[2]) : [value1]"r" (tmp_low[2]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[2]) : [value]"r" (tmp_high[2]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[1]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[1]) : [value1]"r" (tmp_low[1]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[1]) : [value]"r" (tmp_high[1]) );
		asm("MOV %[target], %[value], lsl #28" : [target]"=r" (shift) : [value]"r" (tmp_high[0]) );
		asm("MOV %[target], %[value], lsr #4" : [target]"=r" (temp) : [value]"r" (tmp_low[0]) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (shift), [value2]"r" (temp) );
		asm("EOR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low[0]) : [value1]"r" (tmp_low[0]), [value2]"r" (temp) );
		asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high[0]) : [value]"r" (tmp_high[0]) );
	}

	for (i = GFBITS-1; i >= 0; i--)
	{	//ret = uint16_t
		ret <<= 1;
		ret |= (0x6996 >> (tmp_low[i] & 0xF)) & 1;
	};

	return ret;
}

static void mask_nonzero_32bit(uint32_t *high, uint32_t *low, gf a)
{
	uint32_t temp = a;

    asm("SUB %[target], %[value1], 0x00000001" : [target]"=r" (temp) : [value1]"r" (temp) );
    asm("LSR %[target], %[value1], #31" : [target]"=r" (temp) : [value1]"r" (temp) );
    asm("SUB %[target], %[value1], 0x00000001" : [target]"=r" (temp) : [value1]"r" (temp) );
    asm("MOV %[out], %[in]" : [out]"=r" (*low) : [in]"r" (temp) );
    asm("MOV %[out], %[in]" : [out]"=r" (*high) : [in]"r" (temp) );
}

static void mask_leq_32bit(uint32_t *out_high, uint32_t *out_low, uint16_t a, uint16_t b)
{	
	uint32_t temp;
	asm("SUB %[target], %[value1], %[value2]" : [target]"=r" (temp) : [value1]"r" (b), [value2]"r" (a) );
	asm("LSR %[target], %[value], #31" : [target]"=r" (temp) : [value]"r" (temp) );
	asm("MOV %[target], %[value]" : [target]"=r" (*out_high) : [value]"r" (temp-1) );
	asm("MOV %[target], %[value]" : [target]"=r" (*out_low) : [value]"r" (temp-1) );
}

static void vec_cmov(uint32_t *out_high, uint32_t *out_low, uint32_t *in_high, uint32_t *in_low, uint32_t mask_high, uint32_t mask_low)
{
	int i;
	
    for (i = 0; i < GFBITS; i++)
    {
    	out_high[i] = (in_high[i] & mask_high) | (out_high[i] & ~mask_high);
        out_low[i] = (in_low[i] & mask_low) | (out_low[i] & ~mask_low);
    }
}

void bm(uint32_t out_high[ GFBITS ], uint32_t out_low[ GFBITS ], uint32_t in_high[][ GFBITS ], uint32_t in_low[][ GFBITS ])
{
	uint16_t i;
	uint16_t N, L;

	uint32_t C_high[ GFBITS ], B_high[ GFBITS ], prod_high[ GFBITS ];
	uint32_t C_low[ GFBITS ], B_low[ GFBITS ], prod_low[ GFBITS ];
	uint32_t in_tmp_high[ GFBITS ], r_vec_high[ GFBITS ], C_tmp_high[ GFBITS ];
	uint32_t in_tmp_low[ GFBITS ], r_vec_low[ GFBITS ], C_tmp_low[ GFBITS ];
    uint32_t in_temp0_high, in_temp0_low;
    uint32_t in_temp1_high, in_temp1_low;

	uint32_t mask_nz_high, mask_leq_high;
	uint32_t mask_nz_low, mask_leq_low;
	uint16_t mask_16b;

	int shiftL, shiftR;
	uint32_t carry;

	gf d, b, b_inv, r;

	// init

	//Note: B_high = 0x40000000 originally, but this setting doesnt matter apparently
	C_high[0] = 0x80000000; 
	B_high[0] = B_low[0] = C_low[0] = 0;
	
	for (i = 1; i < GFBITS; i++)
        B_high[i] = B_low[i] = C_high[i] = C_low[i] = 0;

	b = 1;
	L = 0;

	//SYS_T * 2 = 124
	for (N = 0; N < 124; N++)
	{
		if (N < 32)	//N=0 t/m 31
		{
			shiftL=31-N;
			for (i = 0; i < GFBITS; i++)
            {
            	//in_tmp[i] = in[0][i] << (63-N);
            	asm("LSL %[target], %[value], %[shift]" : [target]"=r" (in_tmp_high[i]) : [value]"r" (in_low[0][i]), [shift]"r" (shiftL) );
            	asm("MOV %[out], 0x00000000" : [out]"=r" (in_tmp_low[i]) );      	
            }
        }
        else if (N >= 32 && N < 64)	//N=32 t/m 63
		{   //shift = [31..0]
			shiftL=63-N;
			for (i = 0; i < GFBITS; i++)
            {
            	//in_tmp[i] = in[0][i] << (63-N);
            	carry = in_low[0][i] >> (32-shiftL);
            	in_tmp_high[i] = in_high[0][i] << shiftL;
            	in_tmp_high[i] |= carry;
            	in_tmp_low[i] = in_low[0][i] << shiftL;
            }
        }
		else if (N >= 64 && N < 95)	//N=64 t/m 94
		{
			shiftR=N-63;//right shift = [1..31]
			shiftL=127-N;//left shift = [63..33]
			
			for (i = 0; i < GFBITS; i++)
            {
            	//8388029
            	//in_tmp[i] = (in[0][i] >> (N-63)) | (in[1][i] << (127-N));
            	in_temp0_high = in_high[0][i] >> shiftR;
            	in_temp0_low = (in_high[0][i] << (32-shiftR)) | (in_low[0][i] >> shiftR);
            	in_temp1_high = in_low[1][i] << (shiftL-32);
            	in_temp1_low = 0x00000000;

                in_tmp_high[i] = in_temp0_high | in_temp1_high;
                in_tmp_low[i] = in_temp0_low | in_temp1_low;
            }
        }
        else 	//N=95 t/m 123
		{
			shiftR=N-63; //right shift = [32..60]
			shiftL=127-N; //left shift = [32..4]
			for (i = 0; i < GFBITS; i++)
            {
            	//in_tmp[i] = (in[0][i] >> (N-63)) | (in[1][i] << (127-N));
            	//in_temp0_high = 0x00000000;
            	//in_temp0_low = in_high[0][i] >> (shiftR-32);
            	asm("MOV %[out], 0x00000000" : [out]"=r" (in_temp0_high) );   
            	asm("LSR %[target], %[value], %[shift]" : [target]"=r" (in_temp0_low) : [value]"r" (in_high[0][i]), [shift]"r" (shiftR-32) );
            	
            	in_temp1_high = in_high[1][i]<< shiftL| in_low[1][i] >> (32-shiftL);
            	in_temp1_low = in_low[1][i] << shiftL;

                in_tmp_high[i] = in_temp0_high | in_temp1_high;
                in_tmp_low[i] = in_temp0_low | in_temp1_low;
            }
        }

		vec_mul(prod_high, prod_low, C_high, C_low, in_tmp_high, in_tmp_low);

		d = vec_reduce(prod_high, prod_low);

		// 3 cases

		b_inv = gf_inv(b);
		r = gf_mul(d, b_inv);
        into_vec(r_vec_high, r_vec_low, r);

		vec_mul(C_tmp_high, C_tmp_low, r_vec_high, r_vec_low, B_high, B_low);

		for (i = 0; i < GFBITS; i++)
		{
			C_tmp_high[i] ^= C_high[i];
			C_tmp_low[i] ^= C_low[i];
		}
		
        mask_nonzero_32bit(&mask_nz_high, &mask_nz_low, d);
        mask_leq_32bit(&mask_leq_high, &mask_leq_low, L*2, N);

		mask_16b = (mask_nz_low & mask_leq_low) & 0xFFFF;
        
		vec_cmov(B_high, B_low, C_high, C_low, mask_nz_high & mask_leq_high, mask_nz_low & mask_leq_low );

		//vec_copy(C_high, C_low, C_tmp_high, C_tmp_low);
		{
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[0]) : [in_high]"r" (C_tmp_high[0]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[0])   : [in_low]"r" (C_tmp_low[0]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[1]) : [in_high]"r" (C_tmp_high[1]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[1])   : [in_low]"r" (C_tmp_low[1]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[2]) : [in_high]"r" (C_tmp_high[2]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[2])   : [in_low]"r" (C_tmp_low[2]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[3]) : [in_high]"r" (C_tmp_high[3]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[3])   : [in_low]"r" (C_tmp_low[3]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[4]) : [in_high]"r" (C_tmp_high[4]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[4])   : [in_low]"r" (C_tmp_low[4]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[5]) : [in_high]"r" (C_tmp_high[5]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[5])   : [in_low]"r" (C_tmp_low[5]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[6]) : [in_high]"r" (C_tmp_high[6]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[6])   : [in_low]"r" (C_tmp_low[6]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[7]) : [in_high]"r" (C_tmp_high[7]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[7])   : [in_low]"r" (C_tmp_low[7]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[8]) : [in_high]"r" (C_tmp_high[8]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[8])   : [in_low]"r" (C_tmp_low[8]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[9]) : [in_high]"r" (C_tmp_high[9]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[9])   : [in_low]"r" (C_tmp_low[9]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[10]) : [in_high]"r" (C_tmp_high[10]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[10])   : [in_low]"r" (C_tmp_low[10]) ); 
			asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (C_high[11]) : [in_high]"r" (C_tmp_high[11]) );
			asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (C_low[11])   : [in_low]"r" (C_tmp_low[11]) ); 
		}

		b = (d & mask_16b) | (b & ~mask_16b);
		L = ((N+1-L) & mask_16b) | (L & ~mask_16b);

		for (i = 0; i < GFBITS; i++)
		{
            asm("LSR %[target], %[value], #1" : [target]"=r" (B_low[i]) : [value]"r" (B_low[i]) );
			asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (B_high[i]) );
			asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (B_low[i]) : [value1]"r" (B_low[i]), [value2]"r" (carry) );
			asm("LSR %[target], %[value], #1" : [target]"=r" (B_high[i]) : [value]"r" (B_high[i]) );
		}
	}

	vec_copy(out_high, out_low, C_high, C_low);

	for (i = 0; i < GFBITS; i++)
	{
        asm("LSR %[target], %[value], #1" : [target]"=r" (out_low[i]) : [value]"r" (out_low[i]) );
		asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (out_high[i]) );
		asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (out_low[i]) : [value1]"r" (out_low[i]), [value2]"r" (carry) );
		asm("LSR %[target], %[value], #1" : [target]"=r" (out_high[i]) : [value]"r" (out_high[i]) );
	}
}
