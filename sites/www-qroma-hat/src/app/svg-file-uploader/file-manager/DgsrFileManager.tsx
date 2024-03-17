import React, { useState } from "react"
import { IComponentState } from "../ComponentState"
import { createDgsrImageFileBytes } from "../dgsr_file_bytes_factory"
import { Grid } from "@mui/material"
import { DgsrFileDownloadToPc } from "./DgsrFileDownloadToPc"
import { DgsrFileLoadIntoHat } from "./DgsrFileLoadIntoHat"
import { DgsrFileInfo } from "./DgsrFileInfo"
import { createFilepathFromLabelText } from "./upload_filename_utils"


export interface IDgsrFileManagerProps {
  componentState: IComponentState
}


export const DgsrFileManager = (props: IDgsrFileManagerProps) => {
  const [isBusy, setIsBusy] = useState(false);

  const imageDataFileBytes = createDgsrImageFileBytes(props.componentState.grayscaleData);
  const fileNameRoot = "blob";
  const uploadFilePath = createFilepathFromLabelText(props.componentState.gsImageLabel);
  
  return (
    <Grid container spacing={2}>
      <Grid item xs={12}>
        <DgsrFileInfo
          isBusy={isBusy}
          imageDataFileBytes={imageDataFileBytes}
          fileNameRoot={fileNameRoot}
          uploadFilePath={uploadFilePath}
          imageLabel={props.componentState.gsImageLabel}
          />
      </Grid>

      <Grid item xs={6}>
        <DgsrFileLoadIntoHat
          isBusy={isBusy}
          setIsBusy={setIsBusy}
          imageDataFileBytes={imageDataFileBytes}
          fileNameRoot={fileNameRoot}
          />
      </Grid>

      <Grid item xs={6}>
        <DgsrFileDownloadToPc
          isBusy={isBusy}
          setIsBusy={setIsBusy}
          componentState={props.componentState}
          fileNameRoot={fileNameRoot}
          />
      </Grid>
    </Grid>
  )
}