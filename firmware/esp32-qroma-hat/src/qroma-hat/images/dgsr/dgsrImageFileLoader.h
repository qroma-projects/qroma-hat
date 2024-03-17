#ifndef DGSR_IMAGE_FILE_LOADER_H_INCLUDED
#define DGSR_IMAGE_FILE_LOADER_H_INCLUDED

#include <qroma-hat/images/image_types.h>


bool loadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid);


#endif
