import React from "react"
import { ViewModeOption } from "./HatControlComponent"
import { DirItem } from "../../react-qroma-lib"
import { HatConfiguration } from "../../qroma-proto/my-project-messages"


export interface IViewModeComponentProps {
  hatConfig: HatConfiguration | undefined
  viewMode: ViewModeOption | undefined
  setViewMode: (mode: ViewModeOption) => void
  activeDir: string
  activeDirItems: DirItem[]
}

export const ViewModeComponent = (props: IViewModeComponentProps) => {

  const onChange = (event) => {
    console.log("VIEW MODE: " + event.target.value);
    const newViewMode = event.target.value as ViewModeOption;
    props.setViewMode(newViewMode);
  }

  console.log("VIEW MODE INIT: " + props.viewMode)

  if (props.viewMode === undefined) {
    return (
      <>
        <div>Loading Configuration...</div>
      </>
    )
  }

  return (
    <>
      <div>
        <label>
          <input type="radio" value="set-image" onChange={onChange} 
            checked={props.viewMode === 'set-image'}
            />
          Use Image in Directory
        </label>
        <label>
          <input type="radio" value="playback-dir" onChange={onChange}
            checked={props.viewMode === 'playback-dir'} 
            />
          Playback Images from Directory
        </label>
        <label>
          <input type="radio" value="other" onChange={onChange}
            checked={props.viewMode === 'other'} 
            />
          Other
        </label>
      </div>
    </>
  )
}