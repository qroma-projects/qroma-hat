import React from "react"
import { IQromaHatApi } from "../../api/QromaHatApi"


export interface IConfigureOtherModeComponentProps {
  qromaHatApi: IQromaHatApi
}

export const ConfigureOtherModeComponent = (props: IConfigureOtherModeComponentProps) => {

  return (
    <>
      <div>Other Mode Component</div>
      <div>
        <button onClick={() => props.qromaHatApi.showBlackScreen() }>Show Black Screen</button>
      </div>
      <div>
        <button onClick={() => props.qromaHatApi.showWhiteScreen() }>Show White Screen</button>
      </div>
      <div>
        <button onClick={() => props.qromaHatApi.showDefaultScreen() }>Show Default Image</button>
      </div>
    </>
  )
}