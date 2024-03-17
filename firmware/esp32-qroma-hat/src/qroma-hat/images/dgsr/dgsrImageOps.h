
#ifndef DGSR_IMAGE_OPS_H_INCLUDED
#define DGSR_IMAGE_OPS_H_INCLUDED

#include "../image_types.h"


enum DgsrOpType {
  DOT_UNKNOWN     = 0,
  DOT_PLACE_PIXEL = 1,
  DOT_SHORT_RUN   = 2,
  DOT_MEDIUM_RUN  = 3,
  DOT_LONG_RUN    = 4,
};



DgsrOpType getDgsrOpType(const uint8_t dgsrByte);

uint32_t getPlacePixel(const uint8_t dgsrData);

uint8_t getShortRunLength(const uint8_t byte0);
uint16_t getMediumRunLength(const uint8_t byte0, const uint8_t byte1);
uint32_t getLongRunLength(const uint8_t byte0, const uint8_t byte1, const uint8_t byte2, const uint8_t byte3);


#endif
