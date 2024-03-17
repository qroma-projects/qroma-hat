#include <Esp.h>
#include <fs.h>
#include "qroma-commands.h"
#include "qroma-config.h"
#include "qroma/qroma.h"
#include "qroma-project.h"
#include "eink/eink-screen.h"
#include "lib_version.h"
#include "images/dgsr/dgsrImageValidator.h"


HatImageData workingHatImageData; // this is OK to share since only one command gets processed at a time


void handleNoArgCommand(NoArgCommands noArgCommand, MyProjectResponse * response) {
  switch (noArgCommand) {
    case NoArgCommands_Nac_NotSet:
      logError("NoArgCommand not set");
      break;

    case NoArgCommands_Nac_ClearScreenToWhite:
      clearScreenToWhite();
      break;

    case NoArgCommands_Nac_ClearScreenToBlack:
      clearScreenToBlack();
      break;

    case NoArgCommands_Nac_GetConfiguration:
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
  response->has_updateConfiguration = true;
  response->updateConfiguration.updateIntervalInMs = updateConfiguration.updateIntervalInMs;
  response->updateConfiguration.updateType = updateConfiguration.updateType;

  response->has_hatConfiguration = true;
  response->hatConfiguration.rotateImage = hatConfiguration.rotateImage;
  strncpy(response->hatConfiguration.imagePath, hatConfiguration.imagePath, sizeof(response->hatConfiguration.imagePath));
}


void handleSetHatImageCommand(SetHatImageCommand * message, MyProjectResponse * response) {

  response->which_response = MyProjectResponse_setHatImageResponse_tag;

  // validate image is a valid DGSR file we can show
  if (!isValidDgsrFile(message->imagePath, &workingHatImageData, response->response.getDgsrImageValidationResultResponse.message)) {
    response->response.setHatImageResponse.success = false;
    strncpy(response->response.setHatImageResponse.message, 
      "Invalid hat image file: ", 
      sizeof(response->response.setHatImageResponse.message));
    strncat(response->response.setHatImageResponse.message, 
      message->imagePath, 
      sizeof(response->response.setHatImageResponse.message));
    strncat(response->response.setHatImageResponse.message, 
      response->response.getDgsrImageValidationResultResponse.message, 
      sizeof(response->response.setHatImageResponse.message));
    return;
  }

  strncpy(hatConfiguration.imagePath, message->imagePath, 
    sizeof(response->response.setHatImageResponse.imagePath));
  bool saveSuccess = saveHatConfig(&hatConfiguration);

  if (!saveSuccess) {
    response->response.setHatImageResponse.success = false;
    strncpy(response->response.setHatImageResponse.message, 
      "Error saving hat config with image file: ", 
      sizeof(response->response.setHatImageResponse.message));
    strncat(response->response.setHatImageResponse.message, 
      message->imagePath, 
      sizeof(response->response.setHatImageResponse.message));
    return;
  }

  response->response.setHatImageResponse.success = true;
  strncpy(response->response.setHatImageResponse.message, "Setting as hat image: ", 
    sizeof(response->response.setHatImageResponse.message));
  strncat(response->response.setHatImageResponse.message, message->imagePath, 
    sizeof(response->response.setHatImageResponse.message));
}


void handleSetHatRotateImageCommand(SetHatRotateImageCommand * message, MyProjectResponse * response) {
  hatConfiguration.rotateImage = message->rotateImage;
  saveHatConfig(&hatConfiguration);

  response->which_response = MyProjectResponse_configurationResponse_tag;
  populateConfigurationResponse(&(response->response.configurationResponse));
}


void handleGetDgsrImageValidationResultCommand(GetDgsrImageValidationResultCommand * message, MyProjectResponse * response) {
  response->which_response = MyProjectResponse_getDgsrImageValidationResultResponse_tag;

  logInfo("handleGetDgsrImageValidationResultCommand()");

  bool isValid = isValidDgsrFile(message->imagePath, &workingHatImageData, response->response.getDgsrImageValidationResultResponse.message);
  
  logInfo("VALIDATION RESULT");
  logInfo(isValid);
  logInfo(message->imagePath);

  response->response.getDgsrImageValidationResultResponse.isValid = isValid;
  strncpy(response->response.getDgsrImageValidationResultResponse.imagePath,
    message->imagePath, 
    sizeof(response->response.getDgsrImageValidationResultResponse.imagePath));
}
