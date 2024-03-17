import React from "react";


export interface IDgsrFileInfoProps {
  isBusy: boolean
  fileNameRoot: string
  imageLabel: string
  uploadFilePath: string
  imageDataFileBytes: Uint8Array
}


export const DgsrFileInfo = (props: IDgsrFileInfoProps) => {
  const { isBusy, fileNameRoot, imageDataFileBytes } = props;
  
  return (
    <>
      <div>{fileNameRoot}</div>
      <div>{props.imageLabel}</div>
      <div>{props.uploadFilePath}</div>
      <div>{imageDataFileBytes.length} bytes</div>
    </>
  )
}