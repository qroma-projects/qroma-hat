import React, { useEffect, useState } from "react"
import { IQromaHatApi } from "../../api/QromaHatApi"
import { DirItem, DirItemType, sleep } from "../../../react-qroma-lib"
import { SetPlaybackDirComponent } from "./SetPlaybackDirComponent"
import { CurrentPlaybackConfigurationComponent } from "./CurrentPlaybackConfigurationComponent"
import { HatConfiguration } from "../../../qroma-proto/my-project-messages"



export interface IConfigurePlaybackDirectorySettingsComponentProps {
  qromaHatApi: IQromaHatApi
  activeDir: string
  activeDirItems: DirItem[]
}


export const ConfigurePlaybackDirectorySettingsComponent = (props: IConfigurePlaybackDirectorySettingsComponentProps) => {

  const [currentPlaybackDir, setCurrentPlaybackDir] = useState(props.activeDir);
  const [newPlaybackDir, setNewPlaybackDir] = useState(props.activeDir);

  // const otherDirs = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_DIR && di.name !== currentPlaybackDir);
  const otherDirs = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_DIR);

  const parentDirToSet = newPlaybackDir.split("/")[0].length < 1 ? "/" : newPlaybackDir.split("/").slice(0, -1).join("/");

  const parentDirComponent = currentPlaybackDir === "/" ? 
    null : 
    <SetPlaybackDirComponent
      key=".."
      qromaHatApi={props.qromaHatApi}
      dirToSetLabel={parentDirToSet}
      useThisDirFn={() => { setNewPlaybackDir(parentDirToSet); }}
      />

  const [hatConfig, setHatConfig] = useState(undefined as HatConfiguration | undefined);

  const showHatConfig = async () => {
    console.log("SHOWING HAT CONFIG");

    await sleep(1000)
    const config = await props.qromaHatApi.getCurrentHatConfiguration();

    console.log("HAT CONFIG");
    console.log(config)

    setHatConfig(config);

    console.log(JSON.stringify(config))
  }

  useEffect(() => {
    const loadComponentContent = async () => {
      await showHatConfig();
    };
    loadComponentContent();
  }, []);

  return (
    <>
      <div>
        {/* Choose Playback Directory (in progress) (currently {newPlaybackDir}) */}
        <CurrentPlaybackConfigurationComponent
          qromaHatApi={props.qromaHatApi}
          activeDir={props.activeDir}
          activeDirItems={props.activeDirItems}
          />

        {/* { parentDirComponent }
        {
          otherDirs.map(od => {
            const dirToSet = props.activeDir + "/" + od.name;
            return (
              <SetPlaybackDirComponent 
                key={od.name}
                qromaHatApi={props.qromaHatApi}
                dirToSetLabel={dirToSet}
                useThisDirFn={() => { setNewPlaybackDir(dirToSet); }}
                />
          )})
        } */}
      </div>
    </>
  )
}