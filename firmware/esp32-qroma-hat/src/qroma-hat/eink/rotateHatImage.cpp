#include "rotateHatImage.h"

uint8_t swapLowAndHighNibbles(uint8_t myByte) {
  return ((myByte & 0x0F) << 4) | ((myByte & 0xF0) >> 4);
}

void rotateHatImage(HatImageData * imageData) {
  uint32_t imageMemSize = (imageData->imageWidth * imageData->imageHeight) / 2;

  uint8_t * firstImagePixel = imageData->imagePixels;
  uint8_t * lastImagePixel = imageData->imagePixels + (imageMemSize - 1);

  for (int i=0; i < imageMemSize / 2; i++) {
    uint8_t firstHalfPixelValue = firstImagePixel[i];
    uint8_t lastHalfPixelValue = lastImagePixel[-i];
    
    firstImagePixel[i] = swapLowAndHighNibbles(lastHalfPixelValue);
    lastImagePixel[-i] = swapLowAndHighNibbles(firstHalfPixelValue);
  }
}