
#include "dgsrImageOps.h"


DgsrOpType getDgsrOpType(const uint8_t dgsrByte) {
  uint8_t firstTwoBits = (dgsrByte & 0b11000000);

  if (firstTwoBits == 0) {
    return DOT_PLACE_PIXEL;
  }
  if (firstTwoBits == 0b01000000) {
    return DOT_SHORT_RUN;
  }
  if (firstTwoBits == 0b10000000) {
    return DOT_MEDIUM_RUN;
  }
  if (firstTwoBits == 0b11000000) {
    return DOT_LONG_RUN;
  }

  return DOT_UNKNOWN;
}

uint32_t getPlacePixel(const uint8_t dgsrData) {
  if ((dgsrData & 0b11000000) == 0) {
    return 0b00111111 & dgsrData;
  }
  return 0;
}

uint8_t getShortRunLength(const uint8_t byte0) {
  const uint8_t shortRunLength = 0b00111111 & byte0;
  return shortRunLength;
}

uint16_t getMediumRunLength(const uint8_t byte0, const uint8_t byte1) {
  const uint16_t mediumRunLength = ((0b00111111 & byte0) << 8) + byte1;
  return mediumRunLength;
}

uint32_t getLongRunLength(const uint8_t byte0, const uint8_t byte1, const uint8_t byte2, const uint8_t byte3) {
  const uint32_t longRunLength = ((0b00111111 & byte0) << 24) + 
                                 (byte1 << 16) + 
                                 (byte2 << 8) +
                                 byte3;
  return longRunLength;
}
