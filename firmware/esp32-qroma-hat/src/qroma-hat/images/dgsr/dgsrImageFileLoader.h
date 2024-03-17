#ifndef DGSR_IMAGE_FILE_LOADER_H_INCLUDED
#define DGSR_IMAGE_FILE_LOADER_H_INCLUDED

#include <qroma-hat/images/image_types.h>


const uint32_t LOADED_DGSR_IMAGE_BUFFER_SIZE = 100000;


bool loadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid);


#endif
