import React from "react"
import { IQromaHatApi } from "../../api/QromaHatApi"


export interface ISelectImageButton {
  path: string
  label: string
  qromaHatApi: IQromaHatApi
}

export const SelectImageButton = (props: ISelectImageButton) => {

  const showHatImage = () => {
    console.log("SHOWING HAT IMAGE - " + props.path);
    props.qromaHatApi.showImageFile(props.path);
  }

  return (
    <>
      <div>
        <button onClick={() => showHatImage()}>
          {props.label}
        </button>
      </div>
    </>
  )
}