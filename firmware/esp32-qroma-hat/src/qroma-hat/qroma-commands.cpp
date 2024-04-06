#include <Esp.h>
#include <fs.h>
#include "qroma-commands.h"
#include "qroma-config.h"
#include "qroma/qroma.h"
#include "qroma-project.h"
#include "eink/eink-screen.h"
#include "lib_version.h"
#include "images/dgsr/dgsrImageValidator.h"
#include "playback/playback.h"


void handleNoArgCommand(NoArgCommands noArgCommand, MyProjectResponse * response) {
  switch (noArgCommand) {
    case NoArgCommands_Nac_NotSet:
      logError("NoArgCommand not set");
      break;

    case NoArgCommands_Nac_ClearScreenToWhite:
      playbackWhiteScreen();
      break;

    case NoArgCommands_Nac_ClearScreenToBlack:
      playbackBlackScreen();
      break;

    case NoArgCommands_Nac_ShowDefaultImage:
      playbackDefaultImage();
      break;

    case NoArgCommands_Nac_GetConfiguration:
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;

    case NoArgCommands_Nac_AdvancePlayback:
      advancePlayback();
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;

    case NoArgCommands_Nac_UserPausePlayback:
      userPausePlayback();
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;

    case NoArgCommands_Nac_UserUnpausePlayback:
      userUnpausePlayback();
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;

    default:
      logError("Unrecognized NoArgCommand command");
      logError(noArgCommand);
      break;
  }
}


void onMyProjectCommand(MyProjectCommand * message, MyProjectResponse * response) {

  // set this so that handler implementations are flagged if they forget to set
  // the response as part of their logic
  response->which_response = MyProjectResponse_invalidCommandResponse_tag;

  switch (message->which_command) {
    case MyProjectCommand_noArgCommand_tag:
      handleNoArgCommand(message->command.noArgCommand, response);
      break;

    case MyProjectCommand_setHatImage_tag:
      handleSetHatImageCommand(&(message->command.setHatImage), response);
      break;

    case MyProjectCommand_setHatRotateImage_tag:
      handleSetHatRotateImageCommand(&(message->command.setHatRotateImage), response);
      break;

    case MyProjectCommand_getDgsrImageValidationResult_tag:
      handleGetDgsrImageValidationResultCommand(&(message->command.getDgsrImageValidationResult), response);
      break;

    case MyProjectCommand_setPlayback_tag:
      handleSetPlaybackCommand(&(message->command.setPlayback), response);
      break;

    default:
      logError("Unrecognized MyProjectCommand command");
      logError(message->which_command);
      break;
  }

  if (response->which_response == MyProjectResponse_invalidCommandResponse_tag) {
    strncpy(response->response.invalidCommandResponse.message,
      "Unrecognized or unhandled project command",
      sizeof(response->response.invalidCommandResponse.message));
  }
}


void populateConfigurationResponse(ConfigurationResponse * response) {
  response->has_hatConfiguration = true;
  memcpy(&(response->hatConfiguration), &_hatConfiguration, sizeof(response->hatConfiguration));
}


void handleSetHatImageCommand(SetHatImageCommand * message, MyProjectResponse * response) {
  PlaybackSettings_ShowSingleFile singleFilePlaybackCommand;
  strncpy(singleFilePlaybackCommand.imagePath, message->imagePath, 
    sizeof(singleFilePlaybackCommand.imagePath));

  playbackImageFromFile(&singleFilePlaybackCommand);

  bool saveSuccess = saveHatConfig(&_hatConfiguration);
}


void handleSetHatRotateImageCommand(SetHatRotateImageCommand * message, MyProjectResponse * response) {
  _hatConfiguration.rotateImage = message->rotateImage;
  saveHatConfig(&_hatConfiguration);

  response->which_response = MyProjectResponse_configurationResponse_tag;
  populateConfigurationResponse(&(response->response.configurationResponse));
}


void handleGetDgsrImageValidationResultCommand(GetDgsrImageValidationResultCommand * message, MyProjectResponse * response) {
  response->which_response = MyProjectResponse_getDgsrImageValidationResultResponse_tag;

  logInfo("handleGetDgsrImageValidationResultCommand()");

  bool isValid = isValidDgsrFile(message->imagePath, response->response.getDgsrImageValidationResultResponse.message);
  
  logInfo("VALIDATION RESULT");
  logInfo(isValid);
  logInfo(message->imagePath);

  response->response.getDgsrImageValidationResultResponse.isValid = isValid;
  strncpy(response->response.getDgsrImageValidationResultResponse.imagePath,
    message->imagePath, 
    sizeof(response->response.getDgsrImageValidationResultResponse.imagePath));
}


void handleSetPlaybackCommand(SetPlaybackCommand * message, MyProjectResponse * response) {
  switch (message->which_playback) {
    case SetPlaybackCommand_showSingleFile_tag:
      playbackImageFromFile(&(message->playback.showSingleFile));
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;
    case SetPlaybackCommand_dirSlideshow_tag:
      startDirSlideshowPlayback(&(message->playback.dirSlideshow));
      response->which_response = MyProjectResponse_configurationResponse_tag;
      populateConfigurationResponse(&(response->response.configurationResponse));
      break;
    default:
      logError("Unrecognized SetPlaybackCommand tag");
      logError(message->which_playback);
      break;

  }
}