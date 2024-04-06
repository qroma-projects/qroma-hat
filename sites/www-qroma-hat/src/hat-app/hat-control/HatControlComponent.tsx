import React, { useEffect, useState } from "react"
import { DirItem, DirItemType, sleep } from "../../react-qroma-lib";
import { IQromaHatApi } from "../api/QromaHatApi";
import { ViewModeComponent } from "./ViewModeComponent";
import { SetImageComponent } from "./set-image/SetImageComponent";
import { ConfigurePlaybackDirectorySettingsComponent } from "./playback-settings/ConfigurePlaybackDirectorySettingsComponent";
import { PickActiveDirectoryComponent } from "./active-dir/PickActiveDirComponent";
import { HatConfiguration, PlaybackMode } from "../../qroma-proto/my-project-messages";
import { ConfigureOtherModeComponent } from "./other-mode/ConfigureOtherModeComponent";



export interface IHatControlComponentProps {
  qromaHatApi: IQromaHatApi
  // activeDir: string
  // activeDirItems: DirItem[]
}

export type ViewModeOption = 'not-loaded' | 'set-image' | 'playback-dir' | 'other';

const convertPlaybackSettingsModeToViewModeOption = (mode: PlaybackMode | undefined): ViewModeOption => {
  if (mode === undefined) {
    return 'not-loaded';
  }

  if (mode === PlaybackMode.Pbm_ShowSingleFile) {
    return 'set-image';
  }

  if (mode === PlaybackMode.Pbm_UseDirectoryForRandomFileSlideshow) {
    return 'playback-dir';
  }

  return 'other';
}

export const HatControlComponent = (props: IHatControlComponentProps) => {

  const [hatConfig, setHatConfig] = useState(undefined as HatConfiguration | undefined);

  // const viewModeFromPlaybackSettings = convertPlaybackSettingsModeToViewModeOption(hatConfig?.playbackSettings?.mode);
  
  const [activeDir, setActiveDir] = useState("/dgsr");
  const [activeDirItems, setDirItems] = useState([] as DirItem[]);
  const [viewMode, setViewMode] = useState('not-loaded' as ViewModeOption);
  // const [viewMode, setViewMode] = useState(undefined as ViewModeOption | undefined);
  const [isPickExpanded, setIsPickExpanded] = useState(false);

  const showHatImages = async () => {
    console.log("SHOWING HAT IMAGES");

    const dirItems = await props.qromaHatApi.getHatImages(activeDir);
    // if (dirResult && dirResult.success) {
    //   // setActiveDirPath(dirResult.dirPath);
    // }
    console.log("DIR RESULT");
    setDirItems(dirItems);
  }

  const showHatConfig = async () => {
    console.log("SHOWING HAT CONFIG");

    await sleep(2000)
    const config = await props.qromaHatApi.getCurrentHatConfiguration();

    console.log("HAT CONFIG");
    console.log(config)

    setHatConfig(config);

    console.log(JSON.stringify(config))
  }

  useEffect(() => {
    const loadDirContent = async () => {
      await showHatImages();
    };
    loadDirContent();
  }, [activeDir]);

  console.log("RENDER HAT CONTROL")
  console.log(activeDirItems)


  return (
    <>
      <div>
        Current Playback Settings <button onClick={() => showHatConfig()}>Refresh</button>
      </div>
      <div>
        {hatConfig === undefined ? "hatconfig" : JSON.stringify(hatConfig)}
      </div>

      <ViewModeComponent
        hatConfig={hatConfig}
        viewMode={viewMode}
        setViewMode={setViewMode}
        activeDir={activeDir}
        activeDirItems={activeDirItems}
        />
      <div>
        Directory: {activeDir} <button onClick={() => { setIsPickExpanded(!isPickExpanded) }}>Choose Directory</button>
      </div>
      {isPickExpanded ? 
        <PickActiveDirectoryComponent
          qromaHatApi={props.qromaHatApi}
          activeDir={activeDir}
          setActiveDir={setActiveDir}
          activeDirItems={activeDirItems}
          />
        : null}
      {viewMode === 'set-image' && 
        <SetImageComponent
          qromaHatApi={props.qromaHatApi}
          activeDir={activeDir}
          activeDirItems={activeDirItems}
          />}
      {viewMode === 'playback-dir' && 
        <ConfigurePlaybackDirectorySettingsComponent 
          qromaHatApi={props.qromaHatApi}
          activeDir={activeDir}
          activeDirItems={activeDirItems}
          />}
      {viewMode === 'other' && 
        <ConfigureOtherModeComponent 
          qromaHatApi={props.qromaHatApi}
          />}
    </>
  )

  // const imageDirItems = activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_FILE && di.name.endsWith(".dgsr"));

  // return (
  //   <>
  //     {activeDir}
  //     {
  //       imageDirItems.map(di => (
  //         <SelectImageButton
  //           path={activeDir + "/" + di.name}
  //           label={di.name}
  //           key={di.name}
  //           qromaHatApi={props.qromaHatApi}
  //           />
  //       ))
  //     }
  //   </>
  // )
}