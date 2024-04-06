import React, { useEffect, useState } from "react"
import { IQromaHatApi } from "../../api/QromaHatApi"
import { DirItem, DirItemType, sleep } from "../../../react-qroma-lib"
import { SetPlaybackDirComponent } from "./SetPlaybackDirComponent"
import { HatConfiguration } from "../../../qroma-proto/my-project-messages"



export interface ICurrentPlaybackConfigurationComponentProps {
  qromaHatApi: IQromaHatApi
  activeDir: string
  activeDirItems: DirItem[]
}


export const CurrentPlaybackConfigurationComponent = (props: ICurrentPlaybackConfigurationComponentProps) => {

  const [hatConfig, setHatConfig] = useState(undefined as HatConfiguration | undefined);

  const [devicePlaybackDir, setDevicePlaybackDir] = useState(props.activeDir);
  const [deviceTotalPlaybackIntervalInSeconds, setDeviceTotalPlaybackIntervalInSeconds] = useState(undefined as number | undefined);
  const [devicePlaybackIsPaused, setDevicePlaybackIsPaused] = useState(undefined as boolean | undefined);

  const [toUpdateTotalPlaybackIntervalInSeconds, setToUpdateTotalPlaybackIntervalInSeconds] = useState(0);

  const showHatConfig = async () => {
    console.log("SHOWING HAT CONFIG");

    await sleep(2000)
    const config = await props.qromaHatApi.getCurrentHatConfiguration();

    console.log("HAT CONFIG");
    console.log(config)

    setHatConfig(config);

    console.log(JSON.stringify(config))

    if (config?.playbackSettings?.dirSlideshowSettings) {
      console.log("USING DIR PLAYBACK CONFIG");
      const delayIntervalInSeconds = config.playbackSettings.dirSlideshowSettings.delayIntervalInMs / 1000;
      setDeviceTotalPlaybackIntervalInSeconds(delayIntervalInSeconds);
      setToUpdateTotalPlaybackIntervalInSeconds(delayIntervalInSeconds);
      setDevicePlaybackDir(config.playbackSettings.dirSlideshowSettings.slideshowDirPath);
      setDevicePlaybackIsPaused(config.playbackSettings.isSlideshowPaused);
    }
  }

  useEffect(() => {
    const loadComponentContent = async () => {
      await showHatConfig();
    };
    loadComponentContent();
  }, []);

  const imageDirItems = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_FILE && di.name.endsWith(".dgsr"));

  const devicePlaybackIntervalSeconds = deviceTotalPlaybackIntervalInSeconds ? deviceTotalPlaybackIntervalInSeconds % 60 : undefined;
  const devicePlaybackIntervalMinutes = deviceTotalPlaybackIntervalInSeconds ? Math.floor(deviceTotalPlaybackIntervalInSeconds / 60) : undefined;

  // const [numMinutes, setNumMinutes] = useState(devicePlaybackIntervalMinutes);
  // const [numSeconds, setNumSeconds] = useState(devicePlaybackIntervalSeconds);

  const MinIntervalThresholdInSeconds = 15;
  const [userTriedToGoBelowMinIntervalThreshold, setUserTriedToGoBelowMinIntervalThreshold] = useState(false);

  const calcDurationInSeconds = (minutes, seconds) => {
    return (minutes * 60) + seconds;
  }

  const totalPlaybackIntervalInSeconds = calcDurationInSeconds(devicePlaybackIntervalSeconds, devicePlaybackIntervalMinutes);


  const handleMinutesChange = (event) => {
    const numMinutesToSet = parseInt(event.target.value);

    const duration = calcDurationInSeconds(numMinutesToSet, devicePlaybackIntervalSeconds);
    if (duration < MinIntervalThresholdInSeconds) {
      setUserTriedToGoBelowMinIntervalThreshold(true);
      return;
    }

    // setNumMinutes(numMinutesToSet);
    setToUpdateTotalPlaybackIntervalInSeconds(duration);
    setUserTriedToGoBelowMinIntervalThreshold(false);
  };

  const handleSecondsChange = (event) => {
    // Round number of seconds to the nearest multiple of 5
    const numSecondsToSet = Math.round(parseInt(event.target.value) / 5) * 5;

    const duration = calcDurationInSeconds(devicePlaybackIntervalMinutes, numSecondsToSet);
    if (duration < MinIntervalThresholdInSeconds) {
      setUserTriedToGoBelowMinIntervalThreshold(true);
      return;
    }

    // setNumSeconds(numSecondsToSet); // Update state with rounded value
    setToUpdateTotalPlaybackIntervalInSeconds(duration);
    setUserTriedToGoBelowMinIntervalThreshold(false);
  };

  const applyThisPlaybackDirectoryConfiguration = async () => {
    const totalPlaybackIntervalInMs = totalPlaybackIntervalInSeconds * 1000;
    await props.qromaHatApi.setPlaybackDirectoryConfiguration(props.activeDir, totalPlaybackIntervalInMs);
  }

  const showNext = async () => {
    await props.qromaHatApi.showNextImage();
  }

  const PlaybackButton = () => {
    if (devicePlaybackIsPaused === undefined) {
      return (
        <div>
          <button disabled={true}>Pause/Resume playback</button>
        </div>
      );
    }

    if (devicePlaybackIsPaused) {
      return (
        <div>
          <button onClick={async () => await props.qromaHatApi.resumePlayback() }>Resume playback</button>
        </div>
      );
  
    } else {
      return (
        <div>
          <button onClick={async () => await props.qromaHatApi.pausePlayback() }>Pause playback</button>
        </div>
      );
    }
  }

  
  return (
    <>
      <div>
        <input 
          type="range"
          id="minutes_range"
          min="0" 
          max="15" 
          value={devicePlaybackIntervalMinutes} 
          onChange={handleMinutesChange}
          disabled={devicePlaybackIntervalMinutes === undefined}
          />
        <label for="minutes_range">Minutes {devicePlaybackIntervalMinutes}</label>
      </div>

      <div>
        <input 
          type="range"
          id="seconds_range"
          min="0" 
          max="55"
          value={devicePlaybackIntervalSeconds} 
          onChange={handleSecondsChange}
          disabled={devicePlaybackIntervalSeconds === undefined}
          />
        <label for="seconds_range">Seconds {devicePlaybackIntervalSeconds}</label>
      </div>

      Total Seconds: {toUpdateTotalPlaybackIntervalInSeconds}
      {userTriedToGoBelowMinIntervalThreshold ? "Can't have intervals less than " + MinIntervalThresholdInSeconds + " seconds" : undefined}

      <div>
        {hatConfig === undefined ? "hatconfig" : JSON.stringify(hatConfig)}
      </div>

      <div>
        <button onClick={() => applyThisPlaybackDirectoryConfiguration() }>Use this directory playback configuration</button>
      </div>

      <div>
        <button onClick={() => showNext() }>Show next</button>
      </div>

      <div>
        <PlaybackButton />
      </div>

      {/* <div>
        <button onClick={() => pauseOrResumePlayback() }>Show next</button>
      </div> */}

      <div>
        <b>Images in Playback Directory ({devicePlaybackDir})</b>
      </div>
      {
        imageDirItems.map(di => (
          <div>{di.name}</div>
        ))
      }
    </>
  )
}