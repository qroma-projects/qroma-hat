
#ifndef DGSR_IMAGE_VARS_H_INCLUDED
#define DGSR_IMAGE_VARS_H_INCLUDED

#include "../image_types.h"


extern HatImageData _activeImage;
bool initActiveImageBuffer(uint32_t width, uint32_t height, const char * imageLabel);

extern LoadedDgsrImage _loadedDgsrImage;
bool initLoadedDgsrImageBuffer(uint32_t maxFileSize);

#endif
