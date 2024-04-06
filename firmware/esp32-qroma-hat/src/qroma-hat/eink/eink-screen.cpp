#include "eink-screen.h"
#include "logo.h"
#include <qroma/qroma.h>
#include "../qroma-commands.h"
#include "../qroma-config.h"
#include "rotateHatImage.h"
#include "../images/dgsr/dgsrImageFileLoader.h"
#include "../images/dgsr/dgsrImageVars.h"
#include <qroma-hat/images/data/images_data.h>


void initScreen() {

  int vref = 1100;

  // Correct the ADC reference voltage
  esp_adc_cal_characteristics_t adc_chars;
#if defined(T5_47)
  esp_adc_cal_value_t val_type = esp_adc_cal_characterize(
      ADC_UNIT_1,
      ADC_ATTEN_DB_11,
      ADC_WIDTH_BIT_12,
      1100,
      &adc_chars
  );
#else
  esp_adc_cal_value_t val_type = esp_adc_cal_characterize(
      ADC_UNIT_2,
      ADC_ATTEN_DB_11,
      ADC_WIDTH_BIT_12,
      1100,
      &adc_chars
  );
#endif
  if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF) {
      Serial.printf("eFuse Vref: %umV\r\n", adc_chars.vref);
      vref = adc_chars.vref;
  }

#if defined(T5_47_PLUS)
  Wire.begin(TOUCH_SDA, TOUCH_SCL);
  rtc.begin();
  rtc.setDateTime(2022, 6, 30, 0, 0, 0);
#endif

  logInfo("PRE-EPDINIT");
  epd_init();
  logInfo("POST-EPDINIT");
}


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
    .dgsrImage = &dgsr_image_qroma_dev_def,
  };
  showImageFromInternalDgsrData(HIE_DGSR, &hatImagePointer, &_activeImage);
}


void localLoadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid) {
  logInfo("localLoadFileIntoDgsrImage()");
}


bool showImageFromFile(const char * filePath) {
  logInfo("showImageFromFile()");
  logInfo(filePath);

  char reasonInvalid[200];
  
  if (!loadFileIntoDgsrImage(filePath, &_loadedDgsrImage, reasonInvalid)) {
    return false;
  }

  if (!mapLoadedDgsrImageToHatData(&_loadedDgsrImage, filePath, &_activeImage)) {
    return false;
  }
  
  showHatImageData(&_activeImage);

  logInfo("DONE showImageFromFile()");

  return true;
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

  if (_hatConfiguration.rotateImage) {
    rotateHatImage(hatImageData);
  }

  epd_poweron();
  epd_clear();
  epd_draw_grayscale_image(area, (uint8_t *)hatImageData->imagePixels);
  
  delay(500);
  
  epd_poweroff();

  logInfo("DONE showHatImageData()");
}
