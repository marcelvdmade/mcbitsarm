#include "transpose.h"
#include "util.h"

void transpose_64x64_compact(uint32_t *out_high, uint32_t *out_low, uint32_t *in_high, uint32_t *in_low)
{
	int i, j, s, p, idx0, idx1;
	uint32_t x_high, x_low, y_high, y_low, temp;

	const uint32_t mask_high[6][2] =
	{
	  {0X55555555, 0XAAAAAAAA},
	  {0X33333333, 0XCCCCCCCC},
	  {0X0F0F0F0F, 0XF0F0F0F0},
	  {0X00FF00FF, 0XFF00FF00},
	  {0X0000FFFF, 0XFFFF0000},
	  {0X00000000, 0XFFFFFFFF}
	};

	const uint32_t mask_low[6][2] =
	{
	  {0X55555555, 0XAAAAAAAA},
	  {0X33333333, 0XCCCCCCCC},
	  {0X0F0F0F0F, 0XF0F0F0F0},
	  {0X00FF00FF, 0XFF00FF00},
	  {0X0000FFFF, 0XFFFF0000},
	  {0XFFFFFFFF, 0X00000000}
	};

	//

	for (i = 0; i < 64; i++)
    {
    	asm("MOV %[out], %[in]" : [out]"=r" (out_high[i]) : [in]"r" (in_high[i]) );
    	asm("MOV %[out], %[in]" : [out]"=r" (out_low[i]) : [in]"r" (in_low[i]) );
    }

    //1 << 0 = 1
	//1 << 1 = 2
	//1 << 2 = 4
	//1 << 3 = 8
	//1 << 4 = 16
	//1 << 5 = 32

    //Transpose each 32x32 block
    for (j = 4; j >= 0; j--)
	{
		// s = 16, 8, 4, 2, 1
		s = 1 << j;
		// p loops 2, 4, 8, 16, 32
		for (p = 0; p < 32/s; p++)
		{
			for (i = 0; i < s; i++)
			{

				idx0 = p*2*s + i;
				idx1 = p*2*s + i + s;
				x_high = (out_high[idx0] & mask_high[j][0]) | ((out_high[idx1] & mask_high[j][0]) << s);
				y_high = ((out_high[idx0] & mask_high[j][1]) >> s) | (out_high[idx1] & mask_high[j][1]);

                x_low = (out_low[idx0] & mask_low[j][0]) | ((out_low[idx1] & mask_low[j][0]) << s);
				y_low = ((out_low[idx0] & mask_low[j][1]) >> s) | (out_low[idx1] & mask_low[j][1]);

				// out_high[idx0] = x_high;
				// out_high[idx1] = y_high;
				// out_low[idx0] = x_low;
				// out_low[idx1] = y_low;
				asm("MOV %[out], %[in]" : [out]"=r" (out_high[idx0]) : [in]"r" (x_high) );
				asm("MOV %[out], %[in]" : [out]"=r" (out_high[idx1]) : [in]"r" (y_high) );
				asm("MOV %[out], %[in]" : [out]"=r" (out_low[idx0]) : [in]"r" (x_low) );
				asm("MOV %[out], %[in]" : [out]"=r" (out_low[idx1]) : [in]"r" (y_low) );
			}
		}
	}

	//switch left-top && right-bottom blocks
	for (i=0;i<32;i++)
    {
    	asm("MOV %[out], %[in]" : [out]"=r" (temp) : [in]"r" (out_high[i]) );
    	asm("MOV %[out], %[in]" : [out]"=r" (out_high[i]) : [in]"r" (out_low[i+32]) );
    	asm("MOV %[out], %[in]" : [out]"=r" (out_low[i+32]) : [in]"r" (temp) );
        ///temp=out_high[i];
        ///out_high[i]=out_low[i+32];
        ///out_low[i+32]=temp;
    }
}

void transpose_8x64(uint32_t *in_high, uint32_t *in_low)
{
	const uint32_t mask[3][2] =
	{
	  {0X55555555, 0XAAAAAAAA},
	  {0X33333333, 0XCCCCCCCC},
	  {0X0F0F0F0F, 0XF0F0F0F0},
	};

	uint32_t x_high, y_high, tmp_high;
	uint32_t x_low, y_low, tmp_low;
	uint32_t carry;

	//rot4
    tmp_high = (in_high[4] & mask[2][0]);
    tmp_low = (in_low[4] & mask[2][0]);
    //shiftLeft(&tmp_high, &tmp_low, 4);  //not needed  
    tmp_high = (tmp_high << 4) |(tmp_low >> 28);
    tmp_low <<= 4;
	x_high = (in_high[0] & mask[2][0]) | tmp_high;
	x_low = (in_low[0] & mask[2][0]) | tmp_low;

	tmp_high = (in_high[0] & mask[2][1]);
    tmp_low = (in_low[0] & mask[2][1]);
    //shiftRight(&tmp_high, &tmp_low, 4);
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	asm("MOV %[target], %[value], lsl #28" : [target]"=r" (carry) : [value]"r" (tmp_high) );
	asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
	asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[4] & mask[2][1]);
	y_low = tmp_low | (in_low[4] & mask[2][1]);

	in_high[0] = x_high; in_low[0] = x_low;
	in_high[4] = y_high; in_low[4] = y_low;
 //
    tmp_high = (in_high[5] & mask[2][0]);
    tmp_low = (in_low[5] & mask[2][0]);
    //shiftLeft(&tmp_high, &tmp_low, 4);
    asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	asm("MOV %[target], %[value], lsr #28" : [target]"=r" (carry) : [value]"r" (tmp_low) );
	asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
	asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[1] & mask[2][0]) | tmp_high;
	x_low = (in_low[1] & mask[2][0]) | tmp_low;

    tmp_high = (in_high[1] & mask[2][1]);
    tmp_low = (in_low[1] & mask[2][1]);
    //shiftRight(&tmp_high, &tmp_low, 4);
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #28" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[5] & mask[2][1]);
	y_low = tmp_low | (in_low[5] & mask[2][1]);

	in_high[1] = x_high; in_low[1] = x_low;
	in_high[5] = y_high; in_low[5] = y_low;
 //
    tmp_high = (in_high[6] & mask[2][0]);
    tmp_low = (in_low[6] & mask[2][0]);
    //shiftLeft(&tmp_high, &tmp_low, 4);
    asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #28" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[2] & mask[2][0]) | tmp_high;
	x_low = (in_low[2] & mask[2][0]) | tmp_low;

    tmp_high = (in_high[2] & mask[2][1]);
    tmp_low = (in_low[2] & mask[2][1]);
    //shiftRight(&tmp_high, &tmp_low, 4);
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #28" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[6] & mask[2][1]);
	y_low = tmp_low | (in_low[6] & mask[2][1]);

	in_high[2] = x_high; in_low[2] = x_low;
	in_high[6] = y_high; in_low[6] = y_low;
 //
    tmp_high = (in_high[7] & mask[2][0]);
    tmp_low = (in_low[7] & mask[2][0]);
    //shiftLeft(&tmp_high, &tmp_low, 4);
    asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #28" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[3] & mask[2][0]) | tmp_high;
	x_low = (in_low[3] & mask[2][0]) | tmp_low;

	tmp_high = (in_high[3] & mask[2][1]);
    tmp_low = (in_low[3] & mask[2][1]);
    //shiftRight(&tmp_high, &tmp_low, 4);
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #28" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #4" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[7] & mask[2][1]);
	y_low = tmp_low | (in_low[7] & mask[2][1]);

	in_high[3] = x_high; in_low[3] = x_low;
	in_high[7] = y_high; in_low[7] = y_low;

	// rot2

    tmp_high = (in_high[2] & mask[1][0]);
    tmp_low = (in_low[2] & mask[1][0]);
    //shiftLeft(&tmp_high, &tmp_low, 2);
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #30" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[0] & mask[1][0]) | tmp_high;
	x_low = (in_low[0] & mask[1][0]) | tmp_low;

    tmp_high = (in_high[0] & mask[1][1]);
    tmp_low = (in_low[0] & mask[1][1]);
    //shiftRight(&tmp_high, &tmp_low, 2);
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #30" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[2] & mask[1][1]);
	y_low = tmp_low | (in_low[2] & mask[1][1]);

	in_high[0] = x_high; in_low[0] = x_low;
	in_high[2] = y_high; in_low[2] = y_low;
 //
    tmp_high = (in_high[3] & mask[1][0]);
    tmp_low = (in_low[3] & mask[1][0]);
    //shiftLeft(&tmp_high, &tmp_low, 2);
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #30" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[1] & mask[1][0]) | tmp_high;
	x_low = (in_low[1] & mask[1][0]) | tmp_low;

    tmp_high = (in_high[1] & mask[1][1]);
    tmp_low = (in_low[1] & mask[1][1]);
    //shiftRight(&tmp_high, &tmp_low, 2);
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #30" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[3] & mask[1][1]);
	y_low = tmp_low | (in_low[3] & mask[1][1]);

	in_high[1] = x_high; in_low[1] = x_low;
	in_high[3] = y_high; in_low[3] = y_low;
 //
    tmp_high = (in_high[6] & mask[1][0]);
    tmp_low = (in_low[6] & mask[1][0]);
    //shiftLeft(&tmp_high, &tmp_low, 2);
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #30" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[4] & mask[1][0]) | tmp_high;
	x_low = (in_low[4] & mask[1][0]) | tmp_low;

    tmp_high = (in_high[4] & mask[1][1]);
    tmp_low = (in_low[4] & mask[1][1]);
    //shiftRight(&tmp_high, &tmp_low, 2);
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #30" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[6] & mask[1][1]);
	y_low = tmp_low | (in_low[6] & mask[1][1]);

	in_high[4] = x_high; in_low[4] = x_low;
	in_high[6] = y_high; in_low[6] = y_low;
 //
    tmp_high = (in_high[7] & mask[1][0]);
    tmp_low = (in_low[7] & mask[1][0]);
    //shiftLeft(&tmp_high, &tmp_low, 2);
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #30" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[5] & mask[1][0]) | tmp_high;
	x_low = (in_low[5] & mask[1][0]) | tmp_low;

    tmp_high = (in_high[5] & mask[1][1]);
    tmp_low = (in_low[5] & mask[1][1]);
    //shiftRight(&tmp_high, &tmp_low, 2);
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #30" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #2" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[7] & mask[1][1]);
	y_low = tmp_low | (in_low[7] & mask[1][1]);

	in_high[5] = x_high; in_low[5] = x_low;
	in_high[7] = y_high; in_low[7] = y_low;

	//rot1
    tmp_high = (in_high[1] & mask[0][0]);
    tmp_low = (in_low[1] & mask[0][0]);
    //shiftLeft(&tmp_high, &tmp_low, 1);
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #31" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[0] & mask[0][0]) | tmp_high;
	x_low = (in_low[0] & mask[0][0]) | tmp_low;

    tmp_high = (in_high[0] & mask[0][1]);
    tmp_low = (in_low[0] & mask[0][1]);
    //shiftRight(&tmp_high, &tmp_low, 1);
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[1] & mask[0][1]);
	y_low = tmp_low | (in_low[1] & mask[0][1]);

	in_high[0] = x_high; in_low[0] = x_low;
	in_high[1] = y_high; in_low[1] = y_low;
 //
    tmp_high = (in_high[3] & mask[0][0]);
    tmp_low = (in_low[3] & mask[0][0]);
    //shiftLeft(&tmp_high, &tmp_low, 1);
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #31" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[2] & mask[0][0]) | tmp_high;
	x_low = (in_low[2] & mask[0][0]) | tmp_low;

    tmp_high = (in_high[2] & mask[0][1]);
    tmp_low = (in_low[2] & mask[0][1]);
    //shiftRight(&tmp_high, &tmp_low, 1);
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[3] & mask[0][1]);
	y_low = tmp_low | (in_low[3] & mask[0][1]);

	in_high[2] = x_high; in_low[2] = x_low;
	in_high[3] = y_high; in_low[3] = y_low;
 //
    tmp_high = (in_high[5] & mask[0][0]);
    tmp_low = (in_low[5] & mask[0][0]);
    //shiftLeft(&tmp_high, &tmp_low, 1);
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #31" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[4] & mask[0][0]) | tmp_high;
	x_low = (in_low[4] & mask[0][0]) | tmp_low;

    tmp_high = (in_high[4] & mask[0][1]);
    tmp_low = (in_low[4] & mask[0][1]);
    //shiftRight(&tmp_high, &tmp_low, 1);
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[5] & mask[0][1]);
	y_low = tmp_low | (in_low[5] & mask[0][1]);

	in_high[4] = x_high; in_low[4] = x_low;
	in_high[5] = y_high; in_low[5] = y_low;
 //
    tmp_high = (in_high[7] & mask[0][0]);
    tmp_low = (in_low[7] & mask[0][0]);
    //shiftLeft(&tmp_high, &tmp_low, 1);
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
    asm("MOV %[target], %[value], lsr #31" : [target]"=r" (carry) : [value]"r" (tmp_low) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_high) : [value1]"r" (tmp_high), [value2]"r" (carry) );
    asm("LSL %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
	x_high = (in_high[6] & mask[0][0]) | tmp_high;
	x_low = (in_low[6] & mask[0][0]) | tmp_low;

    tmp_high = (in_high[6] & mask[0][1]);
    tmp_low = (in_low[6] & mask[0][1]);
    //shiftRight(&tmp_high, &tmp_low, 1);
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_low) : [value]"r" (tmp_low) );
    asm("MOV %[target], %[value], lsl #31" : [target]"=r" (carry) : [value]"r" (tmp_high) );
    asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (tmp_low) : [value1]"r" (tmp_low), [value2]"r" (carry) );
    asm("LSR %[target], %[value], #1" : [target]"=r" (tmp_high) : [value]"r" (tmp_high) );
	y_high = tmp_high | (in_high[7] & mask[0][1]);
	y_low = tmp_low | (in_low[7] & mask[0][1]);

	in_high[6] = x_high; in_low[6] = x_low;
	in_high[7] = y_high; in_low[7] = y_low;
}
