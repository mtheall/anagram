#ifndef DECOMPRESS_H
#define DECOMPRESS_H

#include <feos.h>

#ifdef __cplusplus
extern "C" {
#endif

void LZ77_Decompress(const void* in, void* out);

#ifdef __cplusplus
}
#endif

static inline void decompress(const void *src, void *dst) {
  int size;
  byte_t *tmp;

  memcpy(&size, src, sizeof(size));
  size >>= 8;

  tmp = new byte_t[size];
  LZ77_Decompress(src, tmp);
  DC_FlushRange(tmp, size);
  dmaCopy(tmp, dst, size);
  delete [] tmp;
}

#endif /* DECOMPRESS_H */

