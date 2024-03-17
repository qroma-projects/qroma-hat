#ifndef DGSR_IMAGE_FILE_LOADER_H_INCLUDED
#define DGSR_IMAGE_FILE_LOADER_H_INCLUDED

#include <qroma-hat/images/image_types.h>


// typedef struct _ReadDgsrDataInputs {
//   uint32_t imageWidth;
//   uint32_t imageHeight;
//   const char * imageLabel;

//   File * fileReadyToReadDgsrBytes;
//   uint8_t * dgsrDataBuffer;
//   size_t dgsrDataByteCount;
// } ReadDgsrDataInputs;


// typedef struct _ReadDgsrDataOutputs {
//   bool mapSuccess;
//   uint8_t * mappedImagePixels;
//   uint8_t maxPixelGs;
//   uint32_t pixelRunCount;

// } ReadDgsrDataOutputs;


bool loadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid);
// bool doFileReadDgsrBytes(LoadedDgsrImage * dgsrImage, ReadDgsrDataInputs * inputs, ReadDgsrDataOutputs * outputs);


#endif
