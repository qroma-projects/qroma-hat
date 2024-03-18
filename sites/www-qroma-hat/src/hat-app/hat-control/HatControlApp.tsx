import React, { useEffect, useState } from "react"
import { useQromaCommFileSystemRxApi } from "../../react-qroma-lib/qroma-lib/file-explorer/QromaCommFileSystemRxApi";
import { DirItem } from "../../react-qroma-lib/qroma-comm-proto/file-system-commands";
import { SelectImageButton } from "./SelectImageButton";
import { useQromaHatApi } from "../api/QromaHatApi";


export const HatControlApp = () => {
  // const qromaCommFileSystemApi = useQromaCommFileSystemRxApi();
  const qromaHatApi = useQromaHatApi();
  const isConnected = qromaHatApi.connectionState.isWebSerialConnected;

  const [dirItems, setDirItems] = useState([] as DirItem[]);


  const startConnection = () => {
    qromaHatApi.init();
    console.log("qromaCommFileSystemApi - INIT CALLED FROM SHOW QROMA DIR");
  }

  const showHatImages = async () => {
    console.log("SHOWING HAT IMAGES");

    const dirItems = await qromaHatApi.getHatImages();
    // if (dirResult && dirResult.success) {
    //   // setActiveDirPath(dirResult.dirPath);
    // }
    console.log("DIR RESULT");
    setDirItems(dirItems);
  }

  // useEffect(() => {
  //   const loadDirContent = async () => {
  //     await showDirContents(dirPath);
  //   };
  //   loadDirContent();
  // }, [dirPath]);
  
  return (
    <>
      HatControlApp
      {isConnected ? 
        <button onClick={() => showHatImages() }>Show hat images</button> :
        <button onClick={() => startConnection() }>Start Connection!</button> 
      }
      {
        dirItems.map(di => (
          <SelectImageButton
            path={di.name}
            key={di.name}
            qromaHatApi={qromaHatApi}
            />
        ))
      }
    </>
  )
}