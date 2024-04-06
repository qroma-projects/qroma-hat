#include "playback.h"
#include "../qroma-config.h"
#include "qroma/qroma.h"
#include "../eink/eink-screen.h"
#include <LittleFS.h>
#include <fs.h>


ActivePlaybackConfig _activePlaybackConfig;


void playbackStartupImage() {
  if (_hatConfiguration.playbackSettings.mode == PlaybackMode_Pbm_ShowDefaultImage) {
    showDefaultImage();
    return;
  }

  if (_hatConfiguration.playbackSettings.mode == PlaybackMode_Pbm_ShowSingleFile) {
    bool success = playbackImageFromFile(&(_hatConfiguration.playbackSettings.showSingleFileSettings));
    if (!success) {
      playbackDefaultImage();
    }
    return;
  }

  if (_hatConfiguration.playbackSettings.mode == PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow) {
    bool success = startDirSlideshowPlayback(&(_hatConfiguration.playbackSettings.dirSlideshowSettings));
    if (!success) {
      playbackDefaultImage();
    }
    return;
  }

  logError("UNEXPECTED PLAYBACK MODE DURING STARTUP");
  logError(_hatConfiguration.playbackSettings.mode);
}


void playbackDefaultImage() {
  _hatConfiguration.playbackSettings.mode = PlaybackMode_Pbm_ShowDefaultImage;
  showDefaultImage();
}


bool playbackImageFromFile(PlaybackSettings_ShowSingleFile * playback) {
  bool success = showImageFromFile(playback->imagePath);

  if (success) {
    updateAndSaveHatConfiguration([playback](HatConfiguration * config) {
      config->playbackSettings.mode = PlaybackMode_Pbm_ShowSingleFile;
      config->has_playbackSettings = true;
      config->playbackSettings.has_showSingleFileSettings = true;
      strncpy(config->playbackSettings.showSingleFileSettings.imagePath,
        playback->imagePath,
        sizeof(config->playbackSettings.showSingleFileSettings.imagePath));
      strncpy(config->activeImagePath,
        playback->imagePath,
        sizeof(config->activeImagePath));
    });

    strncpy(_activePlaybackConfig.currentImagePath, playback->imagePath, sizeof(_activePlaybackConfig.currentImagePath));
  }
  return success;
}


bool startDirSlideshowPlayback(PlaybackSettings_UseDirectoryForRandomFileSlideshow * playback) {
  logInfo("startDirSlideshowPlayback()");
  bool success = playbackNextImageFromDir(playback->slideshowDirPath);
  if (success) {
    updateAndSaveHatConfiguration([playback](HatConfiguration * config) {
      config->playbackSettings.mode = PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow;
      config->has_playbackSettings = true;
      config->playbackSettings.has_dirSlideshowSettings = true;
      config->playbackSettings.dirSlideshowSettings.delayIntervalInMs = playback->delayIntervalInMs;
      strncpy(config->playbackSettings.dirSlideshowSettings.slideshowDirPath,
        playback->slideshowDirPath,
        sizeof(config->playbackSettings.dirSlideshowSettings.slideshowDirPath));
    });
  }
  return success;
}


bool playbackNextImageFromDir(const char * imageDir) {
  
  // we're going to assume all DGSR files in imageDir
  uint32_t fileCount = getFileCountForDirectory(imageDir);
  if (fileCount == 0) {
    return false;
  }

  int randomIndex = random(fileCount);
  logInfoUintWithDescription("FILE COUNT - ", fileCount);
  logInfoUintWithDescription("SHOW FILE INDEX - ", randomIndex);

  File dir = LittleFS.open(imageDir);
  
  uint32_t fileIndex = 0;
  File file = dir.openNextFile();

  // we're going to assume all DGSR files
  while (file) {
    if (fileIndex == randomIndex) {
      bool success = showImageFromFile(file.path());
      if (!success) {
        showDefaultImage();
        return false;
      }
      _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish = millis();
      strncpy(_activePlaybackConfig.currentImagePath, file.path(), sizeof(_activePlaybackConfig.currentImagePath));
      return true;
    }

    if (!file.isDirectory()) {
      fileIndex++;
    }
    file = dir.openNextFile();
  }

  return false;
}


void playbackWhiteScreen() {
  _hatConfiguration.playbackSettings.mode = PlaybackMode_Pbm_ShowWhiteScreen;
  clearScreenToWhite();
}


void playbackBlackScreen() {
  _hatConfiguration.playbackSettings.mode = PlaybackMode_Pbm_ShowBlackScreen;
  clearScreenToBlack();
}


void initPlayback() {
  if (!_hatConfiguration.playbackSettings.has_dirSlideshowSettings) {
    logError("NO SLIDE SHOW SETTINGS AVAILABLE. COULD NOT RUN PLAYBACK INIT");
  }

  // _activePlaybackConfig.timeRemainingUntilNextAdvanceInMs =
  //   _hatConfiguration.playbackSettings.dirSlideshowSettings.delayIntervalInMs;

  _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish = millis();

  // update/save random seed so there are different random values for playback on each startup
  randomSeed(_hatConfiguration.playbackSettings.randomSeed);
  uint32_t newRandomSeed = random(999999999);
  while (newRandomSeed == 0) {
    newRandomSeed = random(999999999);
  }

  updateAndSaveHatConfiguration([newRandomSeed](HatConfiguration * config) {
    config->playbackSettings.randomSeed = newRandomSeed;
  });

  playbackStartupImage();
}


void advancePlayback() {
  if (_hatConfiguration.playbackSettings.mode != PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow) {
    logInfoUintWithDescription("CAN'T ADVANCE PLAYBACK. INVALID MODE: ", _hatConfiguration.playbackSettings.mode);
  }

  uint32_t now = millis();
  uint32_t msSinceLastAdvance = now - _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish;

  if (msSinceLastAdvance < 100) {
    logInfoUintWithDescription("CAN'T ADVANCE PLAYBACK. CHANGED TOO RECENTLY: ", msSinceLastAdvance);
    return;
  }

  playbackNextImageFromDir(_hatConfiguration.playbackSettings.dirSlideshowSettings.slideshowDirPath);

  _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish = millis();

  logInfo("ADVANCE PLAYBACK COMPLETE");
}


void userPausePlayback() {
  if (_hatConfiguration.playbackSettings.mode != PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow) {
    logInfoUintWithDescription("CAN'T PAUSE PLAYBACK. INVALID MODE: ", _hatConfiguration.playbackSettings.mode);
  }

  _hatConfiguration.playbackSettings.isSlideshowPaused = true;

  logInfo("USER PAUSE PLAYBACK");
}


void userUnpausePlayback() {
  if (_hatConfiguration.playbackSettings.mode != PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow) {
    logInfoUintWithDescription("CAN'T UNPAUSE PLAYBACK. INVALID MODE: ", _hatConfiguration.playbackSettings.mode);
  }

  _hatConfiguration.playbackSettings.isSlideshowPaused = false;
  _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish = millis();

  logInfo("USER UNPAUSE PLAYBACK");
}


void tickPlayback() {
  if (_hatConfiguration.playbackSettings.mode != PlaybackMode_Pbm_UseDirectoryForRandomFileSlideshow) {
    return;
  }

  if (_hatConfiguration.playbackSettings.isSlideshowPaused) {
    return;
  }

  uint32_t nextAdvanceTimeInMs = _activePlaybackConfig.momentOfLastAdvanceOrPauseFinish +
    // _activePlaybackConfig.timeRemainingUntilNextAdvanceInMs;
    _hatConfiguration.playbackSettings.dirSlideshowSettings.delayIntervalInMs;

  if (millis() < nextAdvanceTimeInMs) {
    return;
  }

  advancePlayback();
}
