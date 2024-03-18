import { useState } from "react";
import { DirItem, IQromaConnectionState, PortRequestResult, QromaCommResponse, sleep, useQromaAppWebSerial } from "../../react-qroma-lib";
import { MyProjectCommand, MyProjectResponse, NoArgCommands } from "../../qroma-proto/my-project-messages";
// import { NoArgCommands_QromaLightsDeviceCommand, QromaLightsDeviceConfigUpdated } from "../../qroma-proto/qroma-lights-commands";
// import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_Animation, QromaStrip_WS2812FX_IoSettings, QromaStrip_WS2812FX_StripIndex } from "../../qroma-proto/qroma-lights-types";
import { useQromaCommFileSystemRxApi } from "../../react-qroma-lib/qroma-lib/file-explorer/QromaCommFileSystemRxApi";


export interface IQromaHatApi {
  init: () => void

  connectionState: IQromaConnectionState

  // restartDevice: () => void
  getHatImages: () => Promise<DirItem[]> 
  showImageFile: (filePath: string) => void
  uploadToHat: (filePath: string, fileBytes: Uint8Array) => Promise<void>
}


export const useQromaHatApi = (): IQromaHatApi => {

  console.log("STARTING QromaHatApi");

  const [connectionState, setConnectionState] = useState({
    isWebSerialConnected: false,
    keepQromaMonitoringOn: false,
    isQromaMonitoringOn: false,
  } as IQromaConnectionState);

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

  // const clearLatestAppResponse = () => {
  //   _latestAppResponse = undefined;
  // }
  
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
  const qromaAppWebSerial = useQromaAppWebSerial<MyProjectCommand, MyProjectResponse>(qromaAppWebSerialInputs);
  const qromaCommFileSystemApi = useQromaCommFileSystemRxApi();

  const startMonitoring = async () => {
    qromaAppWebSerial.startMonitoring();
  }

  // const restartDevice = () => {
  //   const appCommand: MyProjectCommand = {
  //     command: {
  //       oneofKind: 'noArgCommand',
  //       noArgCommand: NoArgCommands.Nac_RestartDevice,
  //     }
  //   };

  //   qromaAppWebSerial.sendQromaAppCommand(appCommand);
  // }

  const dirPath = "/dgsr";

  const getHatImages = async (): Promise<DirItem[]> => {
    console.log("SHOWING DIR CONTENTS FOR " + dirPath);

    const dirResult = await qromaCommFileSystemApi.listDir(dirPath);
    if (dirResult && dirResult.success) {
        console.log("DIR RESULT");
        console.log(dirResult);
        return dirResult.dirItems;
      // setDirItems(dirResult.dirItems);
      // setActiveDirPath(dirResult.dirPath);
    }
    console.log("NO DIR RESULT");
    return [];
  }

  const showImageFile = (filePath: string) => {
    console.log("SHOWING HAT IMAGE FILE");
    console.log(filePath);
    
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'setHatImage',
        setHatImage: {
          imagePath: "/dgsr/" + filePath,
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const uploadToHat = (filePath: string, fileBytes: Uint8Array) => {
    qromaCommFileSystemApi.writeFileContents(filePath, fileBytes);
  }

  return {
    init: startMonitoring,
    connectionState: qromaAppWebSerial.getConnectionState(),
    
    getHatImages,
    showImageFile,
    uploadToHat,
  };
}