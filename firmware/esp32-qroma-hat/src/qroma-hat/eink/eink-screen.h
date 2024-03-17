#ifndef EINK_SCREEN_H_INCLUDED
#define EINK_SCREEN_H_INCLUDED

#include <Arduino.h>
#include "epd_driver.h"
#include "esp_adc_cal.h"
#include "../images/gsBmpImageMapper.h"
#include "../images/dgsr/dgsrImageMapper.h"


const uint16_t EINK_WIDTH  = 960;
const uint16_t EINK_HEIGHT = 540;

const uint32_t LOADED_DGSR_IMAGE_BUFFER_SIZE = 100000;


void clearScreenToWhite();
void clearScreenToBlack();
void showExampleImage();
void showDefaultImage();

void showHatImageData(HatImageData * hatImageData);

bool showImageFromInternalDgsrData(HatImageEncoding encoding, HatImagePointer * imgPointer, HatImageData * hatImageData);
void showImageFromFile(const char * filePath);


#endif