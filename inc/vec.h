#include <stdint.h>

void vec_mul64_s(uint32_t *, uint32_t *, uint32_t *, uint32_t *, const uint32_t *, const uint32_t *);
void vec_mul32_s(uint32_t *, uint32_t *, const uint32_t *);
void vec_mul_s(uint32_t *, uint32_t *, const uint32_t *);
void vec_mul(uint32_t *, uint32_t *, uint32_t *, uint32_t *, const uint32_t *, const uint32_t *);
void vec_mul_split(uint32_t *, uint32_t *, const uint32_t *);
void vec_sq(uint32_t *, uint32_t *, uint32_t *,uint32_t *);
void vec_copy(uint32_t *, uint32_t *, const uint32_t *, const uint32_t *);
void vec_or(const uint32_t *, const uint32_t *, uint32_t * , uint32_t *);
void vec_inv(uint32_t *, uint32_t *, const uint32_t *, const uint32_t *);
