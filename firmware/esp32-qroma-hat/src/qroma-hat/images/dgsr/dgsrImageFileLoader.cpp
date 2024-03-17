#include "dgsrImageFileLoader.h"
#include <qroma/util/logger.h>
#include <LittleFS.h>
#include <qroma/util/fs.h>
#include <qroma/util/bitstuff.h>
#include "dgsrImageValidator.h"
#include "dgsrImageMapper.h"


bool loadFileIntoDgsrImage(const char * filePath, LoadedDgsrImage * imageToLoad, char * reasonInvalid) {

  logInfo("LOADING DGSR FILE");
  logInfo(filePath);

  // validate image is on file system
  if (!doesFileExist(filePath)) {
    logError("File does not exist");
    logError(filePath);
    return false;
  }

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

  if (expectedDgsrByteCount >= imageToLoad->maxAllowedDgsrDataByteCount) {
    logError("File too large. Too many DGSR bytes");
    logInfoIntWithDescription("Can't handle more than ", imageToLoad->maxAllowedDgsrDataByteCount);
    return false;
  }

  size_t i = 0;
  while (i < expectedDgsrByteCount) {
    uint8_t nextByte = file.read();
    imageToLoad->dgsrFileData[i] = nextByte;
    i++;
  }

  logInfoIntWithDescription("DONE READING DGSR BYTES ", i);
  imageToLoad->dgsrDataByteCount = expectedDgsrByteCount;
  strncpy(imageToLoad->sourceFile, filePath, sizeof(imageToLoad->sourceFile));
  
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
    
    return false;
  }

  return true;
}
