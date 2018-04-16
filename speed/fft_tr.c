#include "fft_tr.h"
#include "util.h"
#include "vec.h"
#include "transpose.h"

#include <stdint.h>

static void vec_add(uint32_t zh[GFBITS], uint32_t zl[GFBITS], uint32_t xh[GFBITS], uint32_t xl[GFBITS], uint32_t yh[GFBITS], uint32_t yl[GFBITS])
{
	int i;
	for (i = 0; i < GFBITS; i++)
	{
		zh[i] = xh[i]^yh[i];
		zl[i] = xl[i]^yl[i];
	}
}

static void radix_conversions_tr(uint32_t in_high[][ GFBITS ], uint32_t in_low[][ GFBITS ])
{
	int i, j, k, shift;
    uint32_t temp_high, temp_low, carry;

	const uint32_t mask_high[6][2] =
	{
		{0x22222222, 0x44444444},
		{0x0C0C0C0C, 0x30303030},
		{0x00F000F0, 0x0F000F00},
		{0x0000FF00, 0x00FF0000},
		{0x00000000, 0x0000FFFF},
		{0xFFFFFFFF, 0x00000000}
	};
	const uint32_t mask_low[6][2] =
	{
		{0x22222222, 0x44444444},
		{0x0C0C0C0C, 0x30303030},
		{0x00F000F0, 0x0F000F00},
		{0x0000FF00, 0x00FF0000},
		{0xFFFF0000, 0x00000000},
		{0x00000000, 0xFFFFFFFF}
	};


	const uint32_t s_high[5][2][GFBITS] =
	{
  #include "scalars_2x_high.data"
	};
    const uint32_t s_low[5][2][GFBITS] =
	{
  #include "scalars_2x_low.data"
	};

	//

	for (j = 5; j >= 0; j--)
	{
		if (j < 5)
		{
			vec_mul_s(in_high[0], in_high[0], s_high[j][0]); // scaling
			vec_mul_s(in_low[0], in_low[0], s_low[j][0]); // scaling

			vec_mul_s(in_high[1], in_high[1], s_high[j][1]); // scaling
			vec_mul_s(in_low[1], in_low[1], s_low[j][1]); // scaling
		}

		for (i = 0; i < GFBITS; i++)
		for (k = j; k <= 4; k++)
		{
			shift = 1 << k;
			//in[0][i] ^= (in[0][i] & mask[k][0]) << (1 << k);
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_high) : [in1]"r" (in_high[0][i]), [in2]"r" (mask_high[k][0]) );
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_low) : [in1]"r" (in_low[0][i]), [in2]"r" (mask_low[k][0]) );
			asm("LSR %[target], %[value], %[shift]" : [target]"=r" (carry) : [value]"r" (temp_low), [shift]"r" (32-shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_high) : [value]"r" (temp_high), [shift]"r" (shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_low) : [value]"r" (temp_low), [shift]"r" (shift) );
			asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (temp_high) : [value1]"r" (temp_high), [value2]"r" (carry) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_high[0][i]) : [r1]"r" (in_high[0][i]) , [r2]"r" (temp_high) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_low[0][i]) : [r1]"r" (in_low[0][i]) , [r2]"r" (temp_low) );

			//in[0][i] ^= (in[0][i] & mask[k][1]) << (1 << k);
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_high) : [in1]"r" (in_high[0][i]), [in2]"r" (mask_high[k][1]) );
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_low) : [in1]"r" (in_low[0][i]), [in2]"r" (mask_low[k][1]) );
			asm("LSR %[target], %[value], %[shift]" : [target]"=r" (carry) : [value]"r" (temp_low), [shift]"r" (32-shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_high) : [value]"r" (temp_high), [shift]"r" (shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_low) : [value]"r" (temp_low), [shift]"r" (shift) );
			asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (temp_high) : [value1]"r" (temp_high), [value2]"r" (carry) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_high[0][i]) : [r1]"r" (in_high[0][i]) , [r2]"r" (temp_high) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_low[0][i]) : [r1]"r" (in_low[0][i]) , [r2]"r" (temp_low) );

			//in[1][i] ^= (in[1][i] & mask[k][0]) << (1 << k);
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_high) : [in1]"r" (in_high[1][i]), [in2]"r" (mask_high[k][0]) );
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_low) : [in1]"r" (in_low[1][i]), [in2]"r" (mask_low[k][0]) );
			asm("LSR %[target], %[value], %[shift]" : [target]"=r" (carry) : [value]"r" (temp_low), [shift]"r" (32-shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_high) : [value]"r" (temp_high), [shift]"r" (shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_low) : [value]"r" (temp_low), [shift]"r" (shift) );
			asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (temp_high) : [value1]"r" (temp_high), [value2]"r" (carry) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_high[1][i]) : [r1]"r" (in_high[1][i]) , [r2]"r" (temp_high) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_low[1][i]) : [r1]"r" (in_low[1][i]) , [r2]"r" (temp_low) );

			//in[1][i] ^= (in[1][i] & mask[k][1]) << (1 << k);
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_high) : [in1]"r" (in_high[1][i]), [in2]"r" (mask_high[k][1]) );
			asm("AND %[out], %[in1], %[in2]" : [out]"=r" (temp_low) : [in1]"r" (in_low[1][i]), [in2]"r" (mask_low[k][1]) );
			asm("LSR %[target], %[value], %[shift]" : [target]"=r" (carry) : [value]"r" (temp_low), [shift]"r" (32-shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_high) : [value]"r" (temp_high), [shift]"r" (shift) );
			asm("LSL %[target], %[value], %[shift]" : [target]"=r" (temp_low) : [value]"r" (temp_low), [shift]"r" (shift) );
			asm("ORR %[target], %[value1], %[value2]" : [target]"=r" (temp_high) : [value1]"r" (temp_high), [value2]"r" (carry) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_high[1][i]) : [r1]"r" (in_high[1][i]) , [r2]"r" (temp_high) );
			asm("EOR %[target], %[r1], %[r2]" : [target]"=r" (in_low[1][i]) : [r1]"r" (in_low[1][i]) , [r2]"r" (temp_low) );
		}

		for (i = 0; i < GFBITS; i++)
		{
			in_high[1][i] ^= 0x00000000;
			in_low[1][i] ^= in_high[0][i] & mask_high[5][0];
			in_high[1][i] ^= in_low[1][i] & mask_low[5][1];
			in_low[1][i] ^= 0x00000000;
		}
	}
}

static void butterflies_tr(uint32_t out_high[][ GFBITS ], uint32_t out_low[][ GFBITS ], uint32_t in_high[][ GFBITS ], uint32_t in_low[][ GFBITS ])
{
	int i, j, k, s;

	uint32_t tmp_high[ GFBITS ];
	uint32_t tmp_low[ GFBITS ];
	uint32_t pre_high[6][ GFBITS ];
	uint32_t pre_low[6][ GFBITS ];
	uint32_t buf_high[64];
	uint32_t buf_low[64];

	const uint32_t consts_high[ 63 ][ GFBITS ] =
	{
  #include "consts_high.data"
	};
	const uint32_t consts_low[ 63 ][ GFBITS ] =
	{
  #include "consts_low.data"
	};

	uint32_t consts_ptr_high = 63;
	uint32_t consts_ptr_low = 63;

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

	const uint16_t beta[6] = {8, 1300, 3408, 1354, 2341, 1154};

	// butterflies

	for (i = 5; i >= 0; i--)
	{
		s = 1 << i;
		consts_ptr_high -= s;
		consts_ptr_low -= s;

		for (j = 0; j < 64; j += 2*s)
		for (k = j; k < j+s; k++)
		{
			vec_add(in_high[k], in_low[k], in_high[k], in_low[k], in_high[k+s], in_low[k+s]);
			vec_mul_s(tmp_high, in_high[k], consts_high[ consts_ptr_high + (k-j) ]);
			vec_mul_s(tmp_low, in_low[k], consts_low[ consts_ptr_low + (k-j) ]);
			vec_add(in_high[k+s], in_low[k+s], in_high[k+s], in_low[k+s], tmp_high, tmp_low);
		}
	}

	// transpose

	for (i = 0; i < GFBITS; i++)
	{
		for (j = 0; j < 64; j++)
        {
            buf_high[ reversal[j] ] = in_high[j][i];
            buf_low[ reversal[j] ] = in_low[j][i];
        }

		transpose_64x64_compact(buf_high, buf_low, buf_high, buf_low);

		for (j = 0; j < 64; j++)
        {
            in_high[j][i] = buf_high[ j ];
            in_low[j][i] = buf_low[ j ];
        }
	}

	// broadcast

	vec_copy(pre_high[0], pre_low[0], in_high[32], in_low[32]);
	vec_add(in_high[33], in_low[33], in_high[33], in_low[33], in_high[32], in_low[32]);
	vec_copy(pre_high[1], pre_low[1], in_high[33], in_low[33]);
	vec_add(in_high[35], in_low[35], in_high[35], in_low[35], in_high[33], in_low[33]);

	vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[35], in_low[35]);
	vec_add(in_high[34], in_low[34], in_high[34], in_low[34], in_high[35], in_low[35]);

	vec_copy(pre_high[2], pre_low[2], in_high[34], in_low[34]);
	vec_add(in_high[38], in_low[38], in_high[38], in_low[38], in_high[34], in_low[34]);

    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[38], in_low[38]); vec_add(in_high[39], in_low[39], in_high[39], in_low[39], in_high[38], in_low[38]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[39], in_low[39]); vec_add(in_high[37], in_low[37], in_high[37], in_low[37], in_high[39], in_low[39]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[37], in_low[37]); vec_add(in_high[36], in_low[36], in_high[36], in_low[36], in_high[37], in_low[37]);
	vec_copy(pre_high[3], pre_low[3], in_high[36], in_low[36]);
	vec_add(in_high[44], in_low[44], in_high[44], in_low[44], in_high[36], in_low[36]);

    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[44], in_low[44]); vec_add(in_high[45], in_low[45], in_high[45], in_low[45], in_high[44], in_low[44]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[45], in_low[45]); vec_add(in_high[47], in_low[47], in_high[47], in_low[47], in_high[45], in_low[45]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[47], in_low[47]); vec_add(in_high[46], in_low[46], in_high[46], in_low[46], in_high[47], in_low[47]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[46], in_low[46]); vec_add(in_high[42], in_low[42], in_high[42], in_low[42], in_high[46], in_low[46]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[42], in_low[42]); vec_add(in_high[43], in_low[43], in_high[43], in_low[43], in_high[42], in_low[42]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[43], in_low[43]); vec_add(in_high[41], in_low[41], in_high[41], in_low[41], in_high[43], in_low[43]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[41], in_low[41]); vec_add(in_high[40], in_low[40], in_high[40], in_low[40], in_high[41], in_low[41]);

	vec_copy(pre_high[4], pre_low[4], in_high[40], in_low[40]);
	vec_add(in_high[56], in_low[56], in_high[56], in_low[56], in_high[40], in_low[40]);

    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[56], in_low[56]); vec_add(in_high[57], in_low[57], in_high[57], in_low[57], in_high[56], in_low[56]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[57], in_low[57]); vec_add(in_high[59], in_low[59], in_high[59], in_low[59], in_high[57], in_low[57]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[59], in_low[59]); vec_add(in_high[58], in_low[58], in_high[58], in_low[58], in_high[59], in_low[59]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[58], in_low[58]); vec_add(in_high[62], in_low[62], in_high[62], in_low[62], in_high[58], in_low[58]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[62], in_low[62]); vec_add(in_high[63], in_low[63], in_high[63], in_low[63], in_high[62], in_low[62]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[63], in_low[63]); vec_add(in_high[61], in_low[61], in_high[61], in_low[61], in_high[63], in_low[63]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[61], in_low[61]); vec_add(in_high[60], in_low[60], in_high[60], in_low[60], in_high[61], in_low[61]);
    vec_add(pre_high[3], pre_low[3], pre_high[3], pre_low[3], in_high[60], in_low[60]); vec_add(in_high[52], in_low[52], in_high[52], in_low[52], in_high[60], in_low[60]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[52], in_low[52]); vec_add(in_high[53], in_low[53], in_high[53], in_low[53], in_high[52], in_low[52]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[53], in_low[53]); vec_add(in_high[55], in_low[55], in_high[55], in_low[55], in_high[53], in_low[53]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[55], in_low[55]); vec_add(in_high[54], in_low[54], in_high[54], in_low[54], in_high[55], in_low[55]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[54], in_low[54]); vec_add(in_high[50], in_low[50], in_high[50], in_low[50], in_high[54], in_low[54]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[50], in_low[50]); vec_add(in_high[51], in_low[51], in_high[51], in_low[51], in_high[50], in_low[50]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[51], in_low[51]); vec_add(in_high[49], in_low[49], in_high[49], in_low[49], in_high[51], in_low[51]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[49], in_low[49]); vec_add(in_high[48], in_low[48], in_high[48], in_low[48], in_high[49], in_low[49]);

	vec_copy(pre_high[5], pre_low[5], in_high[48], in_low[48]);
	vec_add(in_high[16], in_low[16], in_high[16], in_low[16], in_high[48], in_low[48]);

    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[16], in_low[16]); vec_add(in_high[17], in_low[17], in_high[17], in_low[17], in_high[16], in_low[16]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[17], in_low[17]); vec_add(in_high[19], in_low[19], in_high[19], in_low[19], in_high[17], in_low[17]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[19], in_low[19]); vec_add(in_high[18], in_low[18], in_high[18], in_low[18], in_high[19], in_low[19]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[18], in_low[18]); vec_add(in_high[22], in_low[22], in_high[22], in_low[22], in_high[18], in_low[18]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[22], in_low[22]); vec_add(in_high[23], in_low[23], in_high[23], in_low[23], in_high[22], in_low[22]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[23], in_low[23]); vec_add(in_high[21], in_low[21], in_high[21], in_low[21], in_high[23], in_low[23]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[21], in_low[21]); vec_add(in_high[20], in_low[20], in_high[20], in_low[20], in_high[21], in_low[21]);
    vec_add(pre_high[3], pre_low[3], pre_high[3], pre_low[3], in_high[20], in_low[20]); vec_add(in_high[28], in_low[28], in_high[28], in_low[28], in_high[20], in_low[20]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[28], in_low[28]); vec_add(in_high[29], in_low[29], in_high[29], in_low[29], in_high[28], in_low[28]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[29], in_low[29]); vec_add(in_high[31], in_low[31], in_high[31], in_low[31], in_high[29], in_low[29]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[31], in_low[31]); vec_add(in_high[30], in_low[30], in_high[30], in_low[30], in_high[31], in_low[31]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[30], in_low[30]); vec_add(in_high[26], in_low[26], in_high[26], in_low[26], in_high[30], in_low[30]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[26], in_low[26]); vec_add(in_high[27], in_low[27], in_high[27], in_low[27], in_high[26], in_low[26]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[27], in_low[27]); vec_add(in_high[25], in_low[25], in_high[25], in_low[25], in_high[27], in_low[27]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[25], in_low[25]); vec_add(in_high[24], in_low[24], in_high[24], in_low[24], in_high[25], in_low[25]);

	vec_add(pre_high[4], pre_low[4], pre_high[4], pre_low[4], in_high[24], in_low[24]); vec_add(in_high[8], in_low[8], in_high[8], in_low[8], in_high[24], in_low[24]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[8], in_low[8]); vec_add(in_high[9], in_low[9], in_high[9], in_low[9], in_high[8], in_low[8]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[9], in_low[9]); vec_add(in_high[11], in_low[11], in_high[11], in_low[11], in_high[9], in_low[9]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[11], in_low[11]); vec_add(in_high[10], in_low[10], in_high[10], in_low[10], in_high[11], in_low[11]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[10], in_low[10]); vec_add(in_high[14], in_low[14], in_high[14], in_low[14], in_high[10], in_low[10]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[14], in_low[14]); vec_add(in_high[15], in_low[15], in_high[15], in_low[15], in_high[14], in_low[14]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[15], in_low[15]); vec_add(in_high[13], in_low[13], in_high[13], in_low[13], in_high[15], in_low[15]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[13], in_low[13]); vec_add(in_high[12], in_low[12], in_high[12], in_low[12], in_high[13], in_low[13]);
    vec_add(pre_high[3], pre_low[3], pre_high[3], pre_low[3], in_high[12], in_low[12]); vec_add(in_high[4], in_low[4], in_high[4], in_low[4], in_high[12], in_low[12]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[4], in_low[4]); vec_add(in_high[5], in_low[5], in_high[5], in_low[5], in_high[4], in_low[4]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[5], in_low[5]); vec_add(in_high[7], in_low[7], in_high[7], in_low[7], in_high[5], in_low[5]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[7], in_low[7]); vec_add(in_high[6], in_low[6], in_high[6], in_low[6], in_high[7], in_low[7]);
    vec_add(pre_high[2], pre_low[2], pre_high[2], pre_low[2], in_high[6], in_low[6]); vec_add(in_high[2], in_low[2], in_high[2], in_low[2], in_high[6], in_low[6]);
    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[2], in_low[2]); vec_add(in_high[3], in_low[3], in_high[3], in_low[3], in_high[2], in_low[2]);
    vec_add(pre_high[1], pre_low[1], pre_high[1], pre_low[1], in_high[3], in_low[3]); vec_add(in_high[1], in_low[1], in_high[1], in_low[1], in_high[3], in_low[3]);

    vec_add(pre_high[0], pre_low[0], pre_high[0], pre_low[0], in_high[1], in_low[1]); vec_add(out_high[0], out_low[0], in_high[0], in_low[0], in_high[1], in_low[1]);

	//

	for (j = 0; j < GFBITS; j++)
    {
        tmp_high[j] = (beta[0] >> j) & 1;
        tmp_high[j] = -tmp_high[j];
        tmp_low[j] = (beta[0] >> j) & 1;
        tmp_low[j] = -tmp_low[j];
    }

	vec_mul_s(out_high[1], pre_high[0], tmp_high);
	vec_mul_s(out_low[1], pre_low[0], tmp_low);

	for (i = 1; i < 6; i++)
	{
		for (j = 0; j < GFBITS; j++)
        {
            tmp_high[j] = (beta[i] >> j) & 1; tmp_high[j] = -tmp_high[j];
            tmp_low[j] = (beta[i] >> j) & 1; tmp_low[j] = -tmp_low[j];
        }

		vec_mul_s(tmp_high, pre_high[i], tmp_high);
		vec_mul_s(tmp_low, pre_low[i], tmp_low);
		vec_add(out_high[1], out_low[1], out_high[1], out_low[1], tmp_high, tmp_low);
	}
}

void fft_tr(uint32_t out_high[][GFBITS], uint32_t out_low[][GFBITS], uint32_t in_high[][ GFBITS ], uint32_t in_low[][ GFBITS ])
{
		butterflies_tr(out_high, out_low, in_high, in_low);
		radix_conversions_tr(out_high, out_low);
}

