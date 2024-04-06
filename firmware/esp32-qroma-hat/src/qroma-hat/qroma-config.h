#ifndef QROMA_PROJECT_CONFIG_H
#define QROMA_PROJECT_CONFIG_H

#include "qroma-config.h"
#include <qroma-proto/my-project-messages.pb.h>
#include <functional>


typedef std::function<void(HatConfiguration * config)> HatConfigurationFn;

// extern UpdateConfiguration updateConfiguration;
extern HatConfiguration _hatConfiguration;


// #define QROMA_HAT_UPDATES_CONFIG_FILENAME "/qroma-hat-updates.qroma"
#define QROMA_HAT_PROJECT_CONFIG_FILENAME "/qroma-hat-config.qroma"


// void saveDefaultConfigs();
// bool saveHatConfig(HatConfiguration * toSave);

void saveDefaultHatConfig();
bool saveHatConfig(HatConfiguration * toSave);
void updateAndSaveHatConfiguration(HatConfigurationFn configFn);


#endif