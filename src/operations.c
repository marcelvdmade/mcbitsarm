#include "operations.h"
#include "keccack1024.h"
#include "salsa.h"
#include "poly1305_auth.h"
#include "poly1305_verify.h"
#include "api.h"
#include "sk_gen.h"
#include "pk_gen.h"
#include "cyclecount.h"

#include "params.h"
#include "encrypt.h"
#include "decrypt.h"


//The main encryption function
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


//The main decryption function
int mcBits_decrypt(
       unsigned char *m,unsigned long long *mlen,
       const unsigned char *c,unsigned long long clen,
       const unsigned char *sk
)
{
	int ret;
	int ret_verify;
	int ret_decrypt;
	unsigned int oldcount;

	unsigned char key[64];
	unsigned char nonce[8] = {0};
	unsigned char e[ 1 << (GFBITS-3) ];

	//

	if (clen < SYND_BYTES + 16) return -1;
	else *mlen = clen - SYND_BYTES - 16;

#define	ct (c + SYND_BYTES)
#define	tag (ct + *mlen)

	//measure decrypt
    oldcount = setup_clock_measurement();
    ret_decrypt = decrypt(e, sk, c);
    send_clock_measurement(oldcount, "decrypt:     ");
	
    //measure keccack
    oldcount = setup_clock_measurement();
	keccack_1024_hash(key, e, sizeof(e));
	send_clock_measurement(oldcount, "keccack_1024: ");

    //measure poly1315
     oldcount = setup_clock_measurement();
	ret_verify = poly1315_auth_verify(tag, ct, *mlen, key + 32);
	send_clock_measurement(oldcount, "poly1315:     ");

    //measure salsa20_xor
    oldcount = setup_clock_measurement();
	salsa20_xor(m, ct, *mlen, nonce, key);
	send_clock_measurement(oldcount, "salsa20_xor:  ");

	ret = ret_verify | ret_decrypt;

#undef ct
#undef tag

	return ret;
}


//Generate key pair
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

