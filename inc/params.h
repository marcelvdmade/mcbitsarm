#define GFBITS 12
#define SYS_T 62

#define PK_NROWS (SYS_T*GFBITS) //744
#define PK_NCOLS ((1 << GFBITS) - SYS_T*GFBITS)

#define IRR_BYTES (GFBITS * 8) //96
#define COND_BYTES (736 * 8) //5888
#define SYND_BYTES (PK_NROWS / 8) //93