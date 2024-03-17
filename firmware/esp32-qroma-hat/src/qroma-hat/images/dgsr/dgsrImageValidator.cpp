#include "dgsrImageValidator.h"
#include "dgsrImageMapper.h"
#include "dgsrImageFileLoader.h"
#include <cstddef>
#include <qroma/qroma.h>


bool isValidDgsrFile(const char * filePath, HatImageData * hatImageData, char * reasonInvalid) {
  logInfo("STARTING isValidDgsrFile()");

  LoadedDgsrImage * loadedImage = new LoadedDgsrImage();

  bool loaded = loadFileIntoDgsrImage(filePath, loadedImage, reasonInvalid);

  if (!loaded) {
    logInfo("LOAD DGSR FILE FOR VALIDATION FAILED");
    delete loadedImage;
    return false;
  }

  logInfo("loaded complete");

  bool mapped = mapLoadedDgsrImageToHatData(loadedImage, filePath, hatImageData);
  logInfo("mapped complete");

  delete loadedImage;
  logInfo("ENDING isValidDgsrFile()");

  return mapped;
}
