import { Buffer } from 'buffer';
import { IQromaConnectionState, PortRequestResult } from "./QromaWebSerial";
import { QromaCommCommand, QromaCommResponse } from '../../qroma-comm-proto/qroma-comm';
import { useQromaCommWebSerial } from './QromaCommWebSerial';
import { IMessageType } from '@protobuf-ts/runtime';
import { QcuCreateQromaCommMessageForAppCommand } from '../QromaCommUtils';


export interface IUseQromaAppWebSerialInputs<TCommand extends object, TResponse extends object> {
  onConnect?: () => void;
  onDisconnect?: () => void;
  onPortRequestResult: ((requestResult: PortRequestResult) => void);

  commandMessageType?: IMessageType<TCommand>
  responseMessageType: IMessageType<TResponse>

  onQromaCommResponse: (message: QromaCommResponse) => void;
  onQromaAppResponse: (appMessage: TResponse) => void;
}

export interface IQromaAppWebSerialRx<TCommand extends object> {
  startMonitoring: () => void
  stopMonitoring: () => void
  getConnectionState: () => IQromaConnectionState
  sendQromaAppCommand: (appCommand: TCommand) => void
  createQromaCommMessageForAppCommand: (appCommand: TCommand) => QromaCommCommand
}


export const useQromaAppWebSerial = 
  <TCommand extends object, TResponse extends object>
(inputs: IUseQromaAppWebSerialInputs<TCommand, TResponse>): IQromaAppWebSerialRx<TCommand> => 
{

  if (!window) {
    throw Error("Not running in a browser");
  }


  const createQromaCommMessageForAppCommand = (appCommand: TCommand): QromaCommCommand => {
    return QcuCreateQromaCommMessageForAppCommand(appCommand, inputs.commandMessageType);
  }

  const sendQromaAppCommand = async (appCommand: TCommand) => {
    if (inputs.commandMessageType === undefined) {
      throw Error("sendQromaAppCommand() failure - no commandMessageType provided on IUseQromaAppWebSerialInputs")
    }

    const appMessageBytes = inputs.commandMessageType.toBinary(appCommand);

    const qromaCommCommand: QromaCommCommand = {
      command: {
        oneofKind: 'appCommandBytes',
        appCommandBytes: appMessageBytes,
      }
    }

    qromaCommWebSerial.sendQromaCommCommand(qromaCommCommand);
  }

  const onQromaCommResponse = (qromaCommResponse: QromaCommResponse) => {
    // console.log("SOME RESPONSE HERE")
    // console.log(qromaCommResponse)
    if (qromaCommResponse.response.oneofKind === 'coreResponse') {
      if (qromaCommResponse.response.coreResponse.oneofKind === 'heartbeat') {
        // console.log("CORE HEARTBEAT: ", qromaCommResponse.response.coreResponse.response.heartbeat);
      }
    } else if (qromaCommResponse.response.oneofKind === 'appResponseBytes') {
      // console.log("APP RESPONSE");
      const appResponseBytes = qromaCommResponse.response.appResponseBytes;
      // console.log(appResponseBytes)
      // console.log(inputs.responseMessageType)
      try {
        const appResponse = inputs.responseMessageType.fromBinary(appResponseBytes);
        // console.log(appResponse);
        if (appResponse === undefined) {
          console.log("UNDEFINED APP RESPONSE BYTES");
          console.log(appResponseBytes);
          return;
        }
        inputs.onQromaAppResponse(appResponse);
      } catch (e) {
        console.log("APP RESPONSE PARSE ERR");
        console.log(e);
      }
    }
  }

  const onConnectionChange = (latestConnection: IQromaConnectionState) => {
    inputs.onPortRequestResult({success: latestConnection.isWebSerialConnected});
  }

  console.log("CALLING useQromaCommWebSerial");
  const qromaCommWebSerial = useQromaCommWebSerial(
    onQromaCommResponse,
    onConnectionChange
  );


  return {
    startMonitoring: qromaCommWebSerial.startMonitoring,
    getConnectionState: qromaCommWebSerial.getConnectionState,
    stopMonitoring: qromaCommWebSerial.stopMonitoring,
    sendQromaAppCommand,
    createQromaCommMessageForAppCommand,
  };
}