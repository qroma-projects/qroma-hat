#include "dgsrImageVars.h"
#include <malloc.h>
#include <string.h>


HatImageData _activeImage = {
  .isInitialized = false,
};

LoadedDgsrImage _loadedDgsrImage = {
  .isInitialized = false,
  .maxAllowedDgsrDataByteCount = 0,
};



bool initActiveImageBuffer(uint32_t width, uint32_t height, const char * imageLabel) {
  uint32_t bufferSize = (width * height) / 2;
  uint8_t * buffer = (uint8_t*) calloc(bufferSize, sizeof(uint8_t)); // allocate memory, save address
  if (buffer == NULL) {
    return false;
  }

  _activeImage.imageWidth = width;
  _activeImage.imageHeight = height;
  _activeImage.imagePixels = buffer;
  strncpy(_activeImage.imageLabel, imageLabel, sizeof(_activeImage.imageLabel));
  _activeImage.isInitialized = true;

  return true;
}


bool initLoadedDgsrImageBuffer(uint32_t maxFileSize) {
  uint8_t * buffer = (uint8_t*) calloc(maxFileSize, sizeof(uint8_t)); // allocate memory, save address
  if (buffer == NULL) {
    return false;
  }

  _loadedDgsrImage.maxAllowedDgsrDataByteCount = maxFileSize;
  _loadedDgsrImage.dgsrFileData = buffer;
  strncpy(_loadedDgsrImage.sourceFile, "no file loaded yet", sizeof(_loadedDgsrImage.sourceFile));
  _loadedDgsrImage.isInitialized = true;

  return true;
}
