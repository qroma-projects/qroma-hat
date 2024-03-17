#ifndef EINK_SCREEN_H_INCLUDED
#define EINK_SCREEN_H_INCLUDED

#include <Arduino.h>
#include "epd_driver.h"
#include "esp_adc_cal.h"
#include "../images/gsBmpImageMapper.h"
#include "../images/dgsr/dgsrImageMapper.h"


const uint16_t EINK_WIDTH  = 960;
const uint16_t EINK_HEIGHT = 540;

extern HatImageData _activeImage;
uint8_t * initActiveImageBuffer();

void clearScreenToWhite();
void clearScreenToBlack();

bool showImageFromInternalDgsrData(HatImageEncoding encoding, HatImagePointer * imgPointer, HatImageData * hatImageData);


#endif