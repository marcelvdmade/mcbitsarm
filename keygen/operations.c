#include "sk_gen.h"
#include "pk_gen.h"

#include "params.h"

/**
Generate key pair
**/
int crypto_encrypt_keypair
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

