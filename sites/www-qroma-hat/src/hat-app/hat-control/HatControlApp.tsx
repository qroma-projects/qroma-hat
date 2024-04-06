import React, { useEffect, useState } from "react"
import { useQromaCommFileSystemRxApi } from "../../react-qroma-lib/qroma-lib/file-explorer/QromaCommFileSystemRxApi";
import { DirItem, DirItemType } from "../../react-qroma-lib/qroma-comm-proto/file-system-commands";
import { SelectImageButton } from "./set-image/SelectImageButton";
import { useQromaHatApi } from "../api/QromaHatApi";
import { HatControlComponent } from "./HatControlComponent";


export const HatControlApp = () => {
  // const qromaCommFileSystemApi = useQromaCommFileSystemRxApi();
  const qromaHatApi = useQromaHatApi();
  const isConnected = qromaHatApi.connectionState.isWebSerialConnected;

  // const [imageDir, setImageDir] = useState("/dgsr");
  // const [dirItems, setDirItems] = useState([] as DirItem[]);


  const startConnection = () => {
    qromaHatApi.init();
    console.log("qromaCommFileSystemApi - INIT CALLED FROM SHOW QROMA DIR");
  }

  // const showHatImages = async () => {
  //   console.log("SHOWING HAT IMAGES");

  //   const dirItems = await qromaHatApi.getHatImages(imageDir);
  //   // if (dirResult && dirResult.success) {
  //   //   // setActiveDirPath(dirResult.dirPath);
  //   // }
  //   console.log("DIR RESULT");
  //   setDirItems(dirItems);
  // }

  // useEffect(() => {
  //   const loadDirContent = async () => {
  //     await showDirContents(dirPath);
  //   };
  //   loadDirContent();
  // }, [dirPath]);

  // const imageDirItems = dirItems.filter(di => di.dirItemType === DirItemType.DIT_FILE && di.name.endsWith(".dgsr"));
  
  return (
    <>
      {/* HatControlApp */}
      {isConnected ? 
        // <button onClick={() => showHatImages() }>Show hat images</button> :
        <HatControlComponent
          qromaHatApi={qromaHatApi}
          />
        :
        <button onClick={() => startConnection() }>Start Connection!</button> 
      }
      {/* <HatControlComponent
        qromaHatApi={qromaHatApi}
        /> */}

      {/* {
        imageDirItems.map(di => (
          <SelectImageButton
            path={imageDir + "/" + di.name}
            label={di.name}
            key={di.name}
            qromaHatApi={qromaHatApi}
            />
        ))
      } */}
    </>
  )
}