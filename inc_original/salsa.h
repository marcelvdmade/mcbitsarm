typedef unsigned int uint32;
uint32 rotate(uint32,int);
uint32 load_littleendian(const unsigned char *);
void store_littleendian(unsigned char *,uint32);
int salsa20_xor(unsigned char *,const unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);
int salsa20(unsigned char *,const unsigned char *,const unsigned char *,const unsigned char *);
int crypto_stream(unsigned char *,unsigned long long,const unsigned char *,const unsigned char *);
