#include "dgsrImageValidator.h"
#include "dgsrImageMapper.h"
#include "dgsrImageFileLoader.h"
#include "dgsrImageVars.h"
#include <cstddef>
#include <qroma/qroma.h>


bool isValidDgsrFile(const char * filePath, char * reasonInvalid) {
  logInfo("STARTING isValidDgsrFile()");

  bool loaded = loadFileIntoDgsrImage(filePath, &_loadedDgsrImage, reasonInvalid);

  if (!loaded) {
    logInfo("LOAD DGSR FILE FOR VALIDATION FAILED");
    return false;
  }

  logInfo("loaded complete");

  bool mapped = mapLoadedDgsrImageToHatData(&_loadedDgsrImage, filePath, &_activeImage);
  logInfo("mapped complete");

  logInfo("ENDING isValidDgsrFile()");

  return mapped;
}
