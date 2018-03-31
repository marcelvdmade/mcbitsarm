#include <stdint.h>

void pt(void);
void nl(void);

void store8(unsigned char *, uint32_t , uint32_t );
void load8(const unsigned char * , uint32_t * , uint32_t * );
void shiftLeft(uint32_t * , uint32_t * , int );
void shiftRight(uint32_t * , uint32_t * , int );