#ifndef QROMA_COMMANDS_H
#define QROMA_COMMANDS_H

#include <qroma-proto/my-project-messages.pb.h>

void onMyProjectCommand(MyProjectCommand * message, MyProjectResponse * response);

void populateConfigurationResponse(ConfigurationResponse * response);
void populateGetDgsrImageValidationResultResponse(GetDgsrImageValidationResultResponse * response);

void handleSetHatImageCommand(SetHatImageCommand * message, MyProjectResponse * response);
void handleSetHatRotateImageCommand(SetHatRotateImageCommand * message, MyProjectResponse * response);
void handleGetDgsrImageValidationResultCommand(GetDgsrImageValidationResultCommand * message, MyProjectResponse * response);

#endif