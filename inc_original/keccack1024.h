typedef unsigned int UINT32;
void KeccakF( UINT32 *, const UINT32 *, int );
void extractFromState( unsigned char *, const UINT32 *, int);
int keccack_1024_hash( unsigned char *, const unsigned char *, unsigned long long );
