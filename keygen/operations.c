#include "keccack1024.h"
#include "salsa.h"
#include "poly1315_auth.h"
#include "poly1315_verify.h"

#include "sk_gen.h"
#include "pk_gen.h"

#include "params.h"
#include "encrypt.h"
#include "decrypt.h"

/**
The main encryption function
**/
int mcBits_encrypt(
       unsigned char *c,unsigned long long *clen,
       const unsigned char *m,unsigned long long mlen,
       const unsigned char *pk
)
{
	unsigned char e[ 1 << (GFBITS-3) ];
	unsigned char key[64];
	unsigned char nonce[8] = {0};

	//

#define	ct (c + SYND_BYTES)
#define	tag (ct + mlen)

	encrypt(c, e, pk);

	keccack_1024_hash(key, e, sizeof(e));
	salsa20_xor(ct, m, mlen, nonce, key);
	poly1315_auth(tag, ct, mlen, key + 32);

	*clen = SYND_BYTES + mlen + 16;

#undef ct
#undef tag

	return 0;
}

/**
The main decryption function
**/
int mcBits_decrypt(
       unsigned char *m,unsigned long long *mlen,
       const unsigned char *c,unsigned long long clen,
       const unsigned char *sk
)
{
	int ret;
	int ret_verify;
	int ret_decrypt;

	unsigned char key[64];
	unsigned char nonce[8] = {0};
	unsigned char e[ 1 << (GFBITS-3) ];

	//

	if (clen < SYND_BYTES + 16) return -1;
	else *mlen = clen - SYND_BYTES - 16;

#define	ct (c + SYND_BYTES)
#define	tag (ct + *mlen)

	ret_decrypt = decrypt(e, sk, c);

	keccack_1024_hash(key, e, sizeof(e));

	ret_verify = poly1315_auth_verify(tag, ct, *mlen, key + 32);
	salsa20_xor(m, ct, *mlen, nonce, key);

	ret = ret_verify | ret_decrypt;

#undef ct
#undef tag

	return ret;
}

/**
Generate key pair
**/
int mcBits_generate_keypair
(
       unsigned char *pk,
       unsigned char *sk
)
{
	while (1)
	{
		sk_gen(sk);


		if (pk_gen(pk, sk) == 0)
			break;
	}

	return 0;
}

