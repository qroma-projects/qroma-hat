import React, { useState } from "react";


export interface IDgsrFileLoadIntoHatProps {
  isBusy: boolean
  setIsBusy: (busy: boolean) => void
  fileNameRoot: string
  imageDataFileBytes: Uint8Array

  // componentState: IComponentState
}


export const DgsrFileLoadIntoHat = (props: IDgsrFileLoadIntoHatProps) => {
  const { isBusy, setIsBusy, fileNameRoot, imageDataFileBytes } = props;

  const [fileBytes, setFileBytes] = useState<Uint8Array | null>(null);
  

  const handleFileChange = (event) => {
    const selectedFile = event.target.files[0];
    const reader = new FileReader();

    reader.onload = (event) => {
      const arrayBuffer = event.target.result;
      const uint8Array = new Uint8Array(arrayBuffer);
      setFileBytes(uint8Array);
    };

    reader.readAsArrayBuffer(selectedFile);
  };


  const handleUploadFromLocalClick = () => {

  }


  const handleUploadFromPcClick = () => {
    // if (file) {
    //   const reader = new FileReader();
    //   reader.onload = (event) => {
    //     const arrayBuffer = event.target.result;
    //     const uint8Array = new Uint8Array(arrayBuffer);
    //     setFileBytes(uint8Array);
    //   };
    //   reader.readAsArrayBuffer(file);
    // }
  }


  return (
    <>
      <div>
        <button disabled={isBusy} onClick={handleUploadFromLocalClick}>
          {isBusy ? "Loading..." : "Upload This to Hat"}
        </button>
      </div>
      <div>
        <input type="file" onChange={handleFileChange} />
        {fileBytes !== null ? fileBytes.length : ""}
        <button disabled={isBusy || !fileBytes} onClick={handleUploadFromPcClick}>
          {isBusy ? "Loading..." : "Upload From File to Hat"}
        </button>
      </div>
    </>
  )
}