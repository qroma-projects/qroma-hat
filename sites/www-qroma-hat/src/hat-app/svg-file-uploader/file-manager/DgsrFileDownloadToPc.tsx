import React, { useEffect, useState } from "react"
import { createDgsrImageFileBytes } from "../dgsr_file_bytes_factory"
import { IComponentState } from "../ComponentState"


export interface IDgsrFileDownloadToPcProps {
  isBusy: boolean
  setIsBusy: (busy: boolean) => void
  fileNameRoot: string

  componentState: IComponentState
}


export const DgsrFileDownloadToPc = (props: IDgsrFileDownloadToPcProps) => {
  const { isBusy, setIsBusy, fileNameRoot } = props;
  
  var [svgDownloadDataUrl, setSvgDownloadDataUrl] = useState("");
  var [dgsrDownloadDataUrl, setDgsrDownloadDataUrl] = useState("");

  useEffect(() => {
    const imageSvgText = props.componentState.svgImageText;
    const svgFileContents = new Blob([imageSvgText], { type: 'text/plain' });

    let svgReader = new FileReader();
    svgReader.readAsDataURL(svgFileContents);
    svgReader.onload = () => {
      const imageDataUrl = svgReader.result as string;
      setSvgDownloadDataUrl(imageDataUrl);
    };

    const imageDataFileBytes = createDgsrImageFileBytes(props.componentState.grayscaleData);
    const fileContents = new Blob([imageDataFileBytes], { type: 'application/octet-stream' });
    
    let dgsrReader = new FileReader();
    dgsrReader.readAsDataURL(fileContents);
    dgsrReader.onload = () => {
      const imageDataUrl = dgsrReader.result as string;
      setDgsrDownloadDataUrl(imageDataUrl);
    };

  }, [props.componentState.grayscaleData, props.componentState.svgImageText]);

  const handleDownloadSvgClick = () => {
  
    const fileName = fileNameRoot + ".svg";
    setIsBusy(true);

    const element = document.createElement("a");
    element.href= svgDownloadDataUrl;
    element.download = fileName;
    document.body.appendChild(element);
    element.click();
    
    setTimeout(() => {
      setIsBusy(false);
      document.body.removeChild(element);
    }, 2000);
  }


  const handleDownloadDgsrClick = () => {

    const fileName = fileNameRoot + ".dgsr";
    setIsBusy(true);

    const element = document.createElement("a");
    element.href= dgsrDownloadDataUrl;
    element.download = fileName;
    document.body.appendChild(element);
    element.click();

    setTimeout(() => {
      setIsBusy(false);
      document.body.removeChild(element);
    }, 2000);
  }


  return (<>
    <div>
      <button disabled={isBusy} onClick={handleDownloadSvgClick}>
        {isBusy ? "Loading..." : "Download SVG to PC"}
      </button>
    </div>
    <div>
      <button disabled={isBusy} onClick={handleDownloadDgsrClick}>
        {isBusy ? "Loading..." : "Download DGSR to PC"}
      </button>
    </div>
  </>)
}