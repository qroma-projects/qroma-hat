#include "eink-screen.h"
#include "logo.h"
#include <qroma/qroma.h>
#include "../qroma-commands.h"
#include "../qroma-config.h"
#include "rotateHatImage.h"


HatImageData _activeImage = {
  .imageWidth = EINK_WIDTH,
  .imageHeight = EINK_HEIGHT,
  .imagePixels = NULL,
  // added 99 - 13 (strlen) of /0 chars for initialization
  .imageLabel = "IMAGE NOT SET\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
};


uint8_t * initActiveImageBuffer() {
  uint32_t bufferSize = (EINK_WIDTH * EINK_HEIGHT) / 2;
  uint8_t * buffer = (uint8_t*) calloc(bufferSize, sizeof(uint8_t)); // allocate memory, save address
  return buffer;
} 

void clearScreenToWhite() {
  logInfo("clearScreenToWhite()");
  
  epd_poweron();
  epd_clear();
  // epd_draw_grayscale_image(area, (uint8_t *)activeImage.imageData);
  // epd_draw_image(area, (uint8_t *)activeImage.imageData, BLACK_ON_WHITE);
  
  delay(500);
  
  epd_poweroff();
}


void clearScreenToBlack() {
  logInfo("clearScreenToBlack()");
  
  epd_poweron();

   Rect_t area = {
    .x = 230,
    .y = 20,
    .width = logo_width,
    .height = logo_height,
  };

  epd_draw_image(area, (uint8_t *)logo_data, BLACK_ON_WHITE);

  // epd_clear();
  // epd_draw_grayscale_image(area, (uint8_t *)activeImage.imageData);
  // epd_draw_image(area, (uint8_t *)activeImage.imageData, BLACK_ON_WHITE);
  
  delay(500);
  
  epd_poweroff();
}


void showImageFromFile(const char * filePath) {

}


bool showImageFromInternalDgsrData(HatImageEncoding encoding, HatImagePointer * imgPointer, HatImageData * hatImageData) {

// bool loadImageData(uint8_t imageIndex, HatImageData * hatImageData) {
  logInfo("showImageFromInternalDgsrData");

  // HatImageDef * hatImageDef = &(_hatImageDefinitions[imageIndex]);
  // logInfoInt((uint32_t)hatImageDef);
  // logInfoInt((uint32_t)hatImageDef->hatImageEncoding);

  switch (encoding) {
    case HIE_GS_BMP:
      mapGsBmpImageToHatData(imgPointer->gsBmpImage, hatImageData);
      break;
    case HIE_DGSR:
      mapDgsrImageToHatData(imgPointer->dgsrImage, hatImageData);
      break;
    default:
      logError("NO IMAGE ENCODING SET");
      // logErrorInt(imageIndex);
      return false;
  }

  Rect_t area = {
    .x = 0,
    .y = 0,
    .width = (int32_t)hatImageData->imageWidth,
    .height = (int32_t)hatImageData->imageHeight,
  };

  if (hatConfiguration.rotateImage) {
    rotateHatImage(hatImageData);
  }

  epd_poweron();
  epd_clear();
  epd_draw_grayscale_image(area, (uint8_t *)hatImageData->imagePixels);
  // epd_draw_image(area, (uint8_t *)activeImage.imageData, BLACK_ON_WHITE);
  
  delay(500);
  
  epd_poweroff();

  return true;
}

