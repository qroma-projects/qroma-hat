#include "qroma-config.h"
#include <qroma/util/fs.h>
#include <qroma/util/qroma-persist.h>


UpdateConfiguration updateConfiguration = {
  .updateType = UpdateType_UpdateType_None,
  .updateIntervalInMs = 10000,
};

HatConfiguration hatConfiguration = {
  { .imageFile = "" },
  .rotateImage = true,
};


void saveDefaultConfigs() {
  if (!doesFileExist(QROMA_HAT_UPDATES_CONFIG_FILENAME)) {
    bool saved = savePbToPersistence(&updateConfiguration, QROMA_HAT_UPDATES_CONFIG_FILENAME, UpdateConfiguration_fields);
    if (!saved) {
      logError("ERROR SAVING qroma-hat UPDATES CONFIG");
    }
  }

  if (!doesFileExist(QROMA_HAT_PROJECT_CONFIG_FILENAME)) {
    saveHatConfig(&hatConfiguration);
  }
}


bool saveHatConfig(HatConfiguration * toSave) {
  bool saved = savePbToPersistence(toSave, QROMA_HAT_PROJECT_CONFIG_FILENAME, UpdateConfiguration_fields);
  if (!saved) {
    logError("ERROR SAVING qroma-hat PROJECT CONFIG");
  }

  return saved;
}
