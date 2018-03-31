#include "fft.h"
#include "vec.h"
#include "util.h"

//Static consts
static uint32_t consts_high[ 63 ][ GFBITS ] =
{
  #include "consts_high.data"
};
    static uint32_t consts_low[ 63 ][ GFBITS ] =
{
  #include "consts_low.data"
};

static const uint32_t s_high[5][GFBITS] =
{
  #include "scalars_high.data"
};
static const uint32_t s_low[5][GFBITS] =
{	
  #include "scalars_low.data"
};

static void radix_conversions(uint32_t *in_high, uint32_t *in_low)
{
	int i, j, k, shift;
	uint32_t temp_high, temp_low, carry;
	const uint32_t mask_high[5][2] =
	{
		{0x88888888, 0x44444444},
		{0xC0C0C0C0, 0x30303030},
		{0xF000F000, 0x0F000F00},
		{0xFF000000, 0x00FF0000},
		{0xFFFF0000, 0x0000FFFF}
	};
 	const uint32_t mask_low[5][2] =
	{
		{0x88888888, 0x44444444},
		{0xC0C0C0C0, 0x30303030},
		{0xF000F000, 0x0F000F00},
		{0xFF000000, 0x00FF0000},
		{0x00000000, 0x00000000}
	};

	for (j = 0; j <= 4; j++)
	{
		for (i = 0; i < GFBITS; i++)
			for (k = 4; k >= j; k--)
			{	//shift=16, 8, 4, 2, 1
				shift = (1 << k);
				//in[i] ^= (in[i] & mask[k][0]) >> (1 << k);
				//in[i] ^= (in[i] & mask[k][1]) >> (1 << k);

				temp_high = in_high[i] & mask_high[k][0];
				temp_low = in_low[i] & mask_low[k][0];
				carry = temp_high << (32-shift);
				temp_low = (temp_low >> shift) | (temp_high << (32-shift));
				temp_high >>= shift;
				in_high[i] ^= temp_high;
				in_low[i] ^= temp_low;

				temp_high = in_high[i] & mask_high[k][1];
				temp_low = in_low[i] & mask_low[k][1];
				carry = temp_high << (32-shift);
				temp_low = (temp_low >> shift) | carry;
				temp_high >>= shift;
				in_high[i] ^= temp_high;
				in_low[i] ^= temp_low;
			}
		vec_mul(in_high, in_low, in_high, in_low, s_high[j], s_low[j]); //scaling
	}
}

static void butterflies(uint32_t out_high[][ GFBITS ], uint32_t out_low[][ GFBITS ], uint32_t *in_high, uint32_t *in_low)
{
	int i, j, k, s, b;

	uint32_t tmp_high[ GFBITS ];
	uint32_t tmp_low[ GFBITS ];
	uint32_t temp = 0x00000000;

	uint32_t consts_ptr_high = 0;
	uint32_t consts_ptr_low = 0;

	const unsigned char reversal[64] =
	{
	  0, 32, 16, 48,  8, 40, 24, 56,
	  4, 36, 20, 52, 12, 44, 28, 60,
	  2, 34, 18, 50, 10, 42, 26, 58,
	  6, 38, 22, 54, 14, 46, 30, 62,
	  1, 33, 17, 49,  9, 41, 25, 57,
	  5, 37, 21, 53, 13, 45, 29, 61,
	  3, 35, 19, 51, 11, 43, 27, 59,
	  7, 39, 23, 55, 15, 47, 31, 63
	};

	// broadcast

	for (j = 0; j < 64; j++)
	for (i = GFBITS; i--;)
	{
		//out[j][i] = (in[i] >> reversal[j]) & 1;
		//out[j][i] = -out[j][i];

		if (reversal[j] < 32) 		// shift low
			temp = in_low[i] >> reversal[j] & 1;
		else if (reversal[j] == 32)	//special case
			temp = in_high[i] & 1;
		else 						// shift high
			temp = in_high[i] >> (reversal[j]-32) & 1;

		out_high[j][i] = -temp;
		out_low[j][i] = -temp;
	}

	// butterflies

	for (i = 0; i <= 5; i++)
	{
		//s = 1,2,4,8,16,32
		s = 1 << i;

		//j loops 64, 32, 16, 8, 4, 2
		for (j = 0; j < 64; j += 2*s)
		{
			//k loops 192 times
			for (k = j; k < j+s; k++)
			{
				vec_mul(tmp_high, tmp_low, out_high[k+s], out_low[k+s], consts_high[ consts_ptr_high + (k-j) ], consts_low[ consts_ptr_low + (k-j) ]);

				for (b = 0; b < GFBITS; b++) asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (out_high[k][b]) : [r1]"r" (out_high[k][b]) , [r2]"r" (tmp_high[b]) );
				for (b = 0; b < GFBITS; b++) asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (out_low[k][b]) : [r1]"r" (out_low[k][b]) , [r2]"r" (tmp_low[b]) );
				for (b = 0; b < GFBITS; b++) asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (out_high[k+s][b]) : [r1]"r" (out_high[k+s][b]) , [r2]"r" (out_high[k][b]) );
				for (b = 0; b < GFBITS; b++) asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (out_low[k+s][b]) : [r1]"r" (out_low[k+s][b]) , [r2]"r" (out_low[k][b]) );
			}
		}

		consts_ptr_high += (1 << i);
		consts_ptr_low += (1 << i);
	}
} 

void fft(uint32_t out_high[][ GFBITS ], uint32_t out_low[][ GFBITS ], uint32_t *in_high, uint32_t *in_low)
{
		radix_conversions(in_high, in_low);
		butterflies(out_high, out_low, in_high, in_low);
}
