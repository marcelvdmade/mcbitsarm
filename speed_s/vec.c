#include "vec.h"
#include "params.h"
#include "stm32wrapper.h"

#include <stdio.h>

void vec_mul(uint32_t *h_high, uint32_t *h_low, uint32_t *f_high, uint32_t *f_low, const uint32_t *g_high, const uint32_t *g_low)
{   //assembly mul
	uint32_t t2_high, t3_high, t4_high, t5_high, t6_high, t7_high, t8_high, t9_high, t10_high, t11_high, t14_high, t15_high, t16_high, t17_high, t18_high, t19_high, t20_high;
	uint32_t t21_high, t22_high, t23_high, t24_high, t25_high, t26_high, t27_high, t28_high, t29_high, t30_high, t31_high, t32_high, t33_high, t34_high, t35_high, t36_high, t37_high, t38_high, t39_high, t40_high;
	uint32_t t41_high, t42_high, t43_high, t44_high, t45_high, t46_high, t47_high, t50_high, t52_high, t53_high, t54_high, t55_high, t56_high, t57_high, t58_high, t59_high, t60_high;
	uint32_t t61_high, t62_high, t63_high, t64_high, t65_high, t66_high, t67_high, t68_high, t69_high, t70_high, t71_high, t72_high, t73_high, t74_high, t75_high, t76_high, t77_high, t78_high, t79_high, t80_high;
	uint32_t t81_high, t82_high, t83_high, t84_high, t85_high, t86_high, t87_high, t88_high, t89_high, t90_high, t91_high, t92_high, t93_high, t94_high, t95_high, t96_high, t97_high, t98_high, t99_high, t100_high;
	uint32_t t101_high, t102_high, t103_high, t104_high, t105_high, t106_high, t107_high, t111_high, t112_high, t113_high, t114_high, t118_high, t119_high, t120_high;
	uint32_t t121_high, t122_high, t123_high, t124_high, t125_high, t126_high, t127_high, t128_high, t129_high, t130_high, t131_high, t132_high, t133_high, t134_high, t135_high, t136_high, t137_high, t138_high, t139_high, t140_high;
	uint32_t t141_high, t142_high, t143_high, t144_high, t145_high, t146_high, t147_high, t148_high, t149_high, t150_high, t151_high, t152_high, t153_high, t154_high, t155_high, t156_high, t157_high, t158_high, t159_high, t160_high;
	uint32_t t161_high, t162_high, t163_high, t164_high, t165_high, t166_high, t167_high, t168_high, t169_high, t170_high, t171_high, t172_high, t173_high, t174_high, t175_high, t176_high, t177_high, t178_high, t179_high, t180_high;
	uint32_t t181_high, t182_high, t183_high, t184_high, t185_high, t186_high, t187_high, t188_high, t189_high, t190_high, t191_high, t192_high, t193_high, t194_high, t195_high, t196_high, t197_high;

	uint32_t t2_low, t3_low, t4_low, t5_low, t6_low, t7_low, t8_low, t9_low, t10_low, t11_low, t14_low, t15_low, t16_low, t17_low, t18_low, t19_low, t20_low;
	uint32_t t21_low, t22_low, t23_low, t24_low, t25_low, t26_low, t27_low, t28_low, t29_low, t30_low, t31_low, t32_low, t33_low, t34_low, t35_low, t36_low, t37_low, t38_low, t39_low, t40_low;
	uint32_t t41_low, t42_low, t43_low, t44_low, t45_low, t46_low, t47_low, t50_low, t52_low, t53_low, t54_low, t55_low, t56_low, t57_low, t58_low, t59_low, t60_low;
	uint32_t t61_low, t62_low, t63_low, t64_low, t65_low, t66_low, t67_low, t68_low, t69_low, t70_low, t71_low, t72_low, t73_low, t74_low, t75_low, t76_low, t77_low, t78_low, t79_low, t80_low;
	uint32_t t81_low, t82_low, t83_low, t84_low, t85_low, t86_low, t87_low, t88_low, t89_low, t90_low, t91_low, t92_low, t93_low, t94_low, t95_low, t96_low, t97_low, t98_low, t99_low, t100_low;
	uint32_t t101_low, t102_low, t103_low, t104_low, t105_low, t106_low, t107_low, t111_low, t112_low, t113_low, t114_low, t118_low, t119_low, t120_low;
	uint32_t t121_low, t122_low, t123_low, t124_low, t125_low, t126_low, t127_low, t128_low, t129_low, t130_low, t131_low, t132_low, t133_low, t134_low, t135_low, t136_low, t137_low, t138_low, t139_low, t140_low;
	uint32_t t141_low, t142_low, t143_low, t144_low, t145_low, t146_low, t147_low, t148_low, t149_low, t150_low, t151_low, t152_low, t153_low, t154_low, t155_low, t156_low, t157_low, t158_low, t159_low, t160_low;
	uint32_t t161_low, t162_low, t163_low, t164_low, t165_low, t166_low, t167_low, t168_low, t169_low, t170_low, t171_low, t172_low, t173_low, t174_low, t175_low, t176_low, t177_low, t178_low, t179_low, t180_low;
	uint32_t t181_low, t182_low, t183_low, t184_low, t185_low, t186_low, t187_low, t188_low, t189_low, t190_low, t191_low, t192_low, t193_low, t194_low, t195_low, t196_low, t197_low;

	uint32_t result_high[2*GFBITS - 1];
    uint32_t result_low[2*GFBITS - 1];

    //high
	asm("AND %[t1_high], %[f_high11], %[g_high11]" : [t1_high]"=r" (result_high[22]) : [f_high11]"r" (f_high[11]) , [g_high11]"r" (g_high[11]) );	// and f_high11 g_high11 => t1_high
	asm("AND %[t2_high], %[f_high11], %[g_high9]" : [t2_high]"=r" (t2_high) : [f_high11]"r" (f_high[11]) , [g_high9]"r" (g_high[9]) );	// and f_high11 g_high9 => t2_high
	asm("AND %[t3_high], %[f_high11], %[g_high10]" : [t3_high]"=r" (t3_high) : [f_high11]"r" (f_high[11]) , [g_high10]"r" (g_high[10]) );	// and f_high11 g_high10 => t3_high
	asm("AND %[t4_high], %[f_high9], %[g_high11]" : [t4_high]"=r" (t4_high) : [f_high9]"r" (f_high[9]) , [g_high11]"r" (g_high[11]) );	// and f_high9 g_high11 => t4_high
	asm("AND %[t5_high], %[f_high10], %[g_high11]" : [t5_high]"=r" (t5_high) : [f_high10]"r" (f_high[10]) , [g_high11]"r" (g_high[11]) );	// and f_high10 g_high11 => t5_high
	asm("AND %[t6_high], %[f_high10], %[g_high10]" : [t6_high]"=r" (t6_high) : [f_high10]"r" (f_high[10]) , [g_high10]"r" (g_high[10]) );	// and f_high10 g_high10 => t6_high
	asm("AND %[t7_high], %[f_high10], %[g_high9]" : [t7_high]"=r" (t7_high) : [f_high10]"r" (f_high[10]) , [g_high9]"r" (g_high[9]) );	// and f_high10 g_high9 => t7_high
	asm("AND %[t8_high], %[f_high9], %[g_high10]" : [t8_high]"=r" (t8_high) : [f_high9]"r" (f_high[9]) , [g_high10]"r" (g_high[10]) );	// and f_high9 g_high10 => t8_high
	asm("AND %[t9_high], %[f_high9], %[g_high9]" : [t9_high]"=r" (t9_high) : [f_high9]"r" (f_high[9]) , [g_high9]"r" (g_high[9]) );	// and f_high9 g_high9 => t9_high
	asm("EOR %[t10_high], %[t8_high], %[t7_high]" : [t10_high]"=r" (t10_high) : [t8_high]"r" (t8_high) , [t7_high]"r" (t7_high) );	// eor t8_high t7_high => t10_high
	asm("EOR %[t11_high], %[t6_high], %[t4_high]" : [t11_high]"=r" (t11_high) : [t6_high]"r" (t6_high) , [t4_high]"r" (t4_high) );	// eor t6_high t4_high => t11_high
	asm("EOR %[t12_high], %[t11_high], %[t2_high]" : [t12_high]"=r" (result_high[20]) : [t11_high]"r" (t11_high) , [t2_high]"r" (t2_high) );	// eor t11_high t2_high => t12_high
	asm("EOR %[t13_high], %[t5_high], %[t3_high]" : [t13_high]"=r" (result_high[21]) : [t5_high]"r" (t5_high) , [t3_high]"r" (t3_high) );	// eor t5_high t3_high => t13_high
	asm("AND %[t14_high], %[f_high8], %[g_high8]" : [t14_high]"=r" (t14_high) : [f_high8]"r" (f_high[8]) , [g_high8]"r" (g_high[8]) );	// and f_high8 g_high8 => t14_high
	asm("AND %[t15_high], %[f_high8], %[g_high6]" : [t15_high]"=r" (t15_high) : [f_high8]"r" (f_high[8]) , [g_high6]"r" (g_high[6]) );	// and f_high8 g_high6 => t15_high
	asm("AND %[t16_high], %[f_high8], %[g_high7]" : [t16_high]"=r" (t16_high) : [f_high8]"r" (f_high[8]) , [g_high7]"r" (g_high[7]) );	// and f_high8 g_high7 => t16_high
	asm("AND %[t17_high], %[f_high6], %[g_high8]" : [t17_high]"=r" (t17_high) : [f_high6]"r" (f_high[6]) , [g_high8]"r" (g_high[8]) );	// and f_high6 g_high8 => t17_high
	asm("AND %[t18_high], %[f_high7], %[g_high8]" : [t18_high]"=r" (t18_high) : [f_high7]"r" (f_high[7]) , [g_high8]"r" (g_high[8]) );	// and f_high7 g_high8 => t18_high
	asm("AND %[t19_high], %[f_high7], %[g_high7]" : [t19_high]"=r" (t19_high) : [f_high7]"r" (f_high[7]) , [g_high7]"r" (g_high[7]) );	// and f_high7 g_high7 => t19_high
	asm("AND %[t20_high], %[f_high7], %[g_high6]" : [t20_high]"=r" (t20_high) : [f_high7]"r" (f_high[7]) , [g_high6]"r" (g_high[6]) );	// and f_high7 g_high6 => t20_high
	asm("AND %[t21_high], %[f_high6], %[g_high7]" : [t21_high]"=r" (t21_high) : [f_high6]"r" (f_high[6]) , [g_high7]"r" (g_high[7]) );	// and f_high6 g_high7 => t21_high
	asm("AND %[t22_high], %[f_high6], %[g_high6]" : [t22_high]"=r" (t22_high) : [f_high6]"r" (f_high[6]) , [g_high6]"r" (g_high[6]) );	// and f_high6 g_high6 => t22_high
	asm("EOR %[t23_high], %[t21_high], %[t20_high]" : [t23_high]"=r" (t23_high) : [t21_high]"r" (t21_high) , [t20_high]"r" (t20_high) );	// eor t21_high t20_high => t23_high
	asm("EOR %[t24_high], %[t19_high], %[t17_high]" : [t24_high]"=r" (t24_high) : [t19_high]"r" (t19_high) , [t17_high]"r" (t17_high) );	// eor t19_high t17_high => t24_high
	asm("EOR %[t25_high], %[t24_high], %[t15_high]" : [t25_high]"=r" (t25_high) : [t24_high]"r" (t24_high) , [t15_high]"r" (t15_high) );	// eor t24_high t15_high => t25_high
	asm("EOR %[t26_high], %[t18_high], %[t16_high]" : [t26_high]"=r" (t26_high) : [t18_high]"r" (t18_high) , [t16_high]"r" (t16_high) );	// eor t18_high t16_high => t26_high
	asm("AND %[t27_high], %[f_high5], %[g_high5]" : [t27_high]"=r" (t27_high) : [f_high5]"r" (f_high[5]) , [g_high5]"r" (g_high[5]) );	// and f_high5 g_high5 => t27_high
	asm("AND %[t28_high], %[f_high5], %[g_high3]" : [t28_high]"=r" (t28_high) : [f_high5]"r" (f_high[5]) , [g_high3]"r" (g_high[3]) );	// and f_high5 g_high3 => t28_high
	asm("AND %[t29_high], %[f_high5], %[g_high4]" : [t29_high]"=r" (t29_high) : [f_high5]"r" (f_high[5]) , [g_high4]"r" (g_high[4]) );	// and f_high5 g_high4 => t29_high
	asm("AND %[t30_high], %[f_high3], %[g_high5]" : [t30_high]"=r" (t30_high) : [f_high3]"r" (f_high[3]) , [g_high5]"r" (g_high[5]) );	// and f_high3 g_high5 => t30_high
	asm("AND %[t31_high], %[f_high4], %[g_high5]" : [t31_high]"=r" (t31_high) : [f_high4]"r" (f_high[4]) , [g_high5]"r" (g_high[5]) );	// and f_high4 g_high5 => t31_high
	asm("AND %[t32_high], %[f_high4], %[g_high4]" : [t32_high]"=r" (t32_high) : [f_high4]"r" (f_high[4]) , [g_high4]"r" (g_high[4]) );	// and f_high4 g_high4 => t32_high
	asm("AND %[t33_high], %[f_high4], %[g_high3]" : [t33_high]"=r" (t33_high) : [f_high4]"r" (f_high[4]) , [g_high3]"r" (g_high[3]) );	// and f_high4 g_high3 => t33_high
	asm("AND %[t34_high], %[f_high3], %[g_high4]" : [t34_high]"=r" (t34_high) : [f_high3]"r" (f_high[3]) , [g_high4]"r" (g_high[4]) );	// and f_high3 g_high4 => t34_high
	asm("AND %[t35_high], %[f_high3], %[g_high3]" : [t35_high]"=r" (t35_high) : [f_high3]"r" (f_high[3]) , [g_high3]"r" (g_high[3]) );	// and f_high3 g_high3 => t35_high
	asm("EOR %[t36_high], %[t34_high], %[t33_high]" : [t36_high]"=r" (t36_high) : [t34_high]"r" (t34_high) , [t33_high]"r" (t33_high) );	// eor t34_high t33_high => t36_high
	asm("EOR %[t37_high], %[t32_high], %[t30_high]" : [t37_high]"=r" (t37_high) : [t32_high]"r" (t32_high) , [t30_high]"r" (t30_high) );	// eor t32_high t30_high => t37_high
	asm("EOR %[t38_high], %[t37_high], %[t28_high]" : [t38_high]"=r" (t38_high) : [t37_high]"r" (t37_high) , [t28_high]"r" (t28_high) );	// eor t37_high t28_high => t38_high
	asm("EOR %[t39_high], %[t31_high], %[t29_high]" : [t39_high]"=r" (t39_high) : [t31_high]"r" (t31_high) , [t29_high]"r" (t29_high) );	// eor t31_high t29_high => t39_high
	asm("AND %[t40_high], %[f_high2], %[g_high2]" : [t40_high]"=r" (t40_high) : [f_high2]"r" (f_high[2]) , [g_high2]"r" (g_high[2]) );	// and f_high2 g_high2 => t40_high
	asm("AND %[t41_high], %[f_high2], %[g_high0]" : [t41_high]"=r" (t41_high) : [f_high2]"r" (f_high[2]) , [g_high0]"r" (g_high[0]) );	// and f_high2 g_high0 => t41_high
	asm("AND %[t42_high], %[f_high2], %[g_high1]" : [t42_high]"=r" (t42_high) : [f_high2]"r" (f_high[2]) , [g_high1]"r" (g_high[1]) );	// and f_high2 g_high1 => t42_high
	asm("AND %[t43_high], %[f_high0], %[g_high2]" : [t43_high]"=r" (t43_high) : [f_high0]"r" (f_high[0]) , [g_high2]"r" (g_high[2]) );	// and f_high0 g_high2 => t43_high
	asm("AND %[t44_high], %[f_high1], %[g_high2]" : [t44_high]"=r" (t44_high) : [f_high1]"r" (f_high[1]) , [g_high2]"r" (g_high[2]) );	// and f_high1 g_high2 => t44_high
	asm("AND %[t45_high], %[f_high1], %[g_high1]" : [t45_high]"=r" (t45_high) : [f_high1]"r" (f_high[1]) , [g_high1]"r" (g_high[1]) );	// and f_high1 g_high1 => t45_high
	asm("AND %[t46_high], %[f_high1], %[g_high0]" : [t46_high]"=r" (t46_high) : [f_high1]"r" (f_high[1]) , [g_high0]"r" (g_high[0]) );	// and f_high1 g_high0 => t46_high
	asm("AND %[t47_high], %[f_high0], %[g_high1]" : [t47_high]"=r" (t47_high) : [f_high0]"r" (f_high[0]) , [g_high1]"r" (g_high[1]) );	// and f_high0 g_high1 => t47_high
	asm("AND %[t48_high], %[f_high0], %[g_high0]" : [t48_high]"=r" (result_high[0]) : [f_high0]"r" (f_high[0]) , [g_high0]"r" (g_high[0]) );	// and f_high0 g_high0 => t48_high
	asm("EOR %[t49_high], %[t47_high], %[t46_high]" : [t49_high]"=r" (result_high[1]) : [t47_high]"r" (t47_high) , [t46_high]"r" (t46_high) );	// eor t47_high t46_high => t49_high
	asm("EOR %[t50_high], %[t45_high], %[t43_high]" : [t50_high]"=r" (t50_high) : [t45_high]"r" (t45_high) , [t43_high]"r" (t43_high) );	// eor t45_high t43_high => t50_high
	asm("EOR %[t51_high], %[t50_high], %[t41_high]" : [t51_high]"=r" (result_high[2]) : [t50_high]"r" (t50_high) , [t41_high]"r" (t41_high) );	// eor t50_high t41_high => t51_high
	asm("EOR %[t52_high], %[t44_high], %[t42_high]" : [t52_high]"=r" (t52_high) : [t44_high]"r" (t44_high) , [t42_high]"r" (t42_high) );	// eor t44_high t42_high => t52_high
	asm("EOR %[t53_high], %[t52_high], %[t35_high]" : [t53_high]"=r" (t53_high) : [t52_high]"r" (t52_high) , [t35_high]"r" (t35_high) );	// eor t52_high t35_high => t53_high
	asm("EOR %[t54_high], %[t40_high], %[t36_high]" : [t54_high]"=r" (t54_high) : [t40_high]"r" (t40_high) , [t36_high]"r" (t36_high) );	// eor t40_high t36_high => t54_high
	asm("EOR %[t55_high], %[t39_high], %[t22_high]" : [t55_high]"=r" (t55_high) : [t39_high]"r" (t39_high) , [t22_high]"r" (t22_high) );	// eor t39_high t22_high => t55_high
	asm("EOR %[t56_high], %[t27_high], %[t23_high]" : [t56_high]"=r" (t56_high) : [t27_high]"r" (t27_high) , [t23_high]"r" (t23_high) );	// eor t27_high t23_high => t56_high
	asm("EOR %[t57_high], %[t26_high], %[t9_high]" : [t57_high]"=r" (t57_high) : [t26_high]"r" (t26_high) , [t9_high]"r" (t9_high) );	// eor t26_high t9_high => t57_high
	asm("EOR %[t58_high], %[t14_high], %[t10_high]" : [t58_high]"=r" (t58_high) : [t14_high]"r" (t14_high) , [t10_high]"r" (t10_high) );	// eor t14_high t10_high => t58_high
	asm("EOR %[t59_high], %[g_high6], %[g_high9]" : [t59_high]"=r" (t59_high) : [g_high6]"r" (g_high[6]) , [g_high9]"r" (g_high[9]) );	// eor g_high6 g_high9 => t59_high
	asm("EOR %[t60_high], %[g_high7], %[g_high10]" : [t60_high]"=r" (t60_high) : [g_high7]"r" (g_high[7]) , [g_high10]"r" (g_high[10]) );	// eor g_high7 g_high10 => t60_high
	asm("EOR %[t61_high], %[g_high8], %[g_high11]" : [t61_high]"=r" (t61_high) : [g_high8]"r" (g_high[8]) , [g_high11]"r" (g_high[11]) );	// eor g_high8 g_high11 => t61_high
	asm("EOR %[t62_high], %[f_high6], %[f_high9]" : [t62_high]"=r" (t62_high) : [f_high6]"r" (f_high[6]) , [f_high9]"r" (f_high[9]) );	// eor f_high6 f_high9 => t62_high
	asm("EOR %[t63_high], %[f_high7], %[f_high10]" : [t63_high]"=r" (t63_high) : [f_high7]"r" (f_high[7]) , [f_high10]"r" (f_high[10]) );	// eor f_high7 f_high10 => t63_high
	asm("EOR %[t64_high], %[f_high8], %[f_high11]" : [t64_high]"=r" (t64_high) : [f_high8]"r" (f_high[8]) , [f_high11]"r" (f_high[11]) );	// eor f_high8 f_high11 => t64_high
	asm("AND %[t65_high], %[t64_high], %[t61_high]" : [t65_high]"=r" (t65_high) : [t64_high]"r" (t64_high) , [t61_high]"r" (t61_high) );	// and t64_high t61_high => t65_high
	asm("AND %[t66_high], %[t64_high], %[t59_high]" : [t66_high]"=r" (t66_high) : [t64_high]"r" (t64_high) , [t59_high]"r" (t59_high) );	// and t64_high t59_high => t66_high
	asm("AND %[t67_high], %[t64_high], %[t60_high]" : [t67_high]"=r" (t67_high) : [t64_high]"r" (t64_high) , [t60_high]"r" (t60_high) );	// and t64_high t60_high => t67_high
	asm("AND %[t68_high], %[t62_high], %[t61_high]" : [t68_high]"=r" (t68_high) : [t62_high]"r" (t62_high) , [t61_high]"r" (t61_high) );	// and t62_high t61_high => t68_high
	asm("AND %[t69_high], %[t63_high], %[t61_high]" : [t69_high]"=r" (t69_high) : [t63_high]"r" (t63_high) , [t61_high]"r" (t61_high) );	// and t63_high t61_high => t69_high
	asm("AND %[t70_high], %[t63_high], %[t60_high]" : [t70_high]"=r" (t70_high) : [t63_high]"r" (t63_high) , [t60_high]"r" (t60_high) );	// and t63_high t60_high => t70_high
	asm("AND %[t71_high], %[t63_high], %[t59_high]" : [t71_high]"=r" (t71_high) : [t63_high]"r" (t63_high) , [t59_high]"r" (t59_high) );	// and t63_high t59_high => t71_high
	asm("AND %[t72_high], %[t62_high], %[t60_high]" : [t72_high]"=r" (t72_high) : [t62_high]"r" (t62_high) , [t60_high]"r" (t60_high) );	// and t62_high t60_high => t72_high
	asm("AND %[t73_high], %[t62_high], %[t59_high]" : [t73_high]"=r" (t73_high) : [t62_high]"r" (t62_high) , [t59_high]"r" (t59_high) );	// and t62_high t59_high => t73_high
	asm("EOR %[t74_high], %[t72_high], %[t71_high]" : [t74_high]"=r" (t74_high) : [t72_high]"r" (t72_high) , [t71_high]"r" (t71_high) );	// eor t72_high t71_high => t74_high
	asm("EOR %[t75_high], %[t70_high], %[t68_high]" : [t75_high]"=r" (t75_high) : [t70_high]"r" (t70_high) , [t68_high]"r" (t68_high) );	// eor t70_high t68_high => t75_high
	asm("EOR %[t76_high], %[t75_high], %[t66_high]" : [t76_high]"=r" (t76_high) : [t75_high]"r" (t75_high) , [t66_high]"r" (t66_high) );	// eor t75_high t66_high => t76_high
	asm("EOR %[t77_high], %[t69_high], %[t67_high]" : [t77_high]"=r" (t77_high) : [t69_high]"r" (t69_high) , [t67_high]"r" (t67_high) );	// eor t69_high t67_high => t77_high
	asm("EOR %[t78_high], %[g_high0], %[g_high3]" : [t78_high]"=r" (t78_high) : [g_high0]"r" (g_high[0]) , [g_high3]"r" (g_high[3]) );	// eor g_high0 g_high3 => t78_high
	asm("EOR %[t79_high], %[g_high1], %[g_high4]" : [t79_high]"=r" (t79_high) : [g_high1]"r" (g_high[1]) , [g_high4]"r" (g_high[4]) );	// eor g_high1 g_high4 => t79_high
	asm("EOR %[t80_high], %[g_high2], %[g_high5]" : [t80_high]"=r" (t80_high) : [g_high2]"r" (g_high[2]) , [g_high5]"r" (g_high[5]) );	// eor g_high2 g_high5 => t80_high
	asm("EOR %[t81_high], %[f_high0], %[f_high3]" : [t81_high]"=r" (t81_high) : [f_high0]"r" (f_high[0]) , [f_high3]"r" (f_high[3]) );	// eor f_high0 f_high3 => t81_high
	asm("EOR %[t82_high], %[f_high1], %[f_high4]" : [t82_high]"=r" (t82_high) : [f_high1]"r" (f_high[1]) , [f_high4]"r" (f_high[4]) );	// eor f_high1 f_high4 => t82_high
	asm("EOR %[t83_high], %[f_high2], %[f_high5]" : [t83_high]"=r" (t83_high) : [f_high2]"r" (f_high[2]) , [f_high5]"r" (f_high[5]) );	// eor f_high2 f_high5 => t83_high
	asm("AND %[t84_high], %[t83_high], %[t80_high]" : [t84_high]"=r" (t84_high) : [t83_high]"r" (t83_high) , [t80_high]"r" (t80_high) );	// and t83_high t80_high => t84_high
	asm("AND %[t85_high], %[t83_high], %[t78_high]" : [t85_high]"=r" (t85_high) : [t83_high]"r" (t83_high) , [t78_high]"r" (t78_high) );	// and t83_high t78_high => t85_high
	asm("AND %[t86_high], %[t83_high], %[t79_high]" : [t86_high]"=r" (t86_high) : [t83_high]"r" (t83_high) , [t79_high]"r" (t79_high) );	// and t83_high t79_high => t86_high
	asm("AND %[t87_high], %[t81_high], %[t80_high]" : [t87_high]"=r" (t87_high) : [t81_high]"r" (t81_high) , [t80_high]"r" (t80_high) );	// and t81_high t80_high => t87_high
	asm("AND %[t88_high], %[t82_high], %[t80_high]" : [t88_high]"=r" (t88_high) : [t82_high]"r" (t82_high) , [t80_high]"r" (t80_high) );	// and t82_high t80_high => t88_high
	asm("AND %[t89_high], %[t82_high], %[t79_high]" : [t89_high]"=r" (t89_high) : [t82_high]"r" (t82_high) , [t79_high]"r" (t79_high) );	// and t82_high t79_high => t89_high
	asm("AND %[t90_high], %[t82_high], %[t78_high]" : [t90_high]"=r" (t90_high) : [t82_high]"r" (t82_high) , [t78_high]"r" (t78_high) );	// and t82_high t78_high => t90_high
	asm("AND %[t91_high], %[t81_high], %[t79_high]" : [t91_high]"=r" (t91_high) : [t81_high]"r" (t81_high) , [t79_high]"r" (t79_high) );	// and t81_high t79_high => t91_high
	asm("AND %[t92_high], %[t81_high], %[t78_high]" : [t92_high]"=r" (t92_high) : [t81_high]"r" (t81_high) , [t78_high]"r" (t78_high) );	// and t81_high t78_high => t92_high
	asm("EOR %[t93_high], %[t91_high], %[t90_high]" : [t93_high]"=r" (t93_high) : [t91_high]"r" (t91_high) , [t90_high]"r" (t90_high) );	// eor t91_high t90_high => t93_high
	asm("EOR %[t94_high], %[t89_high], %[t87_high]" : [t94_high]"=r" (t94_high) : [t89_high]"r" (t89_high) , [t87_high]"r" (t87_high) );	// eor t89_high t87_high => t94_high
	asm("EOR %[t95_high], %[t94_high], %[t85_high]" : [t95_high]"=r" (t95_high) : [t94_high]"r" (t94_high) , [t85_high]"r" (t85_high) );	// eor t94_high t85_high => t95_high
	asm("EOR %[t96_high], %[t88_high], %[t86_high]" : [t96_high]"=r" (t96_high) : [t88_high]"r" (t88_high) , [t86_high]"r" (t86_high) );	// eor t88_high t86_high => t96_high
	asm("EOR %[t97_high], %[t53_high], %[t48_high]" : [t97_high]"=r" (t97_high) : [t53_high]"r" (t53_high) , [t48_high]"r" (result_high[0]) );	// eor t53_high t48_high => t97_high
	asm("EOR %[t98_high], %[t54_high], %[t49_high]" : [t98_high]"=r" (t98_high) : [t54_high]"r" (t54_high) , [t49_high]"r" (result_high[1]) );	// eor t54_high t49_high => t98_high
	asm("EOR %[t99_high], %[t38_high], %[t51_high]" : [t99_high]"=r" (t99_high) : [t38_high]"r" (t38_high) , [t51_high]"r" (result_high[2]) );	// eor t38_high t51_high => t99_high
	asm("EOR %[t100_high], %[t55_high], %[t53_high]" : [t100_high]"=r" (t100_high) : [t55_high]"r" (t55_high) , [t53_high]"r" (t53_high) );	// eor t55_high t53_high => t100_high
	asm("EOR %[t101_high], %[t56_high], %[t54_high]" : [t101_high]"=r" (t101_high) : [t56_high]"r" (t56_high) , [t54_high]"r" (t54_high) );	// eor t56_high t54_high => t101_high
	asm("EOR %[t102_high], %[t25_high], %[t38_high]" : [t102_high]"=r" (t102_high) : [t25_high]"r" (t25_high) , [t38_high]"r" (t38_high) );	// eor t25_high t38_high => t102_high
	asm("EOR %[t103_high], %[t57_high], %[t55_high]" : [t103_high]"=r" (t103_high) : [t57_high]"r" (t57_high) , [t55_high]"r" (t55_high) );	// eor t57_high t55_high => t103_high
	asm("EOR %[t104_high], %[t58_high], %[t56_high]" : [t104_high]"=r" (t104_high) : [t58_high]"r" (t58_high) , [t56_high]"r" (t56_high) );	// eor t58_high t56_high => t104_high
	asm("EOR %[t105_high], %[t12_high], %[t25_high]" : [t105_high]"=r" (t105_high) : [t12_high]"r" (result_high[20]) , [t25_high]"r" (t25_high) );	// eor t12_high t25_high => t105_high
	asm("EOR %[t106_high], %[t13_high], %[t57_high]" : [t106_high]"=r" (t106_high) : [t13_high]"r" (result_high[21]) , [t57_high]"r" (t57_high) );	// eor t13_high t57_high => t106_high
	asm("EOR %[t107_high], %[t1_high], %[t58_high]" : [t107_high]"=r" (t107_high) : [t1_high]"r" (result_high[22]) , [t58_high]"r" (t58_high) );	// eor t1_high t58_high => t107_high
	asm("EOR %[t108_high], %[t97_high], %[t92_high]" : [t108_high]"=r" (result_high[3]) : [t97_high]"r" (t97_high) , [t92_high]"r" (t92_high) );	// eor t97_high t92_high => t108_high
	asm("EOR %[t109_high], %[t98_high], %[t93_high]" : [t109_high]"=r" (result_high[4]) : [t98_high]"r" (t98_high) , [t93_high]"r" (t93_high) );	// eor t98_high t93_high => t109_high
	asm("EOR %[t110_high], %[t99_high], %[t95_high]" : [t110_high]"=r" (result_high[5]) : [t99_high]"r" (t99_high) , [t95_high]"r" (t95_high) );	// eor t99_high t95_high => t110_high
	asm("EOR %[t111_high], %[t100_high], %[t96_high]" : [t111_high]"=r" (t111_high) : [t100_high]"r" (t100_high) , [t96_high]"r" (t96_high) );	// eor t100_high t96_high => t111_high
	asm("EOR %[t112_high], %[t101_high], %[t84_high]" : [t112_high]"=r" (t112_high) : [t101_high]"r" (t101_high) , [t84_high]"r" (t84_high) );	// eor t101_high t84_high => t112_high
	asm("EOR %[t113_high], %[t103_high], %[t73_high]" : [t113_high]"=r" (t113_high) : [t103_high]"r" (t103_high) , [t73_high]"r" (t73_high) );	// eor t103_high t73_high => t113_high
	asm("EOR %[t114_high], %[t104_high], %[t74_high]" : [t114_high]"=r" (t114_high) : [t104_high]"r" (t104_high) , [t74_high]"r" (t74_high) );	// eor t104_high t74_high => t114_high
	asm("EOR %[t115_high], %[t105_high], %[t76_high]" : [t115_high]"=r" (result_high[17]) : [t105_high]"r" (t105_high) , [t76_high]"r" (t76_high) );	// eor t105_high t76_high => t115_high
	asm("EOR %[t116_high], %[t106_high], %[t77_high]" : [t116_high]"=r" (result_high[18]) : [t106_high]"r" (t106_high) , [t77_high]"r" (t77_high) );	// eor t106_high t77_high => t116_high
	asm("EOR %[t117_high], %[t107_high], %[t65_high]" : [t117_high]"=r" (result_high[19]) : [t107_high]"r" (t107_high) , [t65_high]"r" (t65_high) );	// eor t107_high t65_high => t117_high
	asm("EOR %[t118_high], %[g_high3], %[g_high9]" : [t118_high]"=r" (t118_high) : [g_high3]"r" (g_high[3]) , [g_high9]"r" (g_high[9]) );	// eor g_high3 g_high9 => t118_high
	asm("EOR %[t119_high], %[g_high4], %[g_high10]" : [t119_high]"=r" (t119_high) : [g_high4]"r" (g_high[4]) , [g_high10]"r" (g_high[10]) );	// eor g_high4 g_high10 => t119_high
	asm("EOR %[t120_high], %[g_high5], %[g_high11]" : [t120_high]"=r" (t120_high) : [g_high5]"r" (g_high[5]) , [g_high11]"r" (g_high[11]) );	// eor g_high5 g_high11 => t120_high
	asm("EOR %[t121_high], %[g_high0], %[g_high6]" : [t121_high]"=r" (t121_high) : [g_high0]"r" (g_high[0]) , [g_high6]"r" (g_high[6]) );	// eor g_high0 g_high6 => t121_high
	asm("EOR %[t122_high], %[g_high1], %[g_high7]" : [t122_high]"=r" (t122_high) : [g_high1]"r" (g_high[1]) , [g_high7]"r" (g_high[7]) );	// eor g_high1 g_high7 => t122_high
	asm("EOR %[t123_high], %[g_high2], %[g_high8]" : [t123_high]"=r" (t123_high) : [g_high2]"r" (g_high[2]) , [g_high8]"r" (g_high[8]) );	// eor g_high2 g_high8 => t123_high
	asm("EOR %[t124_high], %[f_high3], %[f_high9]" : [t124_high]"=r" (t124_high) : [f_high3]"r" (f_high[3]) , [f_high9]"r" (f_high[9]) );	// eor f_high3 f_high9 => t124_high
	asm("EOR %[t125_high], %[f_high4], %[f_high10]" : [t125_high]"=r" (t125_high) : [f_high4]"r" (f_high[4]) , [f_high10]"r" (f_high[10]) );	// eor f_high4 f_high10 => t125_high
	asm("EOR %[t126_high], %[f_high5], %[f_high11]" : [t126_high]"=r" (t126_high) : [f_high5]"r" (f_high[5]) , [f_high11]"r" (f_high[11]) );	// eor f_high5 f_high11 => t126_high
	asm("EOR %[t127_high], %[f_high0], %[f_high6]" : [t127_high]"=r" (t127_high) : [f_high0]"r" (f_high[0]) , [f_high6]"r" (f_high[6]) );	// eor f_high0 f_high6 => t127_high
	asm("EOR %[t128_high], %[f_high1], %[f_high7]" : [t128_high]"=r" (t128_high) : [f_high1]"r" (f_high[1]) , [f_high7]"r" (f_high[7]) );	// eor f_high1 f_high7 => t128_high
	asm("EOR %[t129_high], %[f_high2], %[f_high8]" : [t129_high]"=r" (t129_high) : [f_high2]"r" (f_high[2]) , [f_high8]"r" (f_high[8]) );	// eor f_high2 f_high8 => t129_high
	asm("AND %[t130_high], %[t129_high], %[t123_high]" : [t130_high]"=r" (t130_high) : [t129_high]"r" (t129_high) , [t123_high]"r" (t123_high) );	// and t129_high t123_high => t130_high
	asm("AND %[t131_high], %[t129_high], %[t121_high]" : [t131_high]"=r" (t131_high) : [t129_high]"r" (t129_high) , [t121_high]"r" (t121_high) );	// and t129_high t121_high => t131_high
	asm("AND %[t132_high], %[t129_high], %[t122_high]" : [t132_high]"=r" (t132_high) : [t129_high]"r" (t129_high) , [t122_high]"r" (t122_high) );	// and t129_high t122_high => t132_high
	asm("AND %[t133_high], %[t127_high], %[t123_high]" : [t133_high]"=r" (t133_high) : [t127_high]"r" (t127_high) , [t123_high]"r" (t123_high) );	// and t127_high t123_high => t133_high
	asm("AND %[t134_high], %[t128_high], %[t123_high]" : [t134_high]"=r" (t134_high) : [t128_high]"r" (t128_high) , [t123_high]"r" (t123_high) );	// and t128_high t123_high => t134_high
	asm("AND %[t135_high], %[t128_high], %[t122_high]" : [t135_high]"=r" (t135_high) : [t128_high]"r" (t128_high) , [t122_high]"r" (t122_high) );	// and t128_high t122_high => t135_high
	asm("AND %[t136_high], %[t128_high], %[t121_high]" : [t136_high]"=r" (t136_high) : [t128_high]"r" (t128_high) , [t121_high]"r" (t121_high) );	// and t128_high t121_high => t136_high
	asm("AND %[t137_high], %[t127_high], %[t122_high]" : [t137_high]"=r" (t137_high) : [t127_high]"r" (t127_high) , [t122_high]"r" (t122_high) );	// and t127_high t122_high => t137_high
	asm("AND %[t138_high], %[t127_high], %[t121_high]" : [t138_high]"=r" (t138_high) : [t127_high]"r" (t127_high) , [t121_high]"r" (t121_high) );	// and t127_high t121_high => t138_high
	asm("EOR %[t139_high], %[t137_high], %[t136_high]" : [t139_high]"=r" (t139_high) : [t137_high]"r" (t137_high) , [t136_high]"r" (t136_high) );	// eor t137_high t136_high => t139_high
	asm("EOR %[t140_high], %[t135_high], %[t133_high]" : [t140_high]"=r" (t140_high) : [t135_high]"r" (t135_high) , [t133_high]"r" (t133_high) );	// eor t135_high t133_high => t140_high
	asm("EOR %[t141_high], %[t140_high], %[t131_high]" : [t141_high]"=r" (t141_high) : [t140_high]"r" (t140_high) , [t131_high]"r" (t131_high) );	// eor t140_high t131_high => t141_high
	asm("EOR %[t142_high], %[t134_high], %[t132_high]" : [t142_high]"=r" (t142_high) : [t134_high]"r" (t134_high) , [t132_high]"r" (t132_high) );	// eor t134_high t132_high => t142_high
	asm("AND %[t143_high], %[t126_high], %[t120_high]" : [t143_high]"=r" (t143_high) : [t126_high]"r" (t126_high) , [t120_high]"r" (t120_high) );	// and t126_high t120_high => t143_high
	asm("AND %[t144_high], %[t126_high], %[t118_high]" : [t144_high]"=r" (t144_high) : [t126_high]"r" (t126_high) , [t118_high]"r" (t118_high) );	// and t126_high t118_high => t144_high
	asm("AND %[t145_high], %[t126_high], %[t119_high]" : [t145_high]"=r" (t145_high) : [t126_high]"r" (t126_high) , [t119_high]"r" (t119_high) );	// and t126_high t119_high => t145_high
	asm("AND %[t146_high], %[t124_high], %[t120_high]" : [t146_high]"=r" (t146_high) : [t124_high]"r" (t124_high) , [t120_high]"r" (t120_high) );	// and t124_high t120_high => t146_high
	asm("AND %[t147_high], %[t125_high], %[t120_high]" : [t147_high]"=r" (t147_high) : [t125_high]"r" (t125_high) , [t120_high]"r" (t120_high) );	// and t125_high t120_high => t147_high
	asm("AND %[t148_high], %[t125_high], %[t119_high]" : [t148_high]"=r" (t148_high) : [t125_high]"r" (t125_high) , [t119_high]"r" (t119_high) );	// and t125_high t119_high => t148_high
	asm("AND %[t149_high], %[t125_high], %[t118_high]" : [t149_high]"=r" (t149_high) : [t125_high]"r" (t125_high) , [t118_high]"r" (t118_high) );	// and t125_high t118_high => t149_high
	asm("AND %[t150_high], %[t124_high], %[t119_high]" : [t150_high]"=r" (t150_high) : [t124_high]"r" (t124_high) , [t119_high]"r" (t119_high) );	// and t124_high t119_high => t150_high
	asm("AND %[t151_high], %[t124_high], %[t118_high]" : [t151_high]"=r" (t151_high) : [t124_high]"r" (t124_high) , [t118_high]"r" (t118_high) );	// and t124_high t118_high => t151_high
	asm("EOR %[t152_high], %[t150_high], %[t149_high]" : [t152_high]"=r" (t152_high) : [t150_high]"r" (t150_high) , [t149_high]"r" (t149_high) );	// eor t150_high t149_high => t152_high
	asm("EOR %[t153_high], %[t148_high], %[t146_high]" : [t153_high]"=r" (t153_high) : [t148_high]"r" (t148_high) , [t146_high]"r" (t146_high) );	// eor t148_high t146_high => t153_high
	asm("EOR %[t154_high], %[t153_high], %[t144_high]" : [t154_high]"=r" (t154_high) : [t153_high]"r" (t153_high) , [t144_high]"r" (t144_high) );	// eor t153_high t144_high => t154_high
	asm("EOR %[t155_high], %[t147_high], %[t145_high]" : [t155_high]"=r" (t155_high) : [t147_high]"r" (t147_high) , [t145_high]"r" (t145_high) );	// eor t147_high t145_high => t155_high
	asm("EOR %[t156_high], %[t121_high], %[t118_high]" : [t156_high]"=r" (t156_high) : [t121_high]"r" (t121_high) , [t118_high]"r" (t118_high) );	// eor t121_high t118_high => t156_high
	asm("EOR %[t157_high], %[t122_high], %[t119_high]" : [t157_high]"=r" (t157_high) : [t122_high]"r" (t122_high) , [t119_high]"r" (t119_high) );	// eor t122_high t119_high => t157_high
	asm("EOR %[t158_high], %[t123_high], %[t120_high]" : [t158_high]"=r" (t158_high) : [t123_high]"r" (t123_high) , [t120_high]"r" (t120_high) );	// eor t123_high t120_high => t158_high
	asm("EOR %[t159_high], %[t127_high], %[t124_high]" : [t159_high]"=r" (t159_high) : [t127_high]"r" (t127_high) , [t124_high]"r" (t124_high) );	// eor t127_high t124_high => t159_high
	asm("EOR %[t160_high], %[t128_high], %[t125_high]" : [t160_high]"=r" (t160_high) : [t128_high]"r" (t128_high) , [t125_high]"r" (t125_high) );	// eor t128_high t125_high => t160_high
	asm("EOR %[t161_high], %[t129_high], %[t126_high]" : [t161_high]"=r" (t161_high) : [t129_high]"r" (t129_high) , [t126_high]"r" (t126_high) );	// eor t129_high t126_high => t161_high
	asm("AND %[t162_high], %[t161_high], %[t158_high]" : [t162_high]"=r" (t162_high) : [t161_high]"r" (t161_high) , [t158_high]"r" (t158_high) );	// and t161_high t158_high => t162_high
	asm("AND %[t163_high], %[t161_high], %[t156_high]" : [t163_high]"=r" (t163_high) : [t161_high]"r" (t161_high) , [t156_high]"r" (t156_high) );	// and t161_high t156_high => t163_high
	asm("AND %[t164_high], %[t161_high], %[t157_high]" : [t164_high]"=r" (t164_high) : [t161_high]"r" (t161_high) , [t157_high]"r" (t157_high) );	// and t161_high t157_high => t164_high
	asm("AND %[t165_high], %[t159_high], %[t158_high]" : [t165_high]"=r" (t165_high) : [t159_high]"r" (t159_high) , [t158_high]"r" (t158_high) );	// and t159_high t158_high => t165_high
	asm("AND %[t166_high], %[t160_high], %[t158_high]" : [t166_high]"=r" (t166_high) : [t160_high]"r" (t160_high) , [t158_high]"r" (t158_high) );	// and t160_high t158_high => t166_high
	asm("AND %[t167_high], %[t160_high], %[t157_high]" : [t167_high]"=r" (t167_high) : [t160_high]"r" (t160_high) , [t157_high]"r" (t157_high) );	// and t160_high t157_high => t167_high
	asm("AND %[t168_high], %[t160_high], %[t156_high]" : [t168_high]"=r" (t168_high) : [t160_high]"r" (t160_high) , [t156_high]"r" (t156_high) );	// and t160_high t156_high => t168_high
	asm("AND %[t169_high], %[t159_high], %[t157_high]" : [t169_high]"=r" (t169_high) : [t159_high]"r" (t159_high) , [t157_high]"r" (t157_high) );	// and t159_high t157_high => t169_high
	asm("AND %[t170_high], %[t159_high], %[t156_high]" : [t170_high]"=r" (t170_high) : [t159_high]"r" (t159_high) , [t156_high]"r" (t156_high) );	// and t159_high t156_high => t170_high
	asm("EOR %[t171_high], %[t169_high], %[t168_high]" : [t171_high]"=r" (t171_high) : [t169_high]"r" (t169_high) , [t168_high]"r" (t168_high) );	// eor t169_high t168_high => t171_high
	asm("EOR %[t172_high], %[t167_high], %[t165_high]" : [t172_high]"=r" (t172_high) : [t167_high]"r" (t167_high) , [t165_high]"r" (t165_high) );	// eor t167_high t165_high => t172_high
	asm("EOR %[t173_high], %[t172_high], %[t163_high]" : [t173_high]"=r" (t173_high) : [t172_high]"r" (t172_high) , [t163_high]"r" (t163_high) );	// eor t172_high t163_high => t173_high
	asm("EOR %[t174_high], %[t166_high], %[t164_high]" : [t174_high]"=r" (t174_high) : [t166_high]"r" (t166_high) , [t164_high]"r" (t164_high) );	// eor t166_high t164_high => t174_high
	asm("EOR %[t175_high], %[t142_high], %[t151_high]" : [t175_high]"=r" (t175_high) : [t142_high]"r" (t142_high) , [t151_high]"r" (t151_high) );	// eor t142_high t151_high => t175_high
	asm("EOR %[t176_high], %[t130_high], %[t152_high]" : [t176_high]"=r" (t176_high) : [t130_high]"r" (t130_high) , [t152_high]"r" (t152_high) );	// eor t130_high t152_high => t176_high
	asm("EOR %[t177_high], %[t170_high], %[t175_high]" : [t177_high]"=r" (t177_high) : [t170_high]"r" (t170_high) , [t175_high]"r" (t175_high) );	// eor t170_high t175_high => t177_high
	asm("EOR %[t178_high], %[t171_high], %[t176_high]" : [t178_high]"=r" (t178_high) : [t171_high]"r" (t171_high) , [t176_high]"r" (t176_high) );	// eor t171_high t176_high => t178_high
	asm("EOR %[t179_high], %[t173_high], %[t154_high]" : [t179_high]"=r" (t179_high) : [t173_high]"r" (t173_high) , [t154_high]"r" (t154_high) );	// eor t173_high t154_high => t179_high
	asm("EOR %[t180_high], %[t174_high], %[t155_high]" : [t180_high]"=r" (t180_high) : [t174_high]"r" (t174_high) , [t155_high]"r" (t155_high) );	// eor t174_high t155_high => t180_high
	asm("EOR %[t181_high], %[t162_high], %[t143_high]" : [t181_high]"=r" (t181_high) : [t162_high]"r" (t162_high) , [t143_high]"r" (t143_high) );	// eor t162_high t143_high => t181_high
	asm("EOR %[t182_high], %[t177_high], %[t138_high]" : [t182_high]"=r" (t182_high) : [t177_high]"r" (t177_high) , [t138_high]"r" (t138_high) );	// eor t177_high t138_high => t182_high
	asm("EOR %[t183_high], %[t178_high], %[t139_high]" : [t183_high]"=r" (t183_high) : [t178_high]"r" (t178_high) , [t139_high]"r" (t139_high) );	// eor t178_high t139_high => t183_high
	asm("EOR %[t184_high], %[t179_high], %[t141_high]" : [t184_high]"=r" (t184_high) : [t179_high]"r" (t179_high) , [t141_high]"r" (t141_high) );	// eor t179_high t141_high => t184_high
	asm("EOR %[t185_high], %[t180_high], %[t175_high]" : [t185_high]"=r" (t185_high) : [t180_high]"r" (t180_high) , [t175_high]"r" (t175_high) );	// eor t180_high t175_high => t185_high
	asm("EOR %[t186_high], %[t181_high], %[t176_high]" : [t186_high]"=r" (t186_high) : [t181_high]"r" (t181_high) , [t176_high]"r" (t176_high) );	// eor t181_high t176_high => t186_high
	asm("EOR %[t187_high], %[t111_high], %[t48_high]" : [t187_high]"=r" (t187_high) : [t111_high]"r" (t111_high) , [t48_high]"r" (result_high[0]) );	// eor t111_high t48_high => t187_high
	asm("EOR %[t188_high], %[t112_high], %[t49_high]" : [t188_high]"=r" (t188_high) : [t112_high]"r" (t112_high) , [t49_high]"r" (result_high[1]) );	// eor t112_high t49_high => t188_high
	asm("EOR %[t189_high], %[t102_high], %[t51_high]" : [t189_high]"=r" (t189_high) : [t102_high]"r" (t102_high) , [t51_high]"r" (result_high[2]) );	// eor t102_high t51_high => t189_high
	asm("EOR %[t190_high], %[t113_high], %[t108_high]" : [t190_high]"=r" (t190_high) : [t113_high]"r" (t113_high) , [t108_high]"r" (result_high[3]) );	// eor t113_high t108_high => t190_high
	asm("EOR %[t191_high], %[t114_high], %[t109_high]" : [t191_high]"=r" (t191_high) : [t114_high]"r" (t114_high) , [t109_high]"r" (result_high[4]) );	// eor t114_high t109_high => t191_high
	asm("EOR %[t192_high], %[t115_high], %[t110_high]" : [t192_high]"=r" (t192_high) : [t115_high]"r" (result_high[17]) , [t110_high]"r" (result_high[5]) );	// eor t115_high t110_high => t192_high
	asm("EOR %[t193_high], %[t116_high], %[t111_high]" : [t193_high]"=r" (t193_high) : [t116_high]"r" (result_high[18]) , [t111_high]"r" (t111_high) );	// eor t116_high t111_high => t193_high
	asm("EOR %[t194_high], %[t117_high], %[t112_high]" : [t194_high]"=r" (t194_high) : [t117_high]"r" (result_high[19]) , [t112_high]"r" (t112_high) );	// eor t117_high t112_high => t194_high
	asm("EOR %[t195_high], %[t12_high], %[t102_high]" : [t195_high]"=r" (t195_high) : [t12_high]"r" (result_high[20]) , [t102_high]"r" (t102_high) );	// eor t12_high t102_high => t195_high
	asm("EOR %[t196_high], %[t13_high], %[t113_high]" : [t196_high]"=r" (t196_high) : [t13_high]"r" (result_high[21]) , [t113_high]"r" (t113_high) );	// eor t13_high t113_high => t196_high
	asm("EOR %[t197_high], %[t1_high], %[t114_high]" : [t197_high]"=r" (t197_high) : [t1_high]"r" (result_high[22]) , [t114_high]"r" (t114_high) );	// eor t1_high t114_high => t197_high
	asm("EOR %[t198_high], %[t187_high], %[t138_high]" : [t198_high]"=r" (result_high[6]) : [t187_high]"r" (t187_high) , [t138_high]"r" (t138_high) );	// eor t187_high t138_high => t198_high
	asm("EOR %[t199_high], %[t188_high], %[t139_high]" : [t199_high]"=r" (result_high[7]) : [t188_high]"r" (t188_high) , [t139_high]"r" (t139_high) );	// eor t188_high t139_high => t199_high
	asm("EOR %[t200_high], %[t189_high], %[t141_high]" : [t200_high]"=r" (result_high[8]) : [t189_high]"r" (t189_high) , [t141_high]"r" (t141_high) );	// eor t189_high t141_high => t200_high
	asm("EOR %[t201_high], %[t190_high], %[t182_high]" : [t201_high]"=r" (result_high[9]) : [t190_high]"r" (t190_high) , [t182_high]"r" (t182_high) );	// eor t190_high t182_high => t201_high
	asm("EOR %[t202_high], %[t191_high], %[t183_high]" : [t202_high]"=r" (result_high[10]) : [t191_high]"r" (t191_high) , [t183_high]"r" (t183_high) );	// eor t191_high t183_high => t202_high
	asm("EOR %[t203_high], %[t192_high], %[t184_high]" : [t203_high]"=r" (result_high[11]) : [t192_high]"r" (t192_high) , [t184_high]"r" (t184_high) );	// eor t192_high t184_high => t203_high
	asm("EOR %[t204_high], %[t193_high], %[t185_high]" : [t204_high]"=r" (result_high[12]) : [t193_high]"r" (t193_high) , [t185_high]"r" (t185_high) );	// eor t193_high t185_high => t204_high
	asm("EOR %[t205_high], %[t194_high], %[t186_high]" : [t205_high]"=r" (result_high[13]) : [t194_high]"r" (t194_high) , [t186_high]"r" (t186_high) );	// eor t194_high t186_high => t205_high
	asm("EOR %[t206_high], %[t195_high], %[t154_high]" : [t206_high]"=r" (result_high[14]) : [t195_high]"r" (t195_high) , [t154_high]"r" (t154_high) );	// eor t195_high t154_high => t206_high
	asm("EOR %[t207_high], %[t196_high], %[t155_high]" : [t207_high]"=r" (result_high[15]) : [t196_high]"r" (t196_high) , [t155_high]"r" (t155_high) );	// eor t196_high t155_high => t207_high
	asm("EOR %[t208_high], %[t197_high], %[t143_high]" : [t208_high]"=r" (result_high[16]) : [t197_high]"r" (t197_high) , [t143_high]"r" (t143_high) );	// eor t197_high t143_high => t208_high

    //low
    asm("AND %[t1_low], %[f_low11], %[g_low11]" : [t1_low]"=r" (result_low[22]) : [f_low11]"r" (f_low[11]) , [g_low11]"r" (g_low[11]) );	// and f_low11 g_low11 => t1_low
	asm("AND %[t2_low], %[f_low11], %[g_low9]" : [t2_low]"=r" (t2_low) : [f_low11]"r" (f_low[11]) , [g_low9]"r" (g_low[9]) );	// and f_low11 g_low9 => t2_low
	asm("AND %[t3_low], %[f_low11], %[g_low10]" : [t3_low]"=r" (t3_low) : [f_low11]"r" (f_low[11]) , [g_low10]"r" (g_low[10]) );	// and f_low11 g_low10 => t3_low
	asm("AND %[t4_low], %[f_low9], %[g_low11]" : [t4_low]"=r" (t4_low) : [f_low9]"r" (f_low[9]) , [g_low11]"r" (g_low[11]) );	// and f_low9 g_low11 => t4_low
	asm("AND %[t5_low], %[f_low10], %[g_low11]" : [t5_low]"=r" (t5_low) : [f_low10]"r" (f_low[10]) , [g_low11]"r" (g_low[11]) );	// and f_low10 g_low11 => t5_low
	asm("AND %[t6_low], %[f_low10], %[g_low10]" : [t6_low]"=r" (t6_low) : [f_low10]"r" (f_low[10]) , [g_low10]"r" (g_low[10]) );	// and f_low10 g_low10 => t6_low
	asm("AND %[t7_low], %[f_low10], %[g_low9]" : [t7_low]"=r" (t7_low) : [f_low10]"r" (f_low[10]) , [g_low9]"r" (g_low[9]) );	// and f_low10 g_low9 => t7_low
	asm("AND %[t8_low], %[f_low9], %[g_low10]" : [t8_low]"=r" (t8_low) : [f_low9]"r" (f_low[9]) , [g_low10]"r" (g_low[10]) );	// and f_low9 g_low10 => t8_low
	asm("AND %[t9_low], %[f_low9], %[g_low9]" : [t9_low]"=r" (t9_low) : [f_low9]"r" (f_low[9]) , [g_low9]"r" (g_low[9]) );	// and f_low9 g_low9 => t9_low
	asm("EOR %[t10_low], %[t8_low], %[t7_low]" : [t10_low]"=r" (t10_low) : [t8_low]"r" (t8_low) , [t7_low]"r" (t7_low) );	// eor t8_low t7_low => t10_low
	asm("EOR %[t11_low], %[t6_low], %[t4_low]" : [t11_low]"=r" (t11_low) : [t6_low]"r" (t6_low) , [t4_low]"r" (t4_low) );	// eor t6_low t4_low => t11_low
	asm("EOR %[t12_low], %[t11_low], %[t2_low]" : [t12_low]"=r" (result_low[20]) : [t11_low]"r" (t11_low) , [t2_low]"r" (t2_low) );	// eor t11_low t2_low => t12_low
	asm("EOR %[t13_low], %[t5_low], %[t3_low]" : [t13_low]"=r" (result_low[21]) : [t5_low]"r" (t5_low) , [t3_low]"r" (t3_low) );	// eor t5_low t3_low => t13_low
	asm("AND %[t14_low], %[f_low8], %[g_low8]" : [t14_low]"=r" (t14_low) : [f_low8]"r" (f_low[8]) , [g_low8]"r" (g_low[8]) );	// and f_low8 g_low8 => t14_low
	asm("AND %[t15_low], %[f_low8], %[g_low6]" : [t15_low]"=r" (t15_low) : [f_low8]"r" (f_low[8]) , [g_low6]"r" (g_low[6]) );	// and f_low8 g_low6 => t15_low
	asm("AND %[t16_low], %[f_low8], %[g_low7]" : [t16_low]"=r" (t16_low) : [f_low8]"r" (f_low[8]) , [g_low7]"r" (g_low[7]) );	// and f_low8 g_low7 => t16_low
	asm("AND %[t17_low], %[f_low6], %[g_low8]" : [t17_low]"=r" (t17_low) : [f_low6]"r" (f_low[6]) , [g_low8]"r" (g_low[8]) );	// and f_low6 g_low8 => t17_low
	asm("AND %[t18_low], %[f_low7], %[g_low8]" : [t18_low]"=r" (t18_low) : [f_low7]"r" (f_low[7]) , [g_low8]"r" (g_low[8]) );	// and f_low7 g_low8 => t18_low
	asm("AND %[t19_low], %[f_low7], %[g_low7]" : [t19_low]"=r" (t19_low) : [f_low7]"r" (f_low[7]) , [g_low7]"r" (g_low[7]) );	// and f_low7 g_low7 => t19_low
	asm("AND %[t20_low], %[f_low7], %[g_low6]" : [t20_low]"=r" (t20_low) : [f_low7]"r" (f_low[7]) , [g_low6]"r" (g_low[6]) );	// and f_low7 g_low6 => t20_low
	asm("AND %[t21_low], %[f_low6], %[g_low7]" : [t21_low]"=r" (t21_low) : [f_low6]"r" (f_low[6]) , [g_low7]"r" (g_low[7]) );	// and f_low6 g_low7 => t21_low
	asm("AND %[t22_low], %[f_low6], %[g_low6]" : [t22_low]"=r" (t22_low) : [f_low6]"r" (f_low[6]) , [g_low6]"r" (g_low[6]) );	// and f_low6 g_low6 => t22_low
	asm("EOR %[t23_low], %[t21_low], %[t20_low]" : [t23_low]"=r" (t23_low) : [t21_low]"r" (t21_low) , [t20_low]"r" (t20_low) );	// eor t21_low t20_low => t23_low
	asm("EOR %[t24_low], %[t19_low], %[t17_low]" : [t24_low]"=r" (t24_low) : [t19_low]"r" (t19_low) , [t17_low]"r" (t17_low) );	// eor t19_low t17_low => t24_low
	asm("EOR %[t25_low], %[t24_low], %[t15_low]" : [t25_low]"=r" (t25_low) : [t24_low]"r" (t24_low) , [t15_low]"r" (t15_low) );	// eor t24_low t15_low => t25_low
	asm("EOR %[t26_low], %[t18_low], %[t16_low]" : [t26_low]"=r" (t26_low) : [t18_low]"r" (t18_low) , [t16_low]"r" (t16_low) );	// eor t18_low t16_low => t26_low
	asm("AND %[t27_low], %[f_low5], %[g_low5]" : [t27_low]"=r" (t27_low) : [f_low5]"r" (f_low[5]) , [g_low5]"r" (g_low[5]) );	// and f_low5 g_low5 => t27_low
	asm("AND %[t28_low], %[f_low5], %[g_low3]" : [t28_low]"=r" (t28_low) : [f_low5]"r" (f_low[5]) , [g_low3]"r" (g_low[3]) );	// and f_low5 g_low3 => t28_low
	asm("AND %[t29_low], %[f_low5], %[g_low4]" : [t29_low]"=r" (t29_low) : [f_low5]"r" (f_low[5]) , [g_low4]"r" (g_low[4]) );	// and f_low5 g_low4 => t29_low
	asm("AND %[t30_low], %[f_low3], %[g_low5]" : [t30_low]"=r" (t30_low) : [f_low3]"r" (f_low[3]) , [g_low5]"r" (g_low[5]) );	// and f_low3 g_low5 => t30_low
	asm("AND %[t31_low], %[f_low4], %[g_low5]" : [t31_low]"=r" (t31_low) : [f_low4]"r" (f_low[4]) , [g_low5]"r" (g_low[5]) );	// and f_low4 g_low5 => t31_low
	asm("AND %[t32_low], %[f_low4], %[g_low4]" : [t32_low]"=r" (t32_low) : [f_low4]"r" (f_low[4]) , [g_low4]"r" (g_low[4]) );	// and f_low4 g_low4 => t32_low
	asm("AND %[t33_low], %[f_low4], %[g_low3]" : [t33_low]"=r" (t33_low) : [f_low4]"r" (f_low[4]) , [g_low3]"r" (g_low[3]) );	// and f_low4 g_low3 => t33_low
	asm("AND %[t34_low], %[f_low3], %[g_low4]" : [t34_low]"=r" (t34_low) : [f_low3]"r" (f_low[3]) , [g_low4]"r" (g_low[4]) );	// and f_low3 g_low4 => t34_low
	asm("AND %[t35_low], %[f_low3], %[g_low3]" : [t35_low]"=r" (t35_low) : [f_low3]"r" (f_low[3]) , [g_low3]"r" (g_low[3]) );	// and f_low3 g_low3 => t35_low
	asm("EOR %[t36_low], %[t34_low], %[t33_low]" : [t36_low]"=r" (t36_low) : [t34_low]"r" (t34_low) , [t33_low]"r" (t33_low) );	// eor t34_low t33_low => t36_low
	asm("EOR %[t37_low], %[t32_low], %[t30_low]" : [t37_low]"=r" (t37_low) : [t32_low]"r" (t32_low) , [t30_low]"r" (t30_low) );	// eor t32_low t30_low => t37_low
	asm("EOR %[t38_low], %[t37_low], %[t28_low]" : [t38_low]"=r" (t38_low) : [t37_low]"r" (t37_low) , [t28_low]"r" (t28_low) );	// eor t37_low t28_low => t38_low
	asm("EOR %[t39_low], %[t31_low], %[t29_low]" : [t39_low]"=r" (t39_low) : [t31_low]"r" (t31_low) , [t29_low]"r" (t29_low) );	// eor t31_low t29_low => t39_low
	asm("AND %[t40_low], %[f_low2], %[g_low2]" : [t40_low]"=r" (t40_low) : [f_low2]"r" (f_low[2]) , [g_low2]"r" (g_low[2]) );	// and f_low2 g_low2 => t40_low
	asm("AND %[t41_low], %[f_low2], %[g_low0]" : [t41_low]"=r" (t41_low) : [f_low2]"r" (f_low[2]) , [g_low0]"r" (g_low[0]) );	// and f_low2 g_low0 => t41_low
	asm("AND %[t42_low], %[f_low2], %[g_low1]" : [t42_low]"=r" (t42_low) : [f_low2]"r" (f_low[2]) , [g_low1]"r" (g_low[1]) );	// and f_low2 g_low1 => t42_low
	asm("AND %[t43_low], %[f_low0], %[g_low2]" : [t43_low]"=r" (t43_low) : [f_low0]"r" (f_low[0]) , [g_low2]"r" (g_low[2]) );	// and f_low0 g_low2 => t43_low
	asm("AND %[t44_low], %[f_low1], %[g_low2]" : [t44_low]"=r" (t44_low) : [f_low1]"r" (f_low[1]) , [g_low2]"r" (g_low[2]) );	// and f_low1 g_low2 => t44_low
	asm("AND %[t45_low], %[f_low1], %[g_low1]" : [t45_low]"=r" (t45_low) : [f_low1]"r" (f_low[1]) , [g_low1]"r" (g_low[1]) );	// and f_low1 g_low1 => t45_low
	asm("AND %[t46_low], %[f_low1], %[g_low0]" : [t46_low]"=r" (t46_low) : [f_low1]"r" (f_low[1]) , [g_low0]"r" (g_low[0]) );	// and f_low1 g_low0 => t46_low
	asm("AND %[t47_low], %[f_low0], %[g_low1]" : [t47_low]"=r" (t47_low) : [f_low0]"r" (f_low[0]) , [g_low1]"r" (g_low[1]) );	// and f_low0 g_low1 => t47_low
	asm("AND %[t48_low], %[f_low0], %[g_low0]" : [t48_low]"=r" (result_low[0]) : [f_low0]"r" (f_low[0]) , [g_low0]"r" (g_low[0]) );	// and f_low0 g_low0 => t48_low
	asm("EOR %[t49_low], %[t47_low], %[t46_low]" : [t49_low]"=r" (result_low[1]) : [t47_low]"r" (t47_low) , [t46_low]"r" (t46_low) );	// eor t47_low t46_low => t49_low
	asm("EOR %[t50_low], %[t45_low], %[t43_low]" : [t50_low]"=r" (t50_low) : [t45_low]"r" (t45_low) , [t43_low]"r" (t43_low) );	// eor t45_low t43_low => t50_low
	asm("EOR %[t51_low], %[t50_low], %[t41_low]" : [t51_low]"=r" (result_low[2]) : [t50_low]"r" (t50_low) , [t41_low]"r" (t41_low) );	// eor t50_low t41_low => t51_low
	asm("EOR %[t52_low], %[t44_low], %[t42_low]" : [t52_low]"=r" (t52_low) : [t44_low]"r" (t44_low) , [t42_low]"r" (t42_low) );	// eor t44_low t42_low => t52_low
	asm("EOR %[t53_low], %[t52_low], %[t35_low]" : [t53_low]"=r" (t53_low) : [t52_low]"r" (t52_low) , [t35_low]"r" (t35_low) );	// eor t52_low t35_low => t53_low
	asm("EOR %[t54_low], %[t40_low], %[t36_low]" : [t54_low]"=r" (t54_low) : [t40_low]"r" (t40_low) , [t36_low]"r" (t36_low) );	// eor t40_low t36_low => t54_low
	asm("EOR %[t55_low], %[t39_low], %[t22_low]" : [t55_low]"=r" (t55_low) : [t39_low]"r" (t39_low) , [t22_low]"r" (t22_low) );	// eor t39_low t22_low => t55_low
	asm("EOR %[t56_low], %[t27_low], %[t23_low]" : [t56_low]"=r" (t56_low) : [t27_low]"r" (t27_low) , [t23_low]"r" (t23_low) );	// eor t27_low t23_low => t56_low
	asm("EOR %[t57_low], %[t26_low], %[t9_low]" : [t57_low]"=r" (t57_low) : [t26_low]"r" (t26_low) , [t9_low]"r" (t9_low) );	// eor t26_low t9_low => t57_low
	asm("EOR %[t58_low], %[t14_low], %[t10_low]" : [t58_low]"=r" (t58_low) : [t14_low]"r" (t14_low) , [t10_low]"r" (t10_low) );	// eor t14_low t10_low => t58_low
	asm("EOR %[t59_low], %[g_low6], %[g_low9]" : [t59_low]"=r" (t59_low) : [g_low6]"r" (g_low[6]) , [g_low9]"r" (g_low[9]) );	// eor g_low6 g_low9 => t59_low
	asm("EOR %[t60_low], %[g_low7], %[g_low10]" : [t60_low]"=r" (t60_low) : [g_low7]"r" (g_low[7]) , [g_low10]"r" (g_low[10]) );	// eor g_low7 g_low10 => t60_low
	asm("EOR %[t61_low], %[g_low8], %[g_low11]" : [t61_low]"=r" (t61_low) : [g_low8]"r" (g_low[8]) , [g_low11]"r" (g_low[11]) );	// eor g_low8 g_low11 => t61_low
	asm("EOR %[t62_low], %[f_low6], %[f_low9]" : [t62_low]"=r" (t62_low) : [f_low6]"r" (f_low[6]) , [f_low9]"r" (f_low[9]) );	// eor f_low6 f_low9 => t62_low
	asm("EOR %[t63_low], %[f_low7], %[f_low10]" : [t63_low]"=r" (t63_low) : [f_low7]"r" (f_low[7]) , [f_low10]"r" (f_low[10]) );	// eor f_low7 f_low10 => t63_low
	asm("EOR %[t64_low], %[f_low8], %[f_low11]" : [t64_low]"=r" (t64_low) : [f_low8]"r" (f_low[8]) , [f_low11]"r" (f_low[11]) );	// eor f_low8 f_low11 => t64_low
	asm("AND %[t65_low], %[t64_low], %[t61_low]" : [t65_low]"=r" (t65_low) : [t64_low]"r" (t64_low) , [t61_low]"r" (t61_low) );	// and t64_low t61_low => t65_low
	asm("AND %[t66_low], %[t64_low], %[t59_low]" : [t66_low]"=r" (t66_low) : [t64_low]"r" (t64_low) , [t59_low]"r" (t59_low) );	// and t64_low t59_low => t66_low
	asm("AND %[t67_low], %[t64_low], %[t60_low]" : [t67_low]"=r" (t67_low) : [t64_low]"r" (t64_low) , [t60_low]"r" (t60_low) );	// and t64_low t60_low => t67_low
	asm("AND %[t68_low], %[t62_low], %[t61_low]" : [t68_low]"=r" (t68_low) : [t62_low]"r" (t62_low) , [t61_low]"r" (t61_low) );	// and t62_low t61_low => t68_low
	asm("AND %[t69_low], %[t63_low], %[t61_low]" : [t69_low]"=r" (t69_low) : [t63_low]"r" (t63_low) , [t61_low]"r" (t61_low) );	// and t63_low t61_low => t69_low
	asm("AND %[t70_low], %[t63_low], %[t60_low]" : [t70_low]"=r" (t70_low) : [t63_low]"r" (t63_low) , [t60_low]"r" (t60_low) );	// and t63_low t60_low => t70_low
	asm("AND %[t71_low], %[t63_low], %[t59_low]" : [t71_low]"=r" (t71_low) : [t63_low]"r" (t63_low) , [t59_low]"r" (t59_low) );	// and t63_low t59_low => t71_low
	asm("AND %[t72_low], %[t62_low], %[t60_low]" : [t72_low]"=r" (t72_low) : [t62_low]"r" (t62_low) , [t60_low]"r" (t60_low) );	// and t62_low t60_low => t72_low
	asm("AND %[t73_low], %[t62_low], %[t59_low]" : [t73_low]"=r" (t73_low) : [t62_low]"r" (t62_low) , [t59_low]"r" (t59_low) );	// and t62_low t59_low => t73_low
	asm("EOR %[t74_low], %[t72_low], %[t71_low]" : [t74_low]"=r" (t74_low) : [t72_low]"r" (t72_low) , [t71_low]"r" (t71_low) );	// eor t72_low t71_low => t74_low
	asm("EOR %[t75_low], %[t70_low], %[t68_low]" : [t75_low]"=r" (t75_low) : [t70_low]"r" (t70_low) , [t68_low]"r" (t68_low) );	// eor t70_low t68_low => t75_low
	asm("EOR %[t76_low], %[t75_low], %[t66_low]" : [t76_low]"=r" (t76_low) : [t75_low]"r" (t75_low) , [t66_low]"r" (t66_low) );	// eor t75_low t66_low => t76_low
	asm("EOR %[t77_low], %[t69_low], %[t67_low]" : [t77_low]"=r" (t77_low) : [t69_low]"r" (t69_low) , [t67_low]"r" (t67_low) );	// eor t69_low t67_low => t77_low
	asm("EOR %[t78_low], %[g_low0], %[g_low3]" : [t78_low]"=r" (t78_low) : [g_low0]"r" (g_low[0]) , [g_low3]"r" (g_low[3]) );	// eor g_low0 g_low3 => t78_low
	asm("EOR %[t79_low], %[g_low1], %[g_low4]" : [t79_low]"=r" (t79_low) : [g_low1]"r" (g_low[1]) , [g_low4]"r" (g_low[4]) );	// eor g_low1 g_low4 => t79_low
	asm("EOR %[t80_low], %[g_low2], %[g_low5]" : [t80_low]"=r" (t80_low) : [g_low2]"r" (g_low[2]) , [g_low5]"r" (g_low[5]) );	// eor g_low2 g_low5 => t80_low
	asm("EOR %[t81_low], %[f_low0], %[f_low3]" : [t81_low]"=r" (t81_low) : [f_low0]"r" (f_low[0]) , [f_low3]"r" (f_low[3]) );	// eor f_low0 f_low3 => t81_low
	asm("EOR %[t82_low], %[f_low1], %[f_low4]" : [t82_low]"=r" (t82_low) : [f_low1]"r" (f_low[1]) , [f_low4]"r" (f_low[4]) );	// eor f_low1 f_low4 => t82_low
	asm("EOR %[t83_low], %[f_low2], %[f_low5]" : [t83_low]"=r" (t83_low) : [f_low2]"r" (f_low[2]) , [f_low5]"r" (f_low[5]) );	// eor f_low2 f_low5 => t83_low
	asm("AND %[t84_low], %[t83_low], %[t80_low]" : [t84_low]"=r" (t84_low) : [t83_low]"r" (t83_low) , [t80_low]"r" (t80_low) );	// and t83_low t80_low => t84_low
	asm("AND %[t85_low], %[t83_low], %[t78_low]" : [t85_low]"=r" (t85_low) : [t83_low]"r" (t83_low) , [t78_low]"r" (t78_low) );	// and t83_low t78_low => t85_low
	asm("AND %[t86_low], %[t83_low], %[t79_low]" : [t86_low]"=r" (t86_low) : [t83_low]"r" (t83_low) , [t79_low]"r" (t79_low) );	// and t83_low t79_low => t86_low
	asm("AND %[t87_low], %[t81_low], %[t80_low]" : [t87_low]"=r" (t87_low) : [t81_low]"r" (t81_low) , [t80_low]"r" (t80_low) );	// and t81_low t80_low => t87_low
	asm("AND %[t88_low], %[t82_low], %[t80_low]" : [t88_low]"=r" (t88_low) : [t82_low]"r" (t82_low) , [t80_low]"r" (t80_low) );	// and t82_low t80_low => t88_low
	asm("AND %[t89_low], %[t82_low], %[t79_low]" : [t89_low]"=r" (t89_low) : [t82_low]"r" (t82_low) , [t79_low]"r" (t79_low) );	// and t82_low t79_low => t89_low
	asm("AND %[t90_low], %[t82_low], %[t78_low]" : [t90_low]"=r" (t90_low) : [t82_low]"r" (t82_low) , [t78_low]"r" (t78_low) );	// and t82_low t78_low => t90_low
	asm("AND %[t91_low], %[t81_low], %[t79_low]" : [t91_low]"=r" (t91_low) : [t81_low]"r" (t81_low) , [t79_low]"r" (t79_low) );	// and t81_low t79_low => t91_low
	asm("AND %[t92_low], %[t81_low], %[t78_low]" : [t92_low]"=r" (t92_low) : [t81_low]"r" (t81_low) , [t78_low]"r" (t78_low) );	// and t81_low t78_low => t92_low
	asm("EOR %[t93_low], %[t91_low], %[t90_low]" : [t93_low]"=r" (t93_low) : [t91_low]"r" (t91_low) , [t90_low]"r" (t90_low) );	// eor t91_low t90_low => t93_low
	asm("EOR %[t94_low], %[t89_low], %[t87_low]" : [t94_low]"=r" (t94_low) : [t89_low]"r" (t89_low) , [t87_low]"r" (t87_low) );	// eor t89_low t87_low => t94_low
	asm("EOR %[t95_low], %[t94_low], %[t85_low]" : [t95_low]"=r" (t95_low) : [t94_low]"r" (t94_low) , [t85_low]"r" (t85_low) );	// eor t94_low t85_low => t95_low
	asm("EOR %[t96_low], %[t88_low], %[t86_low]" : [t96_low]"=r" (t96_low) : [t88_low]"r" (t88_low) , [t86_low]"r" (t86_low) );	// eor t88_low t86_low => t96_low
	asm("EOR %[t97_low], %[t53_low], %[t48_low]" : [t97_low]"=r" (t97_low) : [t53_low]"r" (t53_low) , [t48_low]"r" (result_low[0]) );	// eor t53_low t48_low => t97_low
	asm("EOR %[t98_low], %[t54_low], %[t49_low]" : [t98_low]"=r" (t98_low) : [t54_low]"r" (t54_low) , [t49_low]"r" (result_low[1]) );	// eor t54_low t49_low => t98_low
	asm("EOR %[t99_low], %[t38_low], %[t51_low]" : [t99_low]"=r" (t99_low) : [t38_low]"r" (t38_low) , [t51_low]"r" (result_low[2]) );	// eor t38_low t51_low => t99_low
	asm("EOR %[t100_low], %[t55_low], %[t53_low]" : [t100_low]"=r" (t100_low) : [t55_low]"r" (t55_low) , [t53_low]"r" (t53_low) );	// eor t55_low t53_low => t100_low
	asm("EOR %[t101_low], %[t56_low], %[t54_low]" : [t101_low]"=r" (t101_low) : [t56_low]"r" (t56_low) , [t54_low]"r" (t54_low) );	// eor t56_low t54_low => t101_low
	asm("EOR %[t102_low], %[t25_low], %[t38_low]" : [t102_low]"=r" (t102_low) : [t25_low]"r" (t25_low) , [t38_low]"r" (t38_low) );	// eor t25_low t38_low => t102_low
	asm("EOR %[t103_low], %[t57_low], %[t55_low]" : [t103_low]"=r" (t103_low) : [t57_low]"r" (t57_low) , [t55_low]"r" (t55_low) );	// eor t57_low t55_low => t103_low
	asm("EOR %[t104_low], %[t58_low], %[t56_low]" : [t104_low]"=r" (t104_low) : [t58_low]"r" (t58_low) , [t56_low]"r" (t56_low) );	// eor t58_low t56_low => t104_low
	asm("EOR %[t105_low], %[t12_low], %[t25_low]" : [t105_low]"=r" (t105_low) : [t12_low]"r" (result_low[20]) , [t25_low]"r" (t25_low) );	// eor t12_low t25_low => t105_low
	asm("EOR %[t106_low], %[t13_low], %[t57_low]" : [t106_low]"=r" (t106_low) : [t13_low]"r" (result_low[21]) , [t57_low]"r" (t57_low) );	// eor t13_low t57_low => t106_low
	asm("EOR %[t107_low], %[t1_low], %[t58_low]" : [t107_low]"=r" (t107_low) : [t1_low]"r" (result_low[22]) , [t58_low]"r" (t58_low) );	// eor t1_low t58_low => t107_low
	asm("EOR %[t108_low], %[t97_low], %[t92_low]" : [t108_low]"=r" (result_low[3]) : [t97_low]"r" (t97_low) , [t92_low]"r" (t92_low) );	// eor t97_low t92_low => t108_low
	asm("EOR %[t109_low], %[t98_low], %[t93_low]" : [t109_low]"=r" (result_low[4]) : [t98_low]"r" (t98_low) , [t93_low]"r" (t93_low) );	// eor t98_low t93_low => t109_low
	asm("EOR %[t110_low], %[t99_low], %[t95_low]" : [t110_low]"=r" (result_low[5]) : [t99_low]"r" (t99_low) , [t95_low]"r" (t95_low) );	// eor t99_low t95_low => t110_low
	asm("EOR %[t111_low], %[t100_low], %[t96_low]" : [t111_low]"=r" (t111_low) : [t100_low]"r" (t100_low) , [t96_low]"r" (t96_low) );	// eor t100_low t96_low => t111_low
	asm("EOR %[t112_low], %[t101_low], %[t84_low]" : [t112_low]"=r" (t112_low) : [t101_low]"r" (t101_low) , [t84_low]"r" (t84_low) );	// eor t101_low t84_low => t112_low
	asm("EOR %[t113_low], %[t103_low], %[t73_low]" : [t113_low]"=r" (t113_low) : [t103_low]"r" (t103_low) , [t73_low]"r" (t73_low) );	// eor t103_low t73_low => t113_low
	asm("EOR %[t114_low], %[t104_low], %[t74_low]" : [t114_low]"=r" (t114_low) : [t104_low]"r" (t104_low) , [t74_low]"r" (t74_low) );	// eor t104_low t74_low => t114_low
	asm("EOR %[t115_low], %[t105_low], %[t76_low]" : [t115_low]"=r" (result_low[17]) : [t105_low]"r" (t105_low) , [t76_low]"r" (t76_low) );	// eor t105_low t76_low => t115_low
	asm("EOR %[t116_low], %[t106_low], %[t77_low]" : [t116_low]"=r" (result_low[18]) : [t106_low]"r" (t106_low) , [t77_low]"r" (t77_low) );	// eor t106_low t77_low => t116_low
	asm("EOR %[t117_low], %[t107_low], %[t65_low]" : [t117_low]"=r" (result_low[19]) : [t107_low]"r" (t107_low) , [t65_low]"r" (t65_low) );	// eor t107_low t65_low => t117_low
	asm("EOR %[t118_low], %[g_low3], %[g_low9]" : [t118_low]"=r" (t118_low) : [g_low3]"r" (g_low[3]) , [g_low9]"r" (g_low[9]) );	// eor g_low3 g_low9 => t118_low
	asm("EOR %[t119_low], %[g_low4], %[g_low10]" : [t119_low]"=r" (t119_low) : [g_low4]"r" (g_low[4]) , [g_low10]"r" (g_low[10]) );	// eor g_low4 g_low10 => t119_low
	asm("EOR %[t120_low], %[g_low5], %[g_low11]" : [t120_low]"=r" (t120_low) : [g_low5]"r" (g_low[5]) , [g_low11]"r" (g_low[11]) );	// eor g_low5 g_low11 => t120_low
	asm("EOR %[t121_low], %[g_low0], %[g_low6]" : [t121_low]"=r" (t121_low) : [g_low0]"r" (g_low[0]) , [g_low6]"r" (g_low[6]) );	// eor g_low0 g_low6 => t121_low
	asm("EOR %[t122_low], %[g_low1], %[g_low7]" : [t122_low]"=r" (t122_low) : [g_low1]"r" (g_low[1]) , [g_low7]"r" (g_low[7]) );	// eor g_low1 g_low7 => t122_low
	asm("EOR %[t123_low], %[g_low2], %[g_low8]" : [t123_low]"=r" (t123_low) : [g_low2]"r" (g_low[2]) , [g_low8]"r" (g_low[8]) );	// eor g_low2 g_low8 => t123_low
	asm("EOR %[t124_low], %[f_low3], %[f_low9]" : [t124_low]"=r" (t124_low) : [f_low3]"r" (f_low[3]) , [f_low9]"r" (f_low[9]) );	// eor f_low3 f_low9 => t124_low
	asm("EOR %[t125_low], %[f_low4], %[f_low10]" : [t125_low]"=r" (t125_low) : [f_low4]"r" (f_low[4]) , [f_low10]"r" (f_low[10]) );	// eor f_low4 f_low10 => t125_low
	asm("EOR %[t126_low], %[f_low5], %[f_low11]" : [t126_low]"=r" (t126_low) : [f_low5]"r" (f_low[5]) , [f_low11]"r" (f_low[11]) );	// eor f_low5 f_low11 => t126_low
	asm("EOR %[t127_low], %[f_low0], %[f_low6]" : [t127_low]"=r" (t127_low) : [f_low0]"r" (f_low[0]) , [f_low6]"r" (f_low[6]) );	// eor f_low0 f_low6 => t127_low
	asm("EOR %[t128_low], %[f_low1], %[f_low7]" : [t128_low]"=r" (t128_low) : [f_low1]"r" (f_low[1]) , [f_low7]"r" (f_low[7]) );	// eor f_low1 f_low7 => t128_low
	asm("EOR %[t129_low], %[f_low2], %[f_low8]" : [t129_low]"=r" (t129_low) : [f_low2]"r" (f_low[2]) , [f_low8]"r" (f_low[8]) );	// eor f_low2 f_low8 => t129_low
	asm("AND %[t130_low], %[t129_low], %[t123_low]" : [t130_low]"=r" (t130_low) : [t129_low]"r" (t129_low) , [t123_low]"r" (t123_low) );	// and t129_low t123_low => t130_low
	asm("AND %[t131_low], %[t129_low], %[t121_low]" : [t131_low]"=r" (t131_low) : [t129_low]"r" (t129_low) , [t121_low]"r" (t121_low) );	// and t129_low t121_low => t131_low
	asm("AND %[t132_low], %[t129_low], %[t122_low]" : [t132_low]"=r" (t132_low) : [t129_low]"r" (t129_low) , [t122_low]"r" (t122_low) );	// and t129_low t122_low => t132_low
	asm("AND %[t133_low], %[t127_low], %[t123_low]" : [t133_low]"=r" (t133_low) : [t127_low]"r" (t127_low) , [t123_low]"r" (t123_low) );	// and t127_low t123_low => t133_low
	asm("AND %[t134_low], %[t128_low], %[t123_low]" : [t134_low]"=r" (t134_low) : [t128_low]"r" (t128_low) , [t123_low]"r" (t123_low) );	// and t128_low t123_low => t134_low
	asm("AND %[t135_low], %[t128_low], %[t122_low]" : [t135_low]"=r" (t135_low) : [t128_low]"r" (t128_low) , [t122_low]"r" (t122_low) );	// and t128_low t122_low => t135_low
	asm("AND %[t136_low], %[t128_low], %[t121_low]" : [t136_low]"=r" (t136_low) : [t128_low]"r" (t128_low) , [t121_low]"r" (t121_low) );	// and t128_low t121_low => t136_low
	asm("AND %[t137_low], %[t127_low], %[t122_low]" : [t137_low]"=r" (t137_low) : [t127_low]"r" (t127_low) , [t122_low]"r" (t122_low) );	// and t127_low t122_low => t137_low
	asm("AND %[t138_low], %[t127_low], %[t121_low]" : [t138_low]"=r" (t138_low) : [t127_low]"r" (t127_low) , [t121_low]"r" (t121_low) );	// and t127_low t121_low => t138_low
	asm("EOR %[t139_low], %[t137_low], %[t136_low]" : [t139_low]"=r" (t139_low) : [t137_low]"r" (t137_low) , [t136_low]"r" (t136_low) );	// eor t137_low t136_low => t139_low
	asm("EOR %[t140_low], %[t135_low], %[t133_low]" : [t140_low]"=r" (t140_low) : [t135_low]"r" (t135_low) , [t133_low]"r" (t133_low) );	// eor t135_low t133_low => t140_low
	asm("EOR %[t141_low], %[t140_low], %[t131_low]" : [t141_low]"=r" (t141_low) : [t140_low]"r" (t140_low) , [t131_low]"r" (t131_low) );	// eor t140_low t131_low => t141_low
	asm("EOR %[t142_low], %[t134_low], %[t132_low]" : [t142_low]"=r" (t142_low) : [t134_low]"r" (t134_low) , [t132_low]"r" (t132_low) );	// eor t134_low t132_low => t142_low
	asm("AND %[t143_low], %[t126_low], %[t120_low]" : [t143_low]"=r" (t143_low) : [t126_low]"r" (t126_low) , [t120_low]"r" (t120_low) );	// and t126_low t120_low => t143_low
	asm("AND %[t144_low], %[t126_low], %[t118_low]" : [t144_low]"=r" (t144_low) : [t126_low]"r" (t126_low) , [t118_low]"r" (t118_low) );	// and t126_low t118_low => t144_low
	asm("AND %[t145_low], %[t126_low], %[t119_low]" : [t145_low]"=r" (t145_low) : [t126_low]"r" (t126_low) , [t119_low]"r" (t119_low) );	// and t126_low t119_low => t145_low
	asm("AND %[t146_low], %[t124_low], %[t120_low]" : [t146_low]"=r" (t146_low) : [t124_low]"r" (t124_low) , [t120_low]"r" (t120_low) );	// and t124_low t120_low => t146_low
	asm("AND %[t147_low], %[t125_low], %[t120_low]" : [t147_low]"=r" (t147_low) : [t125_low]"r" (t125_low) , [t120_low]"r" (t120_low) );	// and t125_low t120_low => t147_low
	asm("AND %[t148_low], %[t125_low], %[t119_low]" : [t148_low]"=r" (t148_low) : [t125_low]"r" (t125_low) , [t119_low]"r" (t119_low) );	// and t125_low t119_low => t148_low
	asm("AND %[t149_low], %[t125_low], %[t118_low]" : [t149_low]"=r" (t149_low) : [t125_low]"r" (t125_low) , [t118_low]"r" (t118_low) );	// and t125_low t118_low => t149_low
	asm("AND %[t150_low], %[t124_low], %[t119_low]" : [t150_low]"=r" (t150_low) : [t124_low]"r" (t124_low) , [t119_low]"r" (t119_low) );	// and t124_low t119_low => t150_low
	asm("AND %[t151_low], %[t124_low], %[t118_low]" : [t151_low]"=r" (t151_low) : [t124_low]"r" (t124_low) , [t118_low]"r" (t118_low) );	// and t124_low t118_low => t151_low
	asm("EOR %[t152_low], %[t150_low], %[t149_low]" : [t152_low]"=r" (t152_low) : [t150_low]"r" (t150_low) , [t149_low]"r" (t149_low) );	// eor t150_low t149_low => t152_low
	asm("EOR %[t153_low], %[t148_low], %[t146_low]" : [t153_low]"=r" (t153_low) : [t148_low]"r" (t148_low) , [t146_low]"r" (t146_low) );	// eor t148_low t146_low => t153_low
	asm("EOR %[t154_low], %[t153_low], %[t144_low]" : [t154_low]"=r" (t154_low) : [t153_low]"r" (t153_low) , [t144_low]"r" (t144_low) );	// eor t153_low t144_low => t154_low
	asm("EOR %[t155_low], %[t147_low], %[t145_low]" : [t155_low]"=r" (t155_low) : [t147_low]"r" (t147_low) , [t145_low]"r" (t145_low) );	// eor t147_low t145_low => t155_low
	asm("EOR %[t156_low], %[t121_low], %[t118_low]" : [t156_low]"=r" (t156_low) : [t121_low]"r" (t121_low) , [t118_low]"r" (t118_low) );	// eor t121_low t118_low => t156_low
	asm("EOR %[t157_low], %[t122_low], %[t119_low]" : [t157_low]"=r" (t157_low) : [t122_low]"r" (t122_low) , [t119_low]"r" (t119_low) );	// eor t122_low t119_low => t157_low
	asm("EOR %[t158_low], %[t123_low], %[t120_low]" : [t158_low]"=r" (t158_low) : [t123_low]"r" (t123_low) , [t120_low]"r" (t120_low) );	// eor t123_low t120_low => t158_low
	asm("EOR %[t159_low], %[t127_low], %[t124_low]" : [t159_low]"=r" (t159_low) : [t127_low]"r" (t127_low) , [t124_low]"r" (t124_low) );	// eor t127_low t124_low => t159_low
	asm("EOR %[t160_low], %[t128_low], %[t125_low]" : [t160_low]"=r" (t160_low) : [t128_low]"r" (t128_low) , [t125_low]"r" (t125_low) );	// eor t128_low t125_low => t160_low
	asm("EOR %[t161_low], %[t129_low], %[t126_low]" : [t161_low]"=r" (t161_low) : [t129_low]"r" (t129_low) , [t126_low]"r" (t126_low) );	// eor t129_low t126_low => t161_low
	asm("AND %[t162_low], %[t161_low], %[t158_low]" : [t162_low]"=r" (t162_low) : [t161_low]"r" (t161_low) , [t158_low]"r" (t158_low) );	// and t161_low t158_low => t162_low
	asm("AND %[t163_low], %[t161_low], %[t156_low]" : [t163_low]"=r" (t163_low) : [t161_low]"r" (t161_low) , [t156_low]"r" (t156_low) );	// and t161_low t156_low => t163_low
	asm("AND %[t164_low], %[t161_low], %[t157_low]" : [t164_low]"=r" (t164_low) : [t161_low]"r" (t161_low) , [t157_low]"r" (t157_low) );	// and t161_low t157_low => t164_low
	asm("AND %[t165_low], %[t159_low], %[t158_low]" : [t165_low]"=r" (t165_low) : [t159_low]"r" (t159_low) , [t158_low]"r" (t158_low) );	// and t159_low t158_low => t165_low
	asm("AND %[t166_low], %[t160_low], %[t158_low]" : [t166_low]"=r" (t166_low) : [t160_low]"r" (t160_low) , [t158_low]"r" (t158_low) );	// and t160_low t158_low => t166_low
	asm("AND %[t167_low], %[t160_low], %[t157_low]" : [t167_low]"=r" (t167_low) : [t160_low]"r" (t160_low) , [t157_low]"r" (t157_low) );	// and t160_low t157_low => t167_low
	asm("AND %[t168_low], %[t160_low], %[t156_low]" : [t168_low]"=r" (t168_low) : [t160_low]"r" (t160_low) , [t156_low]"r" (t156_low) );	// and t160_low t156_low => t168_low
	asm("AND %[t169_low], %[t159_low], %[t157_low]" : [t169_low]"=r" (t169_low) : [t159_low]"r" (t159_low) , [t157_low]"r" (t157_low) );	// and t159_low t157_low => t169_low
	asm("AND %[t170_low], %[t159_low], %[t156_low]" : [t170_low]"=r" (t170_low) : [t159_low]"r" (t159_low) , [t156_low]"r" (t156_low) );	// and t159_low t156_low => t170_low
	asm("EOR %[t171_low], %[t169_low], %[t168_low]" : [t171_low]"=r" (t171_low) : [t169_low]"r" (t169_low) , [t168_low]"r" (t168_low) );	// eor t169_low t168_low => t171_low
	asm("EOR %[t172_low], %[t167_low], %[t165_low]" : [t172_low]"=r" (t172_low) : [t167_low]"r" (t167_low) , [t165_low]"r" (t165_low) );	// eor t167_low t165_low => t172_low
	asm("EOR %[t173_low], %[t172_low], %[t163_low]" : [t173_low]"=r" (t173_low) : [t172_low]"r" (t172_low) , [t163_low]"r" (t163_low) );	// eor t172_low t163_low => t173_low
	asm("EOR %[t174_low], %[t166_low], %[t164_low]" : [t174_low]"=r" (t174_low) : [t166_low]"r" (t166_low) , [t164_low]"r" (t164_low) );	// eor t166_low t164_low => t174_low
	asm("EOR %[t175_low], %[t142_low], %[t151_low]" : [t175_low]"=r" (t175_low) : [t142_low]"r" (t142_low) , [t151_low]"r" (t151_low) );	// eor t142_low t151_low => t175_low
	asm("EOR %[t176_low], %[t130_low], %[t152_low]" : [t176_low]"=r" (t176_low) : [t130_low]"r" (t130_low) , [t152_low]"r" (t152_low) );	// eor t130_low t152_low => t176_low
	asm("EOR %[t177_low], %[t170_low], %[t175_low]" : [t177_low]"=r" (t177_low) : [t170_low]"r" (t170_low) , [t175_low]"r" (t175_low) );	// eor t170_low t175_low => t177_low
	asm("EOR %[t178_low], %[t171_low], %[t176_low]" : [t178_low]"=r" (t178_low) : [t171_low]"r" (t171_low) , [t176_low]"r" (t176_low) );	// eor t171_low t176_low => t178_low
	asm("EOR %[t179_low], %[t173_low], %[t154_low]" : [t179_low]"=r" (t179_low) : [t173_low]"r" (t173_low) , [t154_low]"r" (t154_low) );	// eor t173_low t154_low => t179_low
	asm("EOR %[t180_low], %[t174_low], %[t155_low]" : [t180_low]"=r" (t180_low) : [t174_low]"r" (t174_low) , [t155_low]"r" (t155_low) );	// eor t174_low t155_low => t180_low
	asm("EOR %[t181_low], %[t162_low], %[t143_low]" : [t181_low]"=r" (t181_low) : [t162_low]"r" (t162_low) , [t143_low]"r" (t143_low) );	// eor t162_low t143_low => t181_low
	asm("EOR %[t182_low], %[t177_low], %[t138_low]" : [t182_low]"=r" (t182_low) : [t177_low]"r" (t177_low) , [t138_low]"r" (t138_low) );	// eor t177_low t138_low => t182_low
	asm("EOR %[t183_low], %[t178_low], %[t139_low]" : [t183_low]"=r" (t183_low) : [t178_low]"r" (t178_low) , [t139_low]"r" (t139_low) );	// eor t178_low t139_low => t183_low
	asm("EOR %[t184_low], %[t179_low], %[t141_low]" : [t184_low]"=r" (t184_low) : [t179_low]"r" (t179_low) , [t141_low]"r" (t141_low) );	// eor t179_low t141_low => t184_low
	asm("EOR %[t185_low], %[t180_low], %[t175_low]" : [t185_low]"=r" (t185_low) : [t180_low]"r" (t180_low) , [t175_low]"r" (t175_low) );	// eor t180_low t175_low => t185_low
	asm("EOR %[t186_low], %[t181_low], %[t176_low]" : [t186_low]"=r" (t186_low) : [t181_low]"r" (t181_low) , [t176_low]"r" (t176_low) );	// eor t181_low t176_low => t186_low
	asm("EOR %[t187_low], %[t111_low], %[t48_low]" : [t187_low]"=r" (t187_low) : [t111_low]"r" (t111_low) , [t48_low]"r" (result_low[0]) );	// eor t111_low t48_low => t187_low
	asm("EOR %[t188_low], %[t112_low], %[t49_low]" : [t188_low]"=r" (t188_low) : [t112_low]"r" (t112_low) , [t49_low]"r" (result_low[1]) );	// eor t112_low t49_low => t188_low
	asm("EOR %[t189_low], %[t102_low], %[t51_low]" : [t189_low]"=r" (t189_low) : [t102_low]"r" (t102_low) , [t51_low]"r" (result_low[2]) );	// eor t102_low t51_low => t189_low
	asm("EOR %[t190_low], %[t113_low], %[t108_low]" : [t190_low]"=r" (t190_low) : [t113_low]"r" (t113_low) , [t108_low]"r" (result_low[3]) );	// eor t113_low t108_low => t190_low
	asm("EOR %[t191_low], %[t114_low], %[t109_low]" : [t191_low]"=r" (t191_low) : [t114_low]"r" (t114_low) , [t109_low]"r" (result_low[4]) );	// eor t114_low t109_low => t191_low
	asm("EOR %[t192_low], %[t115_low], %[t110_low]" : [t192_low]"=r" (t192_low) : [t115_low]"r" (result_low[17]) , [t110_low]"r" (result_low[5]) );	// eor t115_low t110_low => t192_low
	asm("EOR %[t193_low], %[t116_low], %[t111_low]" : [t193_low]"=r" (t193_low) : [t116_low]"r" (result_low[18]) , [t111_low]"r" (t111_low) );	// eor t116_low t111_low => t193_low
	asm("EOR %[t194_low], %[t117_low], %[t112_low]" : [t194_low]"=r" (t194_low) : [t117_low]"r" (result_low[19]) , [t112_low]"r" (t112_low) );	// eor t117_low t112_low => t194_low
	asm("EOR %[t195_low], %[t12_low], %[t102_low]" : [t195_low]"=r" (t195_low) : [t12_low]"r" (result_low[20]) , [t102_low]"r" (t102_low) );	// eor t12_low t102_low => t195_low
	asm("EOR %[t196_low], %[t13_low], %[t113_low]" : [t196_low]"=r" (t196_low) : [t13_low]"r" (result_low[21]) , [t113_low]"r" (t113_low) );	// eor t13_low t113_low => t196_low
	asm("EOR %[t197_low], %[t1_low], %[t114_low]" : [t197_low]"=r" (t197_low) : [t1_low]"r" (result_low[22]) , [t114_low]"r" (t114_low) );	// eor t1_low t114_low => t197_low
	asm("EOR %[t198_low], %[t187_low], %[t138_low]" : [t198_low]"=r" (result_low[6]) : [t187_low]"r" (t187_low) , [t138_low]"r" (t138_low) );	// eor t187_low t138_low => t198_low
	asm("EOR %[t199_low], %[t188_low], %[t139_low]" : [t199_low]"=r" (result_low[7]) : [t188_low]"r" (t188_low) , [t139_low]"r" (t139_low) );	// eor t188_low t139_low => t199_low
	asm("EOR %[t200_low], %[t189_low], %[t141_low]" : [t200_low]"=r" (result_low[8]) : [t189_low]"r" (t189_low) , [t141_low]"r" (t141_low) );	// eor t189_low t141_low => t200_low
	asm("EOR %[t201_low], %[t190_low], %[t182_low]" : [t201_low]"=r" (result_low[9]) : [t190_low]"r" (t190_low) , [t182_low]"r" (t182_low) );	// eor t190_low t182_low => t201_low
	asm("EOR %[t202_low], %[t191_low], %[t183_low]" : [t202_low]"=r" (result_low[10]) : [t191_low]"r" (t191_low) , [t183_low]"r" (t183_low) );	// eor t191_low t183_low => t202_low
	asm("EOR %[t203_low], %[t192_low], %[t184_low]" : [t203_low]"=r" (result_low[11]) : [t192_low]"r" (t192_low) , [t184_low]"r" (t184_low) );	// eor t192_low t184_low => t203_low
	asm("EOR %[t204_low], %[t193_low], %[t185_low]" : [t204_low]"=r" (result_low[12]) : [t193_low]"r" (t193_low) , [t185_low]"r" (t185_low) );	// eor t193_low t185_low => t204_low
	asm("EOR %[t205_low], %[t194_low], %[t186_low]" : [t205_low]"=r" (result_low[13]) : [t194_low]"r" (t194_low) , [t186_low]"r" (t186_low) );	// eor t194_low t186_low => t205_low
	asm("EOR %[t206_low], %[t195_low], %[t154_low]" : [t206_low]"=r" (result_low[14]) : [t195_low]"r" (t195_low) , [t154_low]"r" (t154_low) );	// eor t195_low t154_low => t206_low
	asm("EOR %[t207_low], %[t196_low], %[t155_low]" : [t207_low]"=r" (result_low[15]) : [t196_low]"r" (t196_low) , [t155_low]"r" (t155_low) );	// eor t196_low t155_low => t207_low
	asm("EOR %[t208_low], %[t197_low], %[t143_low]" : [t208_low]"=r" (result_low[16]) : [t197_low]"r" (t197_low) , [t143_low]"r" (t143_low) );	// eor t197_low t143_low => t208_low

	/* Get results */	
	asm("EOR %[result_high13_target], %[result_high13], %[result_high22]" : [result_high13_target]"=r" (result_high[13]) : [result_high13]"r" (result_high[13]) , [result_high22]"r" (result_high[22]) );	// eor result_high13 result_high22 => result_high13
	asm("EOR %[result_high10_target], %[result_high10], %[result_high22]" : [result_high10_target]"=r" (result_high[10]) : [result_high10]"r" (result_high[10]) , [result_high22]"r" (result_high[22]) );	// eor result_high10 result_high22 => result_high10
	asm("EOR %[result_high12_target], %[result_high12], %[result_high21]" : [result_high12_target]"=r" (result_high[12]) : [result_high12]"r" (result_high[12]) , [result_high21]"r" (result_high[21]) );	// eor result_high12 result_high21 => result_high12
	asm("EOR %[result_high9_target], %[result_high9], %[result_high21]" : [result_high9_target]"=r" (result_high[9]) : [result_high9]"r" (result_high[9]) , [result_high21]"r" (result_high[21]) );	// eor result_high9 result_high21 => result_high9
	asm("EOR %[result_high11_target], %[result_high11], %[result_high20]" : [result_high11_target]"=r" (result_high[11]) : [result_high11]"r" (result_high[11]) , [result_high20]"r" (result_high[20]) );	// eor result_high11 result_high20 => result_high11
	asm("EOR %[result_high8_target], %[result_high8], %[result_high20]" : [result_high8_target]"=r" (result_high[8]) : [result_high8]"r" (result_high[8]) , [result_high20]"r" (result_high[20]) );	// eor result_high8 result_high20 => result_high8
	asm("EOR %[result_high10_target], %[result_high10], %[result_high19]" : [result_high10_target]"=r" (result_high[10]) : [result_high10]"r" (result_high[10]) , [result_high19]"r" (result_high[19]) );	// eor result_high10 result_high19 => result_high10
	asm("EOR %[result_high7_target], %[result_high7], %[result_high19]" : [result_high7_target]"=r" (result_high[7]) : [result_high7]"r" (result_high[7]) , [result_high19]"r" (result_high[19]) );	// eor result_high7 result_high19 => result_high7
	asm("EOR %[result_high9_target], %[result_high9], %[result_high18]" : [result_high9_target]"=r" (result_high[9]) : [result_high9]"r" (result_high[9]) , [result_high18]"r" (result_high[18]) );	// eor result_high9 result_high18 => result_high9
	asm("EOR %[result_high6_target], %[result_high6], %[result_high18]" : [result_high6_target]"=r" (result_high[6]) : [result_high6]"r" (result_high[6]) , [result_high18]"r" (result_high[18]) );	// eor result_high6 result_high18 => result_high6
	asm("EOR %[result_high8_target], %[result_high8], %[result_high17]" : [result_high8_target]"=r" (result_high[8]) : [result_high8]"r" (result_high[8]) , [result_high17]"r" (result_high[17]) );	// eor result_high8 result_high17 => result_high8
	asm("EOR %[result_high5_target], %[result_high5], %[result_high17]" : [result_high5_target]"=r" (result_high[5]) : [result_high5]"r" (result_high[5]) , [result_high17]"r" (result_high[17]) );	// eor result_high5 result_high17 => result_high5
	asm("EOR %[result_high7_target], %[result_high7], %[result_high16]" : [result_high7_target]"=r" (result_high[7]) : [result_high7]"r" (result_high[7]) , [result_high16]"r" (result_high[16]) );	// eor result_high7 result_high16 => result_high7
	asm("EOR %[result_high4_target], %[result_high4], %[result_high16]" : [result_high4_target]"=r" (result_high[4]) : [result_high4]"r" (result_high[4]) , [result_high16]"r" (result_high[16]) );	// eor result_high4 result_high16 => result_high4
	asm("EOR %[result_high6_target], %[result_high6], %[result_high15]" : [result_high6_target]"=r" (result_high[6]) : [result_high6]"r" (result_high[6]) , [result_high15]"r" (result_high[15]) );	// eor result_high6 result_high15 => result_high6
	asm("EOR %[result_high3_target], %[result_high3], %[result_high15]" : [result_high3_target]"=r" (result_high[3]) : [result_high3]"r" (result_high[3]) , [result_high15]"r" (result_high[15]) );	// eor result_high3 result_high15 => result_high3
	asm("EOR %[result_high5_target], %[result_high5], %[result_high14]" : [result_high5_target]"=r" (result_high[5]) : [result_high5]"r" (result_high[5]) , [result_high14]"r" (result_high[14]) );	// eor result_high5 result_high14 => result_high5
	asm("EOR %[result_high2_target], %[result_high2], %[result_high14]" : [result_high2_target]"=r" (result_high[2]) : [result_high2]"r" (result_high[2]) , [result_high14]"r" (result_high[14]) );	// eor result_high2 result_high14 => result_high2
	asm("EOR %[result_high4_target], %[result_high4], %[result_high13]" : [result_high4_target]"=r" (result_high[4]) : [result_high4]"r" (result_high[4]) , [result_high13]"r" (result_high[13]) );	// eor result_high4 result_high13 => result_high4
	asm("EOR %[result_high1_target], %[result_high1], %[result_high13]" : [result_high1_target]"=r" (result_high[1]) : [result_high1]"r" (result_high[1]) , [result_high13]"r" (result_high[13]) );	// eor result_high1 result_high13 => result_high1
	asm("EOR %[result_high3_target], %[result_high3], %[result_high12]" : [result_high3_target]"=r" (result_high[3]) : [result_high3]"r" (result_high[3]) , [result_high12]"r" (result_high[12]) );	// eor result_high3 result_high12 => result_high3
	asm("EOR %[result_high0_target], %[result_high0], %[result_high12]" : [result_high0_target]"=r" (result_high[0]) : [result_high0]"r" (result_high[0]) , [result_high12]"r" (result_high[12]) );	// eor result_high0 result_high12 => result_high0
	
	asm("EOR %[result_low13_target], %[result_low13], %[result_low22]" : [result_low13_target]"=r" (result_low[13]) : [result_low13]"r" (result_low[13]) , [result_low22]"r" (result_low[22]) );	// eor result_low13 result_low22 => result_low13
	asm("EOR %[result_low10_target], %[result_low10], %[result_low22]" : [result_low10_target]"=r" (result_low[10]) : [result_low10]"r" (result_low[10]) , [result_low22]"r" (result_low[22]) );	// eor result_low10 result_low22 => result_low10
	asm("EOR %[result_low12_target], %[result_low12], %[result_low21]" : [result_low12_target]"=r" (result_low[12]) : [result_low12]"r" (result_low[12]) , [result_low21]"r" (result_low[21]) );	// eor result_low12 result_low21 => result_low12
	asm("EOR %[result_low9_target], %[result_low9], %[result_low21]" : [result_low9_target]"=r" (result_low[9]) : [result_low9]"r" (result_low[9]) , [result_low21]"r" (result_low[21]) );	// eor result_low9 result_low21 => result_low9
	asm("EOR %[result_low11_target], %[result_low11], %[result_low20]" : [result_low11_target]"=r" (result_low[11]) : [result_low11]"r" (result_low[11]) , [result_low20]"r" (result_low[20]) );	// eor result_low11 result_low20 => result_low11
	asm("EOR %[result_low8_target], %[result_low8], %[result_low20]" : [result_low8_target]"=r" (result_low[8]) : [result_low8]"r" (result_low[8]) , [result_low20]"r" (result_low[20]) );	// eor result_low8 result_low20 => result_low8
	asm("EOR %[result_low10_target], %[result_low10], %[result_low19]" : [result_low10_target]"=r" (result_low[10]) : [result_low10]"r" (result_low[10]) , [result_low19]"r" (result_low[19]) );	// eor result_low10 result_low19 => result_low10
	asm("EOR %[result_low7_target], %[result_low7], %[result_low19]" : [result_low7_target]"=r" (result_low[7]) : [result_low7]"r" (result_low[7]) , [result_low19]"r" (result_low[19]) );	// eor result_low7 result_low19 => result_low7
	asm("EOR %[result_low9_target], %[result_low9], %[result_low18]" : [result_low9_target]"=r" (result_low[9]) : [result_low9]"r" (result_low[9]) , [result_low18]"r" (result_low[18]) );	// eor result_low9 result_low18 => result_low9
	asm("EOR %[result_low6_target], %[result_low6], %[result_low18]" : [result_low6_target]"=r" (result_low[6]) : [result_low6]"r" (result_low[6]) , [result_low18]"r" (result_low[18]) );	// eor result_low6 result_low18 => result_low6
	asm("EOR %[result_low8_target], %[result_low8], %[result_low17]" : [result_low8_target]"=r" (result_low[8]) : [result_low8]"r" (result_low[8]) , [result_low17]"r" (result_low[17]) );	// eor result_low8 result_low17 => result_low8
	asm("EOR %[result_low5_target], %[result_low5], %[result_low17]" : [result_low5_target]"=r" (result_low[5]) : [result_low5]"r" (result_low[5]) , [result_low17]"r" (result_low[17]) );	// eor result_low5 result_low17 => result_low5
	asm("EOR %[result_low7_target], %[result_low7], %[result_low16]" : [result_low7_target]"=r" (result_low[7]) : [result_low7]"r" (result_low[7]) , [result_low16]"r" (result_low[16]) );	// eor result_low7 result_low16 => result_low7
	asm("EOR %[result_low4_target], %[result_low4], %[result_low16]" : [result_low4_target]"=r" (result_low[4]) : [result_low4]"r" (result_low[4]) , [result_low16]"r" (result_low[16]) );	// eor result_low4 result_low16 => result_low4
	asm("EOR %[result_low6_target], %[result_low6], %[result_low15]" : [result_low6_target]"=r" (result_low[6]) : [result_low6]"r" (result_low[6]) , [result_low15]"r" (result_low[15]) );	// eor result_low6 result_low15 => result_low6
	asm("EOR %[result_low3_target], %[result_low3], %[result_low15]" : [result_low3_target]"=r" (result_low[3]) : [result_low3]"r" (result_low[3]) , [result_low15]"r" (result_low[15]) );	// eor result_low3 result_low15 => result_low3
	asm("EOR %[result_low5_target], %[result_low5], %[result_low14]" : [result_low5_target]"=r" (result_low[5]) : [result_low5]"r" (result_low[5]) , [result_low14]"r" (result_low[14]) );	// eor result_low5 result_low14 => result_low5
	asm("EOR %[result_low2_target], %[result_low2], %[result_low14]" : [result_low2_target]"=r" (result_low[2]) : [result_low2]"r" (result_low[2]) , [result_low14]"r" (result_low[14]) );	// eor result_low2 result_low14 => result_low2
	asm("EOR %[result_low4_target], %[result_low4], %[result_low13]" : [result_low4_target]"=r" (result_low[4]) : [result_low4]"r" (result_low[4]) , [result_low13]"r" (result_low[13]) );	// eor result_low4 result_low13 => result_low4
	asm("EOR %[result_low1_target], %[result_low1], %[result_low13]" : [result_low1_target]"=r" (result_low[1]) : [result_low1]"r" (result_low[1]) , [result_low13]"r" (result_low[13]) );	// eor result_low1 result_low13 => result_low1
	asm("EOR %[result_low3_target], %[result_low3], %[result_low12]" : [result_low3_target]"=r" (result_low[3]) : [result_low3]"r" (result_low[3]) , [result_low12]"r" (result_low[12]) );	// eor result_low3 result_low12 => result_low3
	asm("EOR %[result_low0_target], %[result_low0], %[result_low12]" : [result_low0_target]"=r" (result_low[0]) : [result_low0]"r" (result_low[0]) , [result_low12]"r" (result_low[12]) );	// eor result_low0 result_low12 => result_low0

    /*Copy to output, unrolled */
    /* seems to be faster than replacing result[x] with h[x] (because h is a pointer?) */
    asm("MOV %[h0], %[r0]" : [h0]"=r" (h_high[0]) : [r0]"r" (result_high[0]) );   /* mov result[0]  => h[0] */
    asm("MOV %[h1], %[r1]" : [h1]"=r" (h_high[1]) : [r1]"r" (result_high[1]) );   /* mov result[1]  => h[1] */
    asm("MOV %[h2], %[r2]" : [h2]"=r" (h_high[2]) : [r2]"r" (result_high[2]) );   /* mov result[2]  => h[2] */
    asm("MOV %[h3], %[r3]" : [h3]"=r" (h_high[3]) : [r3]"r" (result_high[3]) );   /* mov result[3]  => h[3] */
    asm("MOV %[h4], %[r4]" : [h4]"=r" (h_high[4]) : [r4]"r" (result_high[4]) );   /* mov result[4]  => h[4] */
    asm("MOV %[h5], %[r5]" : [h5]"=r" (h_high[5]) : [r5]"r" (result_high[5]) );   /* mov result[5]  => h[5] */
    asm("MOV %[h6], %[r6]" : [h6]"=r" (h_high[6]) : [r6]"r" (result_high[6]) );   /* mov result[6]  => h[6] */
    asm("MOV %[h7], %[r7]" : [h7]"=r" (h_high[7]) : [r7]"r" (result_high[7]) );   /* mov result[7]  => h[7] */
    asm("MOV %[h8], %[r8]" : [h8]"=r" (h_high[8]) : [r8]"r" (result_high[8]) );   /* mov result[8]  => h[8] */
    asm("MOV %[h9], %[r9]" : [h9]"=r" (h_high[9]) : [r9]"r" (result_high[9]) );   /* mov result[9]  => h[9] */
    asm("MOV %[h10], %[r10]" : [h10]"=r" (h_high[10]) : [r10]"r" (result_high[10]) ); /* mov result[10]  => h[10] */
    asm("MOV %[h11], %[r11]" : [h11]"=r" (h_high[11]) : [r11]"r" (result_high[11]) ); /* mov result[11]  => h[11] */
    //low
    asm("MOV %[h0], %[r0]" : [h0]"=r" (h_low[0]) : [r0]"r" (result_low[0]) );   /* mov result[0]  => h[0] */
    asm("MOV %[h1], %[r1]" : [h1]"=r" (h_low[1]) : [r1]"r" (result_low[1]) );   /* mov result[1]  => h[1] */
    asm("MOV %[h2], %[r2]" : [h2]"=r" (h_low[2]) : [r2]"r" (result_low[2]) );   /* mov result[2]  => h[2] */
    asm("MOV %[h3], %[r3]" : [h3]"=r" (h_low[3]) : [r3]"r" (result_low[3]) );   /* mov result[3]  => h[3] */
    asm("MOV %[h4], %[r4]" : [h4]"=r" (h_low[4]) : [r4]"r" (result_low[4]) );   /* mov result[4]  => h[4] */
    asm("MOV %[h5], %[r5]" : [h5]"=r" (h_low[5]) : [r5]"r" (result_low[5]) );   /* mov result[5]  => h[5] */
    asm("MOV %[h6], %[r6]" : [h6]"=r" (h_low[6]) : [r6]"r" (result_low[6]) );   /* mov result[6]  => h[6] */
    asm("MOV %[h7], %[r7]" : [h7]"=r" (h_low[7]) : [r7]"r" (result_low[7]) );   /* mov result[7]  => h[7] */
    asm("MOV %[h8], %[r8]" : [h8]"=r" (h_low[8]) : [r8]"r" (result_low[8]) );   /* mov result[8]  => h[8] */
    asm("MOV %[h9], %[r9]" : [h9]"=r" (h_low[9]) : [r9]"r" (result_low[9]) );   /* mov result[9]  => h[9] */
    asm("MOV %[h10], %[r10]" : [h10]"=r" (h_low[10]) : [r10]"r" (result_low[10]) ); /* mov result[10]  => h[10] */
    asm("MOV %[h11], %[r11]" : [h11]"=r" (h_low[11]) : [r11]"r" (result_low[11]) ); /* mov result[11]  => h[11] */
}

void vec_sq(uint32_t *out_high, uint32_t *out_low, uint32_t *in_high,uint32_t *in_low)
{
	uint32_t result_high[GFBITS];
	uint32_t result_low[GFBITS];

	//

	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[0]) : [in_high1]"r" (in_high[0]) , [in_high2]"r" (in_high[6]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[1]) : [in_high]"r" (in_high[11]) ); 
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[2]) : [in_high1]"r" (in_high[1]) , [in_high2]"r" (in_high[7]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[3]) : [in_high]"r" (in_high[6]) ); 
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[4]) : [in_high1]"r" (in_high[2]) , [in_high2]"r" (in_high[11]) );//paired
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[4]) : [in_high1]"r" (result_high[4]) , [in_high2]"r" (in_high[8]) );//paired
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[5]) : [in_high]"r" (in_high[7]) ); 
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[6]) : [in_high1]"r" (in_high[3]) , [in_high2]"r" (in_high[9]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[7]) : [in_high]"r" (in_high[8]) ); 
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[8]) : [in_high1]"r" (in_high[4]) , [in_high2]"r" (in_high[10]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[9]) : [in_high]"r" (in_high[9]) ); 
	asm("EOR %[r_high], %[in_high1], %[in_high2]" : [r_high]"=r" (result_high[10]) : [in_high1]"r" (in_high[5]) , [in_high2]"r" (in_high[11]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (result_high[11]) : [in_high]"r" (in_high[10]) ); 

	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[0]) : [in_high]"r" (result_high[0]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[1]) : [in_high]"r" (result_high[1]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[2]) : [in_high]"r" (result_high[2]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[3]) : [in_high]"r" (result_high[3]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[4]) : [in_high]"r" (result_high[4]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[5]) : [in_high]"r" (result_high[5]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[6]) : [in_high]"r" (result_high[6]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[7]) : [in_high]"r" (result_high[7]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[8]) : [in_high]"r" (result_high[8]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[9]) : [in_high]"r" (result_high[9]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[10]): [in_high]"r" (result_high[10]) );
	asm("MOV %[r_high], %[in_high]" : [r_high]"=r" (out_high[11]): [in_high]"r" (result_high[11]) );

	//
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[0]) : [in_low1]"r" (in_low[0]) , [in_low2]"r" (in_low[6]) );
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[1]) : [in_low]"r" (in_low[11]) ); 
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[2]) : [in_low1]"r" (in_low[1]) , [in_low2]"r" (in_low[7]) );
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[3]) : [in_low]"r" (in_low[6]) ); 
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[4]) : [in_low1]"r" (in_low[2]) , [in_low2]"r" (in_low[11]) ); //paired
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[4]) : [in_low1]"r" (result_low[4]) , [in_low2]"r" (in_low[8]) );//paired
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[5]) : [in_low]"r" (in_low[7]) ); 
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[6]) : [in_low1]"r" (in_low[3]) , [in_low2]"r" (in_low[9]) );
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[7]) : [in_low]"r" (in_low[8]) ); 
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[8]) : [in_low1]"r" (in_low[4]) , [in_low2]"r" (in_low[10]) );
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[9]) : [in_low]"r" (in_low[9]) ); 
	asm("EOR %[r_low], %[in_low1], %[in_low2]" : [r_low]"=r" (result_low[10]) : [in_low1]"r" (in_low[5]) , [in_low2]"r" (in_low[11]) );
	asm("MOV %[r_low], %[in_low]" : [r_low]"=r" (result_low[11]) : [in_low]"r" (in_low[10]) ); 

	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[0])   : [in_low]"r" (result_low[0]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[1])   : [in_low]"r" (result_low[1]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[2])   : [in_low]"r" (result_low[2]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[3])   : [in_low]"r" (result_low[3]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[4])   : [in_low]"r" (result_low[4]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[5])   : [in_low]"r" (result_low[5]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[6])   : [in_low]"r" (result_low[6]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[7])   : [in_low]"r" (result_low[7]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[8])   : [in_low]"r" (result_low[8]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[9])   : [in_low]"r" (result_low[9]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[10])  : [in_low]"r" (result_low[10]) ); 
	asm("MOV %[r_low], %[in_low]"   : [r_low]"=r" (out_low[11])  : [in_low]"r" (result_low[11]) ); 
}

void vec_copy(uint32_t *out_high, uint32_t *out_low, const uint32_t *in_high, const uint32_t *in_low)
{
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[0]) : [in_high]"r" (in_high[0]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[0])   : [in_low]"r" (in_low[0]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[1]) : [in_high]"r" (in_high[1]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[1])   : [in_low]"r" (in_low[1]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[2]) : [in_high]"r" (in_high[2]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[2])   : [in_low]"r" (in_low[2]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[3]) : [in_high]"r" (in_high[3]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[3])   : [in_low]"r" (in_low[3]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[4]) : [in_high]"r" (in_high[4]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[4])   : [in_low]"r" (in_low[4]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[5]) : [in_high]"r" (in_high[5]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[5])   : [in_low]"r" (in_low[5]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[6]) : [in_high]"r" (in_high[6]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[6])   : [in_low]"r" (in_low[6]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[7]) : [in_high]"r" (in_high[7]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[7])   : [in_low]"r" (in_low[7]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[8]) : [in_high]"r" (in_high[8]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[8])   : [in_low]"r" (in_low[8]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[9]) : [in_high]"r" (in_high[9]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[9])   : [in_low]"r" (in_low[9]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[10]) : [in_high]"r" (in_high[10]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[10])   : [in_low]"r" (in_low[10]) ); 
	asm("MOV %[out_high], %[in_high]" : [out_high]"=r" (out_high[11]) : [in_high]"r" (in_high[11]) );
	asm("MOV %[out_low], %[in_low]"   : [out_low]"=r" (out_low[11])   : [in_low]"r" (in_low[11]) ); 
}

void vec_or(const uint32_t *in_high, const uint32_t *in_low, uint32_t * out_high, uint32_t *out_low)
{
	uint32_t t_h = in_high[0];
	asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[1]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[2]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[3]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[4]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[5]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[6]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[7]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[8]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[9]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_h) : [in1]"r" (t_h), [in2]"r" (in_high[10]) );
    *out_high = t_h | in_high[11];

    uint32_t t_l = in_low[0];
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[1]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[2]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[3]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[4]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[5]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[6]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[7]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[8]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[9]) );
    asm("ORR %[out], %[in1], %[in2]" : [out]"=r" (t_l) : [in1]"r" (t_l), [in2]"r" (in_low[10]) );
    *out_low = t_l | in_low[11];
}

void vec_inv(uint32_t *out_high, uint32_t *out_low, const uint32_t *in_high, const uint32_t *in_low)
{
	uint32_t tmp_11_high[GFBITS]; uint32_t tmp_11_low[GFBITS];
	uint32_t tmp_1111_high[GFBITS]; uint32_t tmp_1111_low[GFBITS];

	vec_copy(out_high, out_low, in_high, in_low);

	vec_sq(out_high, out_low, out_high, out_low);
	vec_mul_s(tmp_11_high, out_high, in_high); // 11
	vec_mul_s(tmp_11_low, out_low, in_low); // 11

	vec_sq(out_high, out_low, tmp_11_high, tmp_11_low);
	vec_sq(out_high, out_low, out_high, out_low);
	vec_mul_s(tmp_1111_high, out_high, tmp_11_high); // 1111
	vec_mul_s(tmp_1111_low, out_low, tmp_11_low); // 1111

	vec_sq(out_high, out_low, tmp_1111_high, tmp_1111_low);
	vec_sq(out_high, out_low, out_high, out_low);
	vec_sq(out_high, out_low, out_high, out_low);
	vec_sq(out_high, out_low, out_high, out_low);
	vec_mul_s(out_high, out_high, tmp_1111_high); // 11111111
	vec_mul_s(out_low, out_low, tmp_1111_low); // 11111111

	vec_sq(out_high, out_low, out_high, out_low);
	vec_sq(out_high, out_low, out_high, out_low);
    vec_mul_s(out_high, out_high, tmp_11_high); // 1111111111
    vec_mul_s(out_low, out_low, tmp_11_low); // 1111111111

	vec_sq(out_high, out_low, out_high, out_low);
	vec_mul_s(out_high, out_high, in_high); // 11111111111
	vec_mul_s(out_low, out_low, in_low); // 11111111111

	vec_sq(out_high, out_low, out_high, out_low); // 111111111110
}
