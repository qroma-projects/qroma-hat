#include <qroma/qroma.h>
#include "dgsrImageMapper.h"
#include "dgsrImageOps.h"



void setHighNibbleValue(uint8_t * imageData, uint32_t byteIndex, uint8_t gsValue) {
  uint8_t byteToSet = imageData[byteIndex];
  byteToSet &= 0b00001111;
  byteToSet |= (gsValue << 4);
  imageData[byteIndex] = byteToSet;
}


void setLowNibbleValue(uint8_t * imageData, uint32_t byteIndex, uint8_t gsValue) {
  uint8_t byteToSet = imageData[byteIndex];
  byteToSet &= 0b11110000;
  byteToSet |= gsValue;
  imageData[byteIndex] = byteToSet;
}


void setNibbleValue(uint8_t * imageData, uint32_t nibbleIndex, uint8_t gsValue) {
  uint32_t byteIndex = nibbleIndex / 2;
  if (nibbleIndex % 2 == 0) {
    setHighNibbleValue(imageData, byteIndex, gsValue);
  } else {
    setLowNibbleValue(imageData, byteIndex, gsValue);
  }
}


void setImageNibbleValues(uint8_t * imageData, uint32_t nibbleStartIndex, uint8_t gsValue, uint32_t runLength) {

  uint32_t nibbleStart = nibbleStartIndex;
  uint32_t nibbleEnd = nibbleStartIndex + runLength;

  for (uint32_t i = nibbleStart; i < nibbleEnd; i++) {
    setNibbleValue(imageData, i, gsValue);
  }
}


bool mapDgsrImageToHatData(HatDgsrImageDef * dgsrImageDef, HatImageData * hatImageData) {
  logInfo("mapDgsrImageToHatData");
  
  if (dgsrImageDef->gsBitsPerPixel != 4) {
    logError("MUST HAVE 4 GS BITS PER PIXEL");
    logInfoIntWithDescription("VALUE WAS ", dgsrImageDef->gsBitsPerPixel);
    logInfo(dgsrImageDef->metadata.imageLabel);
    return false;
  }

  hatImageData->imageHeight = dgsrImageDef->imageHeight;
  hatImageData->imageWidth = dgsrImageDef->imageWidth;
  // hatImageData->imageLabel = dgsrImageDef->metadata.imageLabel;
  strncpy(hatImageData->imageLabel, dgsrImageDef->metadata.imageLabel, sizeof(hatImageData->imageLabel));

  logInfo("MAPPING DGSR IMAGE");
  logInfo(hatImageData->imageLabel);

  uint32_t nibbleIndex = 0;
  uint32_t nibbleArea = dgsrImageDef->imageHeight * dgsrImageDef->imageWidth;

  uint32_t dgsrDataByteIndex = 0;
  const uint8_t * currentDataPtr = dgsrImageDef->dgrsData;

  PixelRunResult pixelRunResult;

  while (dgsrDataByteIndex < dgsrImageDef->dgsrDataByteCount) {
    bool success = getPixelRunResult(currentDataPtr, &pixelRunResult);
    if (!success) {
      logError("PIXEL RUN RESULT ERROR");
      return false;
    }

    setImageNibbleValues(hatImageData->imagePixels, nibbleIndex, pixelRunResult.pixelGs, pixelRunResult.runLength);

    dgsrDataByteIndex += pixelRunResult.bytesConsumed;
    currentDataPtr += pixelRunResult.bytesConsumed;
    nibbleIndex += pixelRunResult.runLength;
  }

  logInfo("DONE mapDgsrImageToHatData");

  return true;
}


bool mapLoadedDgsrImageToHatData(LoadedDgsrImage * dgsrImage, const char * filePath, HatImageData * hatImageData) {
  logInfo("mapLoadedDgsrImageToHatData");
  
  hatImageData->imageHeight = dgsrImage->imageHeight;
  hatImageData->imageWidth = dgsrImage->imageWidth;
  strncpy(hatImageData->imageLabel, filePath, sizeof(hatImageData->imageLabel));

  logInfo("MAPPING DGSR IMAGE");
  logInfo(hatImageData->imageLabel);

  uint32_t nibbleIndex = 0;
  uint32_t nibbleArea = dgsrImage->imageHeight * dgsrImage->imageWidth;

  uint32_t dgsrDataByteIndex = 0;
  const uint8_t * currentDataPtr = dgsrImage->dgsrData;

  PixelRunResult pixelRunResult;
  uint8_t maxPixelGs = 0;

  while (dgsrDataByteIndex < dgsrImage->dgsrDataByteCount) {
    bool success = getPixelRunResult(currentDataPtr, &pixelRunResult);
    if (!success) {
      logError("PIXEL RUN RESULT ERROR");
      return false;
    }

    if (pixelRunResult.pixelGs > maxPixelGs) {
      maxPixelGs = pixelRunResult.pixelGs;
    }

    setImageNibbleValues(hatImageData->imagePixels, nibbleIndex, pixelRunResult.pixelGs, pixelRunResult.runLength);

    dgsrDataByteIndex += pixelRunResult.bytesConsumed;
    currentDataPtr += pixelRunResult.bytesConsumed;
    nibbleIndex += pixelRunResult.runLength;
  }
  
  if (maxPixelGs > 15) {
    logError("MAX OF 4 GS BITS PER PIXEL REQUIRED");
    logInfoIntWithDescription("MAX COUND VALUE WAS ", maxPixelGs);
    logInfo(filePath);
    return false;
  }

  logInfo("DONE mapDgsrImageToHatData");

  return true;
}

// bool mapDgsrDataToPixelData(MapDgsrDataInputs * inputs, MapDgsrDataOutputs * outputs) {
//   logInfo("mapDgsrDataToPixelData");
  
//   // hatImageData->imageHeight = dgsrImage->imageHeight;
//   // hatImageData->imageWidth = dgsrImage->imageWidth;
//   // strncpy(hatImageData->imageLabel, filePath, sizeof(hatImageData->imageLabel));

//   logInfo("MAPPING DGSR IMAGE");
//   logInfo(inputs->imageLabel);

//   uint32_t nibbleIndex = 0;
//   uint32_t nibbleArea = inputs->imageHeight *inputs->imageWidth;

//   uint32_t dgsrDataByteIndex = 0;
//   const uint8_t * currentDataPtr = inputs->dgsrData;

//   PixelRunResult pixelRunResult;
//   uint8_t maxPixelGs = 0;

//   while (dgsrDataByteIndex < inputs->dgsrDataByteCount) {
//     bool success = getPixelRunResult(currentDataPtr, &pixelRunResult);
//     if (!success) {
//       logError("PIXEL RUN RESULT ERROR");
//       return false;
//     }

//     if (pixelRunResult.pixelGs > maxPixelGs) {
//       maxPixelGs = pixelRunResult.pixelGs;
//     }

//     setImageNibbleValues(outputs->mappedImagePixels, nibbleIndex, pixelRunResult.pixelGs, pixelRunResult.runLength);

//     dgsrDataByteIndex += pixelRunResult.bytesConsumed;
//     currentDataPtr += pixelRunResult.bytesConsumed;
//     nibbleIndex += pixelRunResult.runLength;
//   }
  
//   if (maxPixelGs > 15) {
//     logError("MAX OF 4 GS BITS PER PIXEL REQUIRED");
//     logInfoIntWithDescription("MAX COUND VALUE WAS ", maxPixelGs);
//     logInfo(inputs->imageLabel);
//     return false;
//   }

//   logInfo("DONE mapDgsrDataToPixelData");

//   return true;
// }


bool getPixelRunResult(const uint8_t * dgsrData, PixelRunResult * prr) {
  const uint8_t firstByte = dgsrData[0];
  if (getDgsrOpType(firstByte) != DOT_PLACE_PIXEL) {
    return false;
  }

  prr->pixelGs = getPlacePixel(firstByte);

  const uint8_t secondByte = dgsrData[1];
  const DgsrOpType dgsrOpType = getDgsrOpType(secondByte);

  switch (dgsrOpType) {
    case DOT_SHORT_RUN:
      prr->runLength = getShortRunLength(secondByte);
      prr->bytesConsumed = 2;
      return true;
      break;
    case DOT_MEDIUM_RUN:
      prr->runLength = getMediumRunLength(secondByte, dgsrData[2]);
      prr->bytesConsumed = 3;
      return true;
      break;
    case DOT_LONG_RUN:
      prr->runLength = getLongRunLength(secondByte, dgsrData[2], dgsrData[3], dgsrData[4]);
      prr->bytesConsumed = 5;
      return true;
      break;
    default:
      return false;
  }
}
