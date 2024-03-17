#include "eink-screen.h"
#include "logo.h"
#include <qroma/qroma.h>
#include "../qroma-commands.h"
#include "../qroma-config.h"
#include "rotateHatImage.h"
#include "../images/dgsr/dgsrImageFileLoader.h"
#include "../images/dgsr/dgsrImageVars.h"
#include <qroma-hat/images/data/images_data.h>


void clearScreenToWhite() {
  logInfo("clearScreenToWhite()");
  
  epd_poweron();
  epd_clear();
  
  delay(500);
  
  epd_poweroff();
}


void showExampleImage() {
  logInfo("showExampleImage()");
  
  epd_poweron();

   Rect_t area = {
    .x = 230,
    .y = 20,
    .width = logo_width,
    .height = logo_height,
  };

  epd_draw_image(area, (uint8_t *)logo_data, BLACK_ON_WHITE);
  
  delay(500);
  
  epd_poweroff();
}


void clearScreenToBlack() {
  logInfo("clearScreenToBlack()");
  
  epd_poweron();

  Rect_t area = {
    .x = 0,
    .y = 0,
    .width = _activeImage.imageWidth,
    .height = _activeImage.imageHeight,
  };

  // set drawing area to "off" pixels
  uint32_t imageNibbleCount = (_activeImage.imageWidth * _activeImage.imageHeight) / 2;
  memset(_activeImage.imagePixels, 0x00, imageNibbleCount);
  
  epd_draw_image(area, (uint8_t *)(_activeImage.imagePixels), BLACK_ON_WHITE);
  
  delay(500);
  
  epd_poweroff();
}


void showDefaultImage() {
  HatImagePointer hatImagePointer = {
    .dgsrImage = &dgsr_image_qroma_hat_def,
  };
  showImageFromInternalDgsrData(HIE_DGSR, &hatImagePointer, &_activeImage);
}


void localLoadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid) {
  logInfo("localLoadFileIntoDgsrImage()");
}

void showImageFromFile(const char * filePath) {
  logInfo("showImageFromFile()");
  logInfo(filePath);

  char reasonInvalid[200];
  
  loadFileIntoDgsrImage(filePath, &_loadedDgsrImage, reasonInvalid);
  mapLoadedDgsrImageToHatData(&_loadedDgsrImage, filePath, &_activeImage);
  showHatImageData(&_activeImage);

  logInfo("DONE showImageFromFile()");
}


bool showImageFromInternalDgsrData(HatImageEncoding encoding, HatImagePointer * imgPointer, HatImageData * hatImageData) {
  logInfo("showImageFromInternalDgsrData");

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

  showHatImageData(hatImageData);

  return true;
}


void showHatImageData(HatImageData * hatImageData) {
  logInfo("START showHatImageData()");

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
  
  delay(500);
  
  epd_poweroff();

  logInfo("DONE showHatImageData()");
}
