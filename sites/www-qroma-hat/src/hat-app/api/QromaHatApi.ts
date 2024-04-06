import { useState } from "react";
import { DirItem, IQromaConnectionState, PortRequestResult, QromaCommResponse } from "../../react-qroma-lib";
import { HatConfiguration, MyProjectCommand, MyProjectResponse, NoArgCommands, PlaybackConfiguration } from "../../qroma-proto/my-project-messages";
import { useQromaCommFileSystemRxApi } from "../../react-qroma-lib/qroma-lib/file-explorer/QromaCommFileSystemRxApi";
import { IQromaAppRxHandler, useQromaAppWebSerialRx } from "../../react-qroma-lib/qroma-lib/webserial/QromaAppWebSerialRx";


export interface IQromaHatApi {
  init: () => void

  connectionState: IQromaConnectionState

  getCurrentHatConfiguration: () => Promise<HatConfiguration | undefined>
  getCurrentPlaybackConfiguration: () => Promise<PlaybackConfiguration | undefined>
  
  getHatImages: (imageDir: string) => Promise<DirItem[]> 
  showImageFile: (filePath: string) => Promise<void>
  showNextImage: () => Promise<void>
  pausePlayback: () => Promise<void>
  resumePlayback: () => Promise<void>

  showBlackScreen: () => Promise<void>
  showWhiteScreen: () => Promise<void>
  showDefaultScreen: () => Promise<void>
  
  setPlaybackDirectoryConfiguration: (slideshowDirPath: string, delayIntervalInMs: number) => Promise<void>
  
  uploadToHat: (filePath: string, fileBytes: Uint8Array) => Promise<void>
}


export const useQromaHatApi = (): IQromaHatApi => {

  console.log("STARTING QromaHatApi");

  const [connectionState, setConnectionState] = useState({
    isWebSerialConnected: false,
    keepQromaMonitoringOn: false,
    isQromaMonitoringOn: false,
  } as IQromaConnectionState);
  // const [imageDirPath, setImageDirPath] = useState("/dgsr");


  let _latestResponse: QromaCommResponse | undefined = undefined;
  let _latestAppResponse: MyProjectResponse | undefined = undefined;

  // const _deviceConfigSubscribers: { (latestConfig: QromaLightsDeviceConfig): void}[] = []

  const setLatestResponse = (message: QromaCommResponse) => {
    _latestResponse = message;
  }

  const setLatestAppResponse = (message: MyProjectResponse) => {
    _latestAppResponse = message;
  }

  const onQromaCommResponse = (message: QromaCommResponse) => {
    setLatestResponse(message);
  }

  const onQromaAppResponse = (appMessage: MyProjectResponse) => {
    setLatestAppResponse(appMessage);
    console.log("LATEST APP RESPONSE")
    console.log(appMessage)

    // if (appMessage.response.oneofKind === 'hatDetailsResponse' &&
    //     appMessage.response.hatDetailsResponse.response.oneofKind === 'qromaLightsConfigResponse')
    // {
    //   const latestConfig = appMessage.response.qromaLightsResponse.response.qromaLightsConfigResponse as QromaLightsDeviceConfig;
    //   _deviceConfigSubscribers.forEach(s => {
    //     s(latestConfig);
    //   });
    //   return;
    // }

    // if (appMessage.response.oneofKind === 'updateResponse' &&
    //     appMessage.response.updateResponse.response.oneofKind === 'configUpdatedResponse')
    // {
    //   const configUpdatedResponse = appMessage.response.qromaLightsResponse.response.configUpdatedResponse as QromaLightsDeviceConfigUpdated;
    //   const latestConfig = configUpdatedResponse.updateConfig;
    //   _deviceConfigSubscribers.forEach(s => {
    //     s(latestConfig);
    //   })
    //   return;
    // }

    console.log("UNRECOGNIZED OR INVALID APP RESPONSE IN APP MESSAGE");
    console.log(appMessage);
  }

  
  const qromaAppWebSerialInputs = {
    onConnect: () => () => { console.log("ON CONNECT") },
    onDisconnect: () => () => { console.log("ON DISCONNECT")},
    onPortRequestResult: (requestResult: PortRequestResult) => { 
      console.log("ON PORT REQUEST RESULT");
      console.log(requestResult)
      setConnectionState(qromaAppWebSerial.getConnectionState());
    },
  
    commandMessageType: MyProjectCommand,
    responseMessageType: MyProjectResponse,
  
    onQromaCommResponse,
    onQromaAppResponse,
  }
  const qromaAppWebSerial = useQromaAppWebSerialRx<MyProjectCommand, MyProjectResponse>(qromaAppWebSerialInputs);
  const qromaCommFileSystemApi = useQromaCommFileSystemRxApi();

  const startMonitoring = async () => {
    qromaAppWebSerial.startMonitoring();
  }

  
  const getCurrentHatConfiguration = async (): Promise<HatConfiguration | undefined> => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_GetConfiguration,
      }
    };

    let theResponse: HatConfiguration | undefined;
    const rxHandler: IQromaAppRxHandler<MyProjectResponse> = {
      onAppRx: (appResponse: MyProjectResponse) => {
        console.log("RX HANDLER - QROMA HAT")
        console.log(appResponse)
        if (appResponse.response.oneofKind === 'configurationResponse') {
          theResponse = appResponse.response.configurationResponse.hatConfiguration;
          return true;
        }
        return false;
      },
    }

    await qromaAppWebSerial.sendQromaAppCommandRx(appCommand, rxHandler, 2000);

    console.log("HAT API CONFIG RESPONSE");
    console.log(theResponse);

    return theResponse;
  }


  const getCurrentPlaybackConfiguration = async (): Promise<PlaybackConfiguration | undefined> => {
    const hatConfiguration = await getCurrentHatConfiguration();

    const theResponse = hatConfiguration?.playbackSettings;
    console.log("HAT API PLAYBACK CONFIG RESPONSE");
    console.log(theResponse);

    return theResponse;


    // const appCommand: MyProjectCommand = {
    //   command: {
    //     oneofKind: 'noArgCommand',
    //     noArgCommand: NoArgCommands.Nac_GetConfiguration,
    //   }
    // };

    // let theResponse: PlaybackConfiguration | undefined;
    // const rxHandler: IQromaAppRxHandler<MyProjectResponse> = {
    //   onAppRx: (appResponse: MyProjectResponse) => {
    //     console.log("RX HANDLER - QROMA HAT")
    //     console.log(appResponse)
    //     if (appResponse.response.oneofKind === 'configurationResponse') {
    //       theResponse = appResponse.response.configurationResponse.hatConfiguration?.playbackSettings;
    //       return true;
    //     }
    //     return false;
    //   },
    //   // isRxComplete: () => boolean
    //   // hasTimeoutOccurred: () => boolean
    //   // onTimeout: () => void
    // }

    // await qromaAppWebSerial.sendQromaAppCommandRx(appCommand, rxHandler, 2000);

    // console.log("HAT API PLAYBACK CONFIG RESPONSE");
    // console.log(theResponse);

    // return theResponse;
  }


  const getHatImages = async (imageDir: string): Promise<DirItem[]> => {
    console.log("SHOWING DIR CONTENTS FOR " + imageDir);

    const dirResult = await qromaCommFileSystemApi.listDir(imageDir);
    if (dirResult && dirResult.success) {
        console.log("DIR RESULT");
        console.log(dirResult);
        return dirResult.dirItems;
    }
    console.log("NO DIR RESULT");
    return [];
  }

  const showImageFile = async (filePath: string) => {
    console.log("SHOWING HAT IMAGE FILE");
    console.log(filePath);
    
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'setHatImage',
        setHatImage: {
          imagePath: filePath,
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const uploadToHat = async (filePath: string, fileBytes: Uint8Array): Promise<void> => {
    await qromaCommFileSystemApi.writeFileContents(filePath, fileBytes);
  }

  const setPlaybackDirectoryConfiguration = async (slideshowDirPath: string, delayIntervalInMs: number) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'setPlayback',
        setPlayback: {
          playback: {
            oneofKind: 'dirSlideshow',
            dirSlideshow: {
              slideshowDirPath,
              delayIntervalInMs,
            }
          },
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const showNextImage = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_AdvancePlayback,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const pausePlayback = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_UserPausePlayback,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const resumePlayback = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_UserUnpausePlayback,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const showBlackScreen = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_ClearScreenToBlack,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const showWhiteScreen = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_ClearScreenToWhite,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const showDefaultScreen = async () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'noArgCommand',
        noArgCommand: NoArgCommands.Nac_ShowDefaultImage,
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }


  return {
    init: startMonitoring,
    connectionState: qromaAppWebSerial.getConnectionState(),
    
    getCurrentHatConfiguration,
    getCurrentPlaybackConfiguration,

    getHatImages,
    showImageFile,
    showNextImage,

    showBlackScreen,
    showWhiteScreen,
    showDefaultScreen,

    pausePlayback,
    resumePlayback,

    setPlaybackDirectoryConfiguration,
    uploadToHat,
  };
}