import React, { useState } from "react";
import { useQromaHatApi } from "../../api/QromaHatApi";
import { crc32 } from "crc";
import { sleep } from "../../../react-qroma-lib";
import { logTimeStamp } from "../../../react-qroma-lib/qroma-lib/utils";


export interface IDgsrFileLoadIntoHatProps {
  isBusy: boolean
  setIsBusy: (busy: boolean) => void
  fileNameRoot: string
  imageDataFileBytes: Uint8Array
  uploadFilePath: string
}


export const DgsrFileLoadIntoHat = (props: IDgsrFileLoadIntoHatProps) => {
  const { isBusy, setIsBusy, fileNameRoot, imageDataFileBytes } = props;

  const [fileBytes, setFileBytes] = useState<Uint8Array | null>(null);
  const [showAfterUpload, setShowAfterUpload] = useState(true);

  const qromaHatApi = useQromaHatApi();
  const isConnected = qromaHatApi.connectionState.isWebSerialConnected;

  const startConnection = () => {
    qromaHatApi.init();
    console.log("qromaCommFileSystemApi - INIT CALLED FROM SHOW QROMA DIR");
  }

  const handleFileChange = (event) => {
    const selectedFile = event.target.files[0];
    const reader = new FileReader();

    reader.onload = (event) => {
      const arrayBuffer = event.target.result;
      const uint8Array = new Uint8Array(arrayBuffer);
      setFileBytes(uint8Array);
    };

    reader.readAsArrayBuffer(selectedFile);
  };


  const handleUploadFromLocalClick = async () => {
    setIsBusy(true);
    console.log("UPLOAD: " + props.uploadFilePath);
    console.log("SIZE: " + imageDataFileBytes.length);
    await qromaHatApi.uploadToHat(props.uploadFilePath, imageDataFileBytes);
    console.log("DONE UPLOAD")

    if (showAfterUpload) {
      logTimeStamp("DO SHOW AFTER UPLOAD - ");
      await sleep(5000);
      logTimeStamp("SENDING SHOW COMMAND - ");
      await qromaHatApi.showImageFile(props.uploadFilePath);
    }
    setIsBusy(false);
  }

  const handleShowOnHat = () => {
    qromaHatApi.showImageFile(props.uploadFilePath);
  }


  const handleUploadFromPcClick = () => {
    // if (file) {
    //   const reader = new FileReader();
    //   reader.onload = (event) => {
    //     const arrayBuffer = event.target.result;
    //     const uint8Array = new Uint8Array(arrayBuffer);
    //     setFileBytes(uint8Array);
    //   };
    //   reader.readAsArrayBuffer(file);
    // }
  }

  if (!isConnected) {
    return (
      <button onClick={() => startConnection()}>
        Start Connection
      </button>
    )
  }


  return (
    <>
      <div>
        <button disabled={isBusy} onClick={handleUploadFromLocalClick}>
          {isBusy ? "Loading..." : "Upload This to Hat"}
        </button>
        <button disabled={isBusy} onClick={handleShowOnHat}>
          {isBusy ? "Loading..." : "Show on Hat"}
        </button>
        {/* <div>
          <input 
              type="checkbox"
              checked={showAfterUpload} 
              onChange={(event) => setShowAfterUpload(event.target.checked) } 
              />
            Show After Upload
        </div> */}
      </div>
      <div>
        <input type="file" onChange={handleFileChange} />
        {fileBytes !== null ? fileBytes.length : ""}
        <button disabled={isBusy || !fileBytes} onClick={handleUploadFromPcClick}>
          {isBusy ? "Loading..." : "Upload From File to Hat"}
        </button>
      </div>
    </>
  )
}