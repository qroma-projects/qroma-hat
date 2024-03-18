import React from "react"
import { IQromaHatApi } from "../api/QromaHatApi"


export interface ISelectImageButton {
  path: string
  qromaHatApi: IQromaHatApi
}

export const SelectImageButton = (props: ISelectImageButton) => {

  const showHatImage = () => {
    console.log("SHOWING HAT IMAGE - " + props.path);
    props.qromaHatApi.showImageFile(props.path);
  }

  return (
    <>
      <button onClick={() => showHatImage()}>
        {props.path}
      </button>
    </>
  )
}