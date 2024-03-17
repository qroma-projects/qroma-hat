
#ifndef DGSR_IMAGE_VALIDATOR_H_INCLUDED
#define DGSR_IMAGE_VALIDATOR_H_INCLUDED

#include "../image_types.h"


bool isValidDgsrFile(const char * filePath, HatImageData * hatImageData, char * reasonInvalid);

#endif
