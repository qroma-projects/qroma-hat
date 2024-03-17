#include "dgsrImageFileLoader.h"
#include <qroma/util/logger.h>
#include <LittleFS.h>
#include <qroma/util/fs.h>
#include <qroma/util/bitstuff.h>
#include "dgsrImageValidator.h"
#include "dgsrImageMapper.h"


bool loadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid) {

  // validate image is on file system
  if (!doesFileExist(filePath)) {
    logError("File does not exist");
    logError(filePath);
    return false;
  }

  logInfo("LOADING DGSR FILE");
  logInfo(filePath);

  strncpy(imageToLoad->sourceFile, filePath, sizeof(imageToLoad->sourceFile));

  File file = LittleFS.open(filePath);

  size_t fileSize = file.size();

  logInfoIntWithDescription("FILE SIZE >> ", fileSize);  

  uint8_t magicBytes[4];
  if (file.read(magicBytes, 4) != 4) {
    logError("ERROR READING MAGIC BYTES");
    return false;
  }

  if (magicBytes[0] != 'd' || 
      magicBytes[1] != 'g' ||
      magicBytes[2] != 's' ||
      magicBytes[3] != 'r')
  {
    logError("INVALID MAGIC BYTES");
    return false;
  }

  uint32_t toReadU32;

  if (file.read((uint8_t*)&toReadU32, sizeof(toReadU32)) != sizeof(toReadU32)) {
    logError("Error reading width from file");
    return false;
  }
  imageToLoad->imageWidth = swapEndianness(toReadU32);

  uint32_t height;
  if (file.read((uint8_t*)&toReadU32, sizeof(toReadU32)) != sizeof(toReadU32)) {
    logError("Error reading height from file");
    return false;
  }
  imageToLoad->imageHeight = swapEndianness(toReadU32);

  logInfoIntWithDescription(" WIDTH  >> ", imageToLoad->imageWidth);
  logInfoIntWithDescription(" HEIGHT >> ", imageToLoad->imageHeight);

  size_t expectedDgsrByteCount = fileSize - 
    MAGIC_BYTES_COUNT - 
    sizeof(uint32_t) -  // width field
    sizeof(uint32_t) -  // height field
    FINAL_BYTES_COUNT;

  logInfoIntWithDescription("EXPECTING DGSR BYTES >> ", expectedDgsrByteCount);

  if (expectedDgsrByteCount >= sizeof(imageToLoad->dgsrData)) {
    logError("File too large. Too many DGSR bytes");
    logInfoIntWithDescription("Can't handle more than ", sizeof(imageToLoad->dgsrData));
    return false;
  }

  size_t i = 0;
  while (i < expectedDgsrByteCount) {
    uint8_t nextByte = file.read();
    // if (i < 10) {
    //   logInfoIntWithDescription("DGSR BYTE - ", nextByte);
    // }

    logInfoIntWithDescription("+", nextByte);

    imageToLoad->dgsrData[i] = nextByte;
    i++;
  }

  logInfoIntWithDescription("DONE READING DGSR BYTES ", i);


  // MapDgsrDataInputs inputs;
  // inputs.imageWidth = imageToLoad->imageWidth;
  // inputs.imageHeight = imageToLoad->imageHeight;
  // inputs.imageLabel = filePath;
  // inputs.dgsrData = imageToLoad->dgsrData;
  // inputs.dgsrDataByteCount = expectedDgsrByteCount;

  // MapDgsrDataOutputs outputs;

  // bool readDgsrSuccess = mapDgsrDataToPixelData(&inputs, &outputs);
  // if (!readDgsrSuccess) {
  //   logError("Error reading DGSR data");
  //   return false;
  // }


  // ReadDgsrDataInputs inputs;
  // inputs.imageWidth = imageToLoad->imageWidth;
  // inputs.imageHeight = imageToLoad->imageHeight;
  // inputs.imageLabel = filePath;
  // inputs.fileReadyToReadDgsrBytes = &file;
  // inputs.dgsrDataBuffer = imageToLoad->dgsrData;
  // inputs.dgsrDataByteCount = expectedDgsrByteCount;

  // ReadDgsrDataOutputs outputs;

  // bool readDgsrSuccess = doFileReadDgsrBytesIntoGrayscaleBuffer(imageToLoad, &inputs, &outputs);
  // if (!readDgsrSuccess) {
  //   logError("Error reading DGSR data");
  //   return false;
  // }

  // logInfoIntWithDescription("PIXEL RUN COUNT", outputs.pixelRunCount);
  // logInfoIntWithDescription("MAX GRAYSCALE", outputs.maxPixelGs);

  // if (outputs.maxPixelGs > 15) {
  //   logError("MAX OF 4 GS BITS PER PIXEL REQUIRED");
  //   logInfoIntWithDescription("MAX COUND VALUE WAS ", outputs.maxPixelGs);
  //   logInfo(filePath);
  //   return false;
  // }

  // imageToLoad->maxPixelGs = outputs.maxPixelGs;
  
  uint8_t finalBytes[FINAL_BYTES_COUNT];
  i = 0;
  while (i < FINAL_BYTES_COUNT) {
    uint8_t nextByte = file.read();
    if (i < 10) {
      logInfoIntWithDescription("FINAL BYTE - ", nextByte);
    }
    finalBytes[i] = nextByte;
    i++;
  }

  // if (file.read((uint8_t*)finalBytes, sizeof(finalBytes)) != sizeof(finalBytes)) {
  //   logError("Error reading final bytes from file");
  //   return false;
  // }

  if (finalBytes[0] != 0x00 || 
      finalBytes[1] != 0x00 ||
      finalBytes[2] != 0x00 ||
      finalBytes[3] != 0x00 ||
      finalBytes[4] != 0x00 ||
      finalBytes[5] != 0x00 ||
      finalBytes[6] != 0x00 ||
      finalBytes[7] != 0x01)
  {
    logError("INVALID FINAL BYTES");
    logInfoIntWithDescription("  1 >> ", finalBytes[0]);
    logInfoIntWithDescription("  2 >> ", finalBytes[1]);
    logInfoIntWithDescription("  3 >> ", finalBytes[2]);
    logInfoIntWithDescription("  4 >> ", finalBytes[3]);
    logInfoIntWithDescription("  5 >> ", finalBytes[4]);
    logInfoIntWithDescription("  6 >> ", finalBytes[5]);
    logInfoIntWithDescription("  7 >> ", finalBytes[6]);
    logInfoIntWithDescription("  8 >> ", finalBytes[7]);
    
    // return false;
  }

  return true;
}


// bool doFileReadDgsrBytesIntoGrayscaleBuffer(LoadedDgsrImage * dgsrImage, ReadDgsrDataInputs * inputs, ReadDgsrDataOutputs * outputs) {

//   File file = *(inputs->fileReadyToReadDgsrBytes);
  

//   uint8_t nextByte = file.read();


//   // file.peek

//   // size_t numBytesRead = file.read(imageToLoad->dgsrData, expectedDgsrByteCount);
//   // logInfoIntWithDescription("READ DGSR BYTES >> ", numBytesRead);
//   // logInfo("READ DGSR BYTES");
//   // logInfo(numBytesRead);

//   // if (numBytesRead != expectedDgsrByteCount) {
//   //   logError("Error reading DGSR bytes from file");
//   //   logError(numBytesRead);
//   //   logError(expectedDgsrByteCount);
//   //   return false;
//   // }

//   // MapDgsrDataInputs inputs = {
//   //   .imageWidth = imageToLoad->imageWidth,
//   //   .imageHeight = imageToLoad->imageHeight,
//   //   .imageLabel = filePath,
//   //   .dgsrData = imageToLoad->dgsrData,
//   //   // .dgsrDataByteCount = imageToLoad->dgsrDataByteCount,
//   //   .dgsrDataByteCount = expectedDgsrByteCount,
//   // };

// }



// bool mapDgsrDataToPixelData(MapDgsrDataInputs * inputs, MapDgsrDataOutputs * outputs) {

// // }
// // bool mapDgsrDataToPixelData(uint8_t * dgsrData, const char * filePath, HatImageData * hatImageData) {
//   outputs->mapSuccess = false;

//   logInfo("mapDgsrDataToPixelData");
  
//   // hatImageData->imageHeight = dgsrImage->imageHeight;
//   // hatImageData->imageWidth = dgsrImage->imageWidth;
//   // strncpy(hatImageData->imageLabel, filePath, sizeof(hatImageData->imageLabel));

//   logInfo("MAPPING DGSR IMAGE");
//   logInfo(inputs->imageLabel);

//   uint32_t nibbleIndex = 0;
//   uint32_t nibbleArea = inputs->imageHeight * inputs->imageWidth;

//   uint32_t dgsrDataByteIndex = 0;
//   const uint8_t * currentDataPtr = inputs->dgsrData;

//   PixelRunResult pixelRunResult;
//   uint8_t maxPixelGs = 0;
//   uint32_t pixelRunCount = 0;

//   while (dgsrDataByteIndex < inputs->dgsrDataByteCount) {
//     bool success = getPixelRunResult(currentDataPtr, &pixelRunResult);
//     if (!success) {
//       logError("PIXEL RUN RESULT ERROR");
//       return false;
//     }

//     if (pixelRunResult.pixelGs > maxPixelGs) {
//       maxPixelGs = pixelRunResult.pixelGs;
//     }

//     setImageNibbleValues(outputs->mappedImagePixels, nibbleIndex, pixelRunResult.pixelGs, pixelRunResult.runLength);

//     dgsrDataByteIndex += pixelRunResult.bytesConsumed;
//     currentDataPtr += pixelRunResult.bytesConsumed;
//     nibbleIndex += pixelRunResult.runLength;
//     pixelRunCount++;
//   }

//   outputs->maxPixelGs = maxPixelGs;
//   outputs->pixelRunCount = pixelRunCount;
//   logInfoIntWithDescription("NUM BYTES CONSUMED >> ", pixelRunResult.bytesConsumed);
  
//   // if (maxPixelGs > 15) {
//   //   logError("MAX OF 4 GS BITS PER PIXEL REQUIRED");
//   //   logInfoIntWithDescription("MAX COUND VALUE WAS ", maxPixelGs);
//   //   logInfo(filePath);
//   //   return false;
//   // }

//   logInfo("DONE mapDgsrDataToPixelData");

//   outputs->mapSuccess = true;
//   return true;
// }