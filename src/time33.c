#include "time33.h"

inline uint32_t time33(const char *arKey, uint16_t nKeyLength)
{
    uint32_t hash = 5381;
 
     /* variant with the hash unrolled eight times */
     for (; nKeyLength >= 8; nKeyLength -= 8) {
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
          hash = ((hash << 5) + hash) + *arKey++;
     }
     switch (nKeyLength) {
          case 7: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 6: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 5: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 4: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 3: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 2: hash = ((hash << 5) + hash) + *arKey++; /* fallthrough... */
          case 1: hash = ((hash << 5) + hash) + *arKey++; break;
          case 0: break;
     }
     return hash;
}
