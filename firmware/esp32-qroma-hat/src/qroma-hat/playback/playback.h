#ifndef PLAYBACK_H_INCLUDED
#define PLAYBACK_H_INCLUDED

#include <stdint.h>
#include <qroma-proto/my-project-messages.pb.h>


typedef struct _ActivePlaybackConfig { 
  // uint32_t timeRemainingUntilNextAdvanceInMs;
  uint32_t momentOfLastAdvanceOrPauseFinish;
  char currentImagePath[40];

} ActivePlaybackConfig;


void initPlayback();
void advancePlayback();

void playbackStartupImage();
void playbackDefaultImage();
void playbackWhiteScreen();
void playbackBlackScreen();

bool playbackImageFromFile(PlaybackSettings_ShowSingleFile * playback);
bool startDirSlideshowPlayback(PlaybackSettings_UseDirectoryForRandomFileSlideshow * playback);
bool playbackNextImageFromDir(const char * imageDir);

void userPausePlayback();
void userUnpausePlayback();

void tickPlayback();

#endif
