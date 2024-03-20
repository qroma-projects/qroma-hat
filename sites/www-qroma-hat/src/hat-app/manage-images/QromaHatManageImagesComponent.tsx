import React, { useEffect, useState } from "react"
import { useQromaCommFileSystemRxApi } from "../../react-qroma-lib/qroma-lib/file-explorer/QromaCommFileSystemRxApi";
import { DirItem, DirItemType } from "../../react-qroma-lib";
import { useQromaHatApi } from "../api/QromaHatApi";


interface IQromaHatManageImagesComponentProps {
  // qromaCommFileSystemApi: IQromaCommFilesystemRxApi
}


export const QromaHatManageImagesComponent = (
  props: IQromaHatManageImagesComponentProps
) => {

  const [dirItems, setDirItems] = useState([] as DirItem[]);
  const [isShowingImages, setIsShowingImages] = useState(false);

  const dirPath = "/dgsr";

  const qromaCommFileSystemApi = useQromaCommFileSystemRxApi();
  const qromaHatApi = useQromaHatApi();

  const isConnected = qromaCommFileSystemApi.connectionState.isWebSerialConnected;

  console.log("DIRECTORY CONTENTS")
  console.log(dirItems);

  
  const showDirContents = async (dirPath: string) => {
    console.log("SHOWING DIR CONTENTS FOR " + dirPath);

    const dirResult = await qromaCommFileSystemApi.listDir(dirPath);
    if (dirResult && dirResult.success) {
      setDirItems(dirResult.dirItems);
      setIsShowingImages(true);
    }
    console.log("DIR RESULT");
    console.log(dirResult);
  }

  const startConnection = () => {
    qromaCommFileSystemApi.init();
    console.log("qromaCommFileSystemApi - INIT CALLED FROM SHOW QROMA DIR");
  }

  useEffect(() => {
    const loadDirContent = async () => {
      await showDirContents(dirPath);
    };
    loadDirContent();
  }, [dirPath]);

  const ShowStuffButton = () => {
    if (!isConnected) {
      return (
        <button onClick={() => startConnection() }>Start Connection!</button> 
      );
    }

    if (!isShowingImages)  {
      return (
        <button onClick={() => showDirContents(dirPath) }>Show contents</button>
      )
    }

    return <></>;
  }

  const ShowHatImageButton = ({dirItem} : {dirItem: DirItem}) => {
    return (
      <button onClick={() => {
        const pathToShow = dirPath + "/" + dirItem.name;
        console.log(pathToShow);
        qromaHatApi.showImageFile(pathToShow);
        }}>
        {dirItem.name}
      </button>
    )
  }

  
  return (
    <div>
      <ShowStuffButton />
      {dirItems.map(x => {
        if (x.dirItemType === DirItemType.DIT_FILE) {
          return (
            <div key={x.name}>
              <ShowHatImageButton
                dirItem={x}
                />
            </div>
          )
        }
      })}
    </div>
  )
}
