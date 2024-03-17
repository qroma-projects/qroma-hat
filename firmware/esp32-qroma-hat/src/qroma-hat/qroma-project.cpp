#include "qroma-project.h"
#include "qroma-config.h"
#include "qroma-commands.h"
#include "qroma/qroma.h"
#include "images/image_types.h"
#include "eink/eink-screen.h"
#include "images/data/images_data.h"


AppCommandProcessor<
  MyProjectCommand, MyProjectCommand_fields,
  MyProjectResponse, MyProjectResponse_fields
> myAppCommandProcessor(onMyProjectCommand);

QromaSerialCommApp myQromaApp;

int updateCounter = 0;

int vref = 1100;



void qromaProjectSetup()
{
  myQromaApp.setAppCommandProcessor(&myAppCommandProcessor);
  
  myQromaApp.configureQromaCore([](QromaCoreConfig * config) {
    config->has_serialIoConfig = true;
    config->serialIoConfig = {
      .baudRate = 115200,
      .rxBufferSize = 1000,
      .txBufferSize = 1000,
    };

    config->has_serialProcessingConfig = true;
    config->serialProcessingConfig = {
      .msDelayInProcessingLoop = 10,
    };

    config->has_loggingConfig = true;
    config->loggingConfig = {
      .logLevel = Qroma_LogLevel_LogLevel_Info,
    };

    config->has_managementConfig = true;
    config->managementConfig = {
      .projectLoopDelayInMs = 100,
      .has_heartbeatConfiguration = true,
      .heartbeatConfiguration = {
        .heartbeatType = HeartbeatType_HeartbeatType_Interval,
        .heartbeatIntervalInMs = 1000,
      },
    };
  });

  myQromaApp.startupQroma();

    // Correct the ADC reference voltage
  esp_adc_cal_characteristics_t adc_chars;
#if defined(T5_47)
  esp_adc_cal_value_t val_type = esp_adc_cal_characterize(
      ADC_UNIT_1,
      ADC_ATTEN_DB_11,
      ADC_WIDTH_BIT_12,
      1100,
      &adc_chars
  );
#else
  esp_adc_cal_value_t val_type = esp_adc_cal_characterize(
      ADC_UNIT_2,
      ADC_ATTEN_DB_11,
      ADC_WIDTH_BIT_12,
      1100,
      &adc_chars
  );
#endif
  if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF) {
      Serial.printf("eFuse Vref: %umV\r\n", adc_chars.vref);
      vref = adc_chars.vref;
  }

#if defined(T5_47_PLUS)
  Wire.begin(TOUCH_SDA, TOUCH_SCL);
  rtc.begin();
  rtc.setDateTime(2022, 6, 30, 0, 0, 0);
#endif

  logInfo("INIT QROMA HAT CONFIG");

  logInfo("PRE-EPDINIT");
  epd_init();
  logInfo("POST-EPDINIT");

  uint8_t * activeImageBuffer = initActiveImageBuffer();
  _activeImage.imagePixels = activeImageBuffer;

  uint8_t * dgsrDataBuffer = initLoadedDgsrImageBuffer();
  _loadedDgsrImage.dgsrFileData = dgsrDataBuffer;

  saveDefaultConfigs();

  // HatImagePointer hatImagePointer = {
  //   .dgsrImage = &dgsr_image_qroma_hat_def,
  // };
  // showImageFromInternalDgsrData(HIE_DGSR, &hatImagePointer, &_activeImage);
  
  
  showImageFromFile("/qroma_hat.dgsr", &_activeImage);

  logInfo("DONE setup()");
}


void qromaProjectLoop()
{
  // logInfoUintWithDescription("QROMA PROJECT LOOP - ", updateCounter);
  myQromaApp.tick();

  updateCounter++;
}