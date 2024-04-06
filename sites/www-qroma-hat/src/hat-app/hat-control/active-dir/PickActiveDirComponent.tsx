import React, { useState } from "react"
import { DirItem, DirItemType } from "../../../react-qroma-lib"
import { IQromaHatApi } from "../../api/QromaHatApi"
import { SetPlaybackDirComponent } from "../playback-settings/SetPlaybackDirComponent"


export interface IPickActiveDirectoryComponentProps {
  qromaHatApi: IQromaHatApi
  activeDir: string
  setActiveDir: (newDir: string) => void
  activeDirItems: DirItem[]
}


export const PickActiveDirectoryComponent = (props: IPickActiveDirectoryComponentProps) => {

  // const [currentPlaybackDir, setCurrentPlaybackDir] = useState(props.activeDir);
  // const [newPlaybackDir, setNewPlaybackDir] = useState(props.activeDir);

  // const otherDirs = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_DIR && di.name !== currentPlaybackDir);
  const otherDirs = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_DIR);

  const parentDirToSet = props.activeDir.split("/")[0].length < 1 ? "/" : props.activeDir.split("/").slice(0, -1).join("/");

  const parentDirComponent = props.activeDir === "/" ? 
    null : 
    <SetPlaybackDirComponent
      key=".."
      qromaHatApi={props.qromaHatApi}
      dirToSetLabel=".."
      useThisDirFn={() => { props.setActiveDir(parentDirToSet); }}
      />

  console.log("PARENT DIR COMPONENT");
  console.log(parentDirComponent);

  const getChildDirName = (currentDir: string): string => {
    return props.activeDir === "/" ? 
      "/" + currentDir : 
      props.activeDir + "/" + currentDir;
  }


  return (
    <>
      <hr />
      Choose Playback Directory (currently {props.activeDir})
      { parentDirComponent }
      {
        otherDirs.map(od => {
          // const dirToSet = props.activeDir + "/" + od.name;
          const dirToSet = getChildDirName(od.name);
          return (
            <SetPlaybackDirComponent 
              key={od.name}
              qromaHatApi={props.qromaHatApi}
              dirToSetLabel={dirToSet}
              useThisDirFn={() => { props.setActiveDir(dirToSet); }}
              />
        )})
      }
      <hr />
    </>
  )
}