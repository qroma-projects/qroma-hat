
#ifndef DGSR_IMAGE_MAPPER_H_INCLUDED
#define DGSR_IMAGE_MAPPER_H_INCLUDED

#include "dgsrImageOps.h"
#include "stddef.h"


typedef struct _PixelRunResult {
  uint8_t pixelGs;
  uint32_t runLength;
  uint8_t bytesConsumed;
} PixelRunResult;


typedef struct _MapDgsrDataInputs {
  uint32_t imageWidth;
  uint32_t imageHeight;
  const char * imageLabel;

  uint8_t * dgsrData;
  size_t dgsrDataByteCount;
} MapDgsrDataInputs;


typedef struct _MapDgsrDataOutputs {
  bool mapSuccess;
  uint8_t * mappedImagePixels;
  uint8_t maxPixelGs;
  uint32_t pixelRunCount;

} MapDgsrDataOutputs;



bool getPixelRunResult(const uint8_t * dgsrData, PixelRunResult * prr);

bool mapDgsrImageToHatData(HatDgsrImageDef * dgsrImageDef, HatImageData * hatImageData);

bool mapLoadedDgsrImageToHatData(LoadedDgsrImage * dgsrImage, const char * filePath, HatImageData * hatImageData);

// bool mapDgsrDataToPixelData(MapDgsrDataInputs * inputs, MapDgsrDataOutputs * outputs);

#endif
