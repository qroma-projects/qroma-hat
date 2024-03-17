#include <string.h>
#include "qroma/qroma.h"
#include "gsBmpImageMapper.h"

bool mapGsBmpImageToHatData(HatGsBmpImageDef * gsBmpImageDef, HatImageData * hatImageData) {
  logInfo("mapGsBmpImageToHatData");

  hatImageData->imageHeight = gsBmpImageDef->imageHeight;
  hatImageData->imageWidth = gsBmpImageDef->imageWidth;
  // hatImageData->imageLabel = gsBmpImageDef->imageLabel;
  strncpy(hatImageData->imageLabel, gsBmpImageDef->imageLabel, sizeof(hatImageData->imageLabel));

  uint32_t imageMemSize = (gsBmpImageDef->imageWidth * gsBmpImageDef->imageHeight) / 2;

  memcpy(hatImageData->imagePixels, gsBmpImageDef->imageData, imageMemSize);

  return true;
}
