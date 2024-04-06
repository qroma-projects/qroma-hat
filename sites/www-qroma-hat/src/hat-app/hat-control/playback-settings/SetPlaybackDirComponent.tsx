import React, { useState } from "react"
import { IQromaHatApi } from "../../api/QromaHatApi"
import { DirItem, DirItemType } from "../../../react-qroma-lib"



export interface ISetPlaybackDirComponentProps {
  qromaHatApi: IQromaHatApi
  // dirPath: string
  dirToSetLabel: string
  useThisDirFn: () => void
  // activeDirItems: DirItem[]
}


export const SetPlaybackDirComponent = (props: ISetPlaybackDirComponentProps) => {


  const setPlaybackDir = () => {
    // const fullPlaybackDir = props.dirPath + "/" + props.dirToSet.name;
    console.log("SETTING PLAYBACK DIR - " + props.dirToSetLabel);
    props.useThisDirFn();
    // props.qromaHatApi.showImageFile(props.path);
  }

  return (
    <>
      <div>
        <button onClick={() => setPlaybackDir()}>
          {props.dirToSetLabel}
        </button>
      </div>
    </>
  )
}