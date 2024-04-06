import React from "react"
import { SelectImageButton } from "./SelectImageButton";
import { DirItem, DirItemType } from "../../../react-qroma-lib";
import { IQromaHatApi } from "../../api/QromaHatApi";


export interface ISetImageComponentProps {
  qromaHatApi: IQromaHatApi
  activeDir: string
  activeDirItems: DirItem[]
}


export const SetImageComponent = (props: ISetImageComponentProps) => {
  const imageDirItems = props.activeDirItems.filter(di => di.dirItemType === DirItemType.DIT_FILE && di.name.endsWith(".dgsr"));

  return (
    <>
      {
        imageDirItems.map(di => (
          <SelectImageButton
            path={props.activeDir + "/" + di.name}
            label={di.name}
            key={di.name}
            qromaHatApi={props.qromaHatApi}
            />
        ))
      }
    </>
  )
}