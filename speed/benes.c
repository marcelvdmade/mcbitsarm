#include "benes.h"
#include "fastrandombytes.h"
#include "transpose.h"

#include <stdio.h>
#include <string.h>
#include <assert.h>

static void func(uint32_t *bs_high, uint32_t *bs_low, uint32_t *cond_ptr_high, uint32_t *cond_ptr_low,int low)
{
	int i, j, x, y;
	int high = 5 - low;

    uint32_t diff_high;
	uint32_t diff_low;

	for (j = 0; j < (1 << low); j++)
	{
		x = (0 << low) + j;
		y = (1 << low) + j;

		for (i = 0; i < (1 << high); i++)
		{
            diff_high = bs_high[ x ] ^ bs_high[ y ];
            diff_low = bs_low[ x ] ^ bs_low[ y ];
            diff_high &= (*cond_ptr_high++);
            diff_low &= (*cond_ptr_low++);
            bs_high[ x ] ^= diff_high;
            bs_high[ y ] ^= diff_high;
            bs_low[ x ] ^= diff_low;
            bs_low[ y ] ^= diff_low;
            x += (1 << (low+1));
            y += (1 << (low+1));
		}
	}
}

void benes_compact(uint32_t *bs_high, uint32_t *bs_low, uint32_t *cond_high, uint32_t *cond_low, int rev)
{
	uint32_t *cond_ptr_high;
	uint32_t *cond_ptr_low;
	int inc, low;

	//

	if (rev == 0)
	{
		inc = 32;
		cond_ptr_high = cond_high;
		cond_ptr_low = cond_low;
	}
	else
	{
		inc = -32;
		cond_ptr_high = &cond_high[704];
		cond_ptr_low = &cond_low[704];
	}

	//

	for (low = 0; low <= 5; low++) { func(bs_high, bs_low, cond_ptr_high, cond_ptr_low, low); cond_ptr_high += inc; cond_ptr_low += inc; }
	
	transpose_64x64_compact(bs_high, bs_low,bs_high, bs_low);
	
	for (low = 0; low <= 5; low++) { func(bs_high, bs_low, cond_ptr_high, cond_ptr_low, low); cond_ptr_high += inc; cond_ptr_low += inc; }
	for (low = 4; low >= 0; low--) { func(bs_high, bs_low, cond_ptr_high, cond_ptr_low, low); cond_ptr_high += inc; cond_ptr_low += inc; }
	
	transpose_64x64_compact(bs_high, bs_low,bs_high, bs_low);
	
	for (low = 5; low >= 0; low--) { func(bs_high, bs_low, cond_ptr_high, cond_ptr_low, low); cond_ptr_high += inc; cond_ptr_low += inc; }
}

