#include "qroma-config.h"
#include <qroma/util/fs.h>
#include <qroma/util/qroma-persist.h>


// UpdateConfiguration updateConfiguration = {
//   .updateType = UpdateType_UpdateType_None,
//   .updateIntervalInMs = 10000,
// };

HatConfiguration _hatConfiguration = {
  .rotateImage = true,
  .playbackSettings = {
    .mode = PlaybackMode_Pbm_ShowDefaultImage,
    .has_showSingleFileSettings = false,
    .has_dirSlideshowSettings = false,
    .dirSlideshowSettings = {
      .slideshowDirPath = "/dgsr\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
      .delayIntervalInMs = 1000 * 60 * 11,
    },
    .isSlideshowPaused = false,
    .randomSeed = 31337,
  },
};


void saveDefaultHatConfig() {
  if (!doesFileExist(QROMA_HAT_PROJECT_CONFIG_FILENAME)) {
    saveHatConfig(&_hatConfiguration);
  }
}


bool saveHatConfig(HatConfiguration * toSave) {
  bool saved = savePbToPersistence(toSave, QROMA_HAT_PROJECT_CONFIG_FILENAME, HatConfiguration_fields);
  if (!saved) {
    logError("ERROR SAVING qroma-hat PROJECT CONFIG");
  }

  return saved;
}


void updateAndSaveHatConfiguration(HatConfigurationFn configFn) {
  configFn(&_hatConfiguration);
  saveHatConfig(&_hatConfiguration);
}
