import React from "react";
import { Stack, TextField } from "@mui/material";
import { useEffect } from "react";
import { useState } from "react";
import { GS_IMAGE_HEIGHT, GS_IMAGE_WIDTH } from "../constants";
import { ISvgTemplateFormProps, ISvgTemplateInputs, ISvgToGrayscaleTemplate } from "./ISvgToGrayscaleTemplate";
import { renderToString } from "react-dom/server";
import { ISvgToGrayscaleInputs } from "../SvgTemplateSelector";
import ImageUploader from "../ImageUploader";



// const fontFamily = 'Arial, Helvetica, sans-serif';

// const DEFAULT_FONT_FAMILY = "Monospace";
// const DEFAULT_FONT_FAMILY = "Arial, Helvetica, sans-serif";
// const DEFAULT_FONT_SIZE = 160;


const EMBEDDED_IMAGE_URL = "";
const DEFAULT_IMAGE_LABEL = "Put Image Name Here";

export interface IEmbeddedImageSvgProps {
  embeddedImageUrl: string
  xOffset: number
  yOffset: number
}


export const EmbeddedImageSvg = (props: IEmbeddedImageSvgProps) => (
  <svg 
    xmlns="http://www.w3.org/2000/svg"
    xmlnsXlink="http://www.w3.org/1999/xlink"
    version="1.1" 
    // baseProfile="full" 
    width={GS_IMAGE_WIDTH}
    height={GS_IMAGE_HEIGHT}
    >
    <rect 
      width="100%" 
      height="100%" 
      fill="white"
      stroke="black"
      strokeWidth="20"
      strokeOpacity="1.0"
      >
    </rect>
    <image
      x={props.xOffset}
      y={props.yOffset}
      xlinkHref={props.embeddedImageUrl}
      />
  </svg>
);

const createEmbeddedImageSvgGenerationInputs = (embeddedImageUrl: string, svgImageLabel: string, xOffset: number, yOffset: number): ISvgToGrayscaleInputs => {
  const newSvgText = renderToString(
    <EmbeddedImageSvg 
      embeddedImageUrl={embeddedImageUrl}
      xOffset={xOffset}
      yOffset={yOffset}
      />);
  
  return {
    newSvgText,
    svgImageLabel,
  }
}
  

export interface IEmbeddedImageTemplateFormProps {
  svgGenerationInputsUpdateFn: (svgGenerationInputs: ISvgToGrayscaleInputs) => void
}

const EmbeddedImageTemplateForm = (props: IEmbeddedImageTemplateFormProps) => {

  const [imageLabel, setImageLabel] = useState(DEFAULT_IMAGE_LABEL);
  const [imageDataUrl, setImageDataUrl] = useState("");
  const [xOffset, setXOffset] = useState(30);
  const [yOffset, setYOffset] = useState(40);

  const onNewImageDataUrl = (imageDataUrl: string) => {
    setImageDataUrl(imageDataUrl);
  }

  const validateNumericInput = (inputString: string | null, minNum: number, maxNum: number): number | null => {
    if (inputString === null) return null;

    const intValue = parseInt(inputString);
    if (intValue >= minNum && intValue <= maxNum) {
      return intValue;
    }
    return null;
  }
  
  useEffect(() => {
    props.svgGenerationInputsUpdateFn(createEmbeddedImageSvgGenerationInputs(imageDataUrl, imageLabel, xOffset, yOffset));
  }, [imageDataUrl, imageLabel, xOffset, yOffset]);


  return (
    <>
      <Stack spacing={2}>
        <div>
          Embedded Image X Offset: {xOffset}
          <button onClick={() => {
            const promptMessage = "Choose X Offset (0-450)";
            const newXoffset = window.prompt(promptMessage, xOffset.toString());
            const validated = validateNumericInput(newXoffset, 0, 450);
            if (validated !== null) {
              setXOffset(validated);
            }
            }}>
            Change
          </button>
        </div>
        <div>
          Embedded Image Y Offset: {yOffset}
          <button onClick={() => {
            const promptMessage = "Choose Y Offset (0-250)";
            const newYoffset = window.prompt(promptMessage, yOffset.toString());
            const validated = validateNumericInput(newYoffset, 0, 250);
            if (validated !== null) {
              setYOffset(validated);
            }
            }}>
            Change
          </button>
        </div>
        <ImageUploader
          onNewImageDataUrl={onNewImageDataUrl}
          />
        <TextField
          // required
          id="outlined-required"
          label="Image Name"
          key="single-line-text-line1-input"
          value={imageLabel}
          onChange={(e) => {
            const value = e.target.value;
            setImageLabel(value);
            props.svgGenerationInputsUpdateFn(createEmbeddedImageSvgGenerationInputs(imageDataUrl, imageLabel, xOffset, yOffset));
          } } />
      </Stack>
    </>
  );
}


export const EmbeddedImageTemplate: ISvgToGrayscaleTemplate = {
  templateTitle: "Embedded Image",
  defaultSvgToGrayscaleInputs: () => createEmbeddedImageSvgGenerationInputs(EMBEDDED_IMAGE_URL, DEFAULT_IMAGE_LABEL, 0, 0),

  formProvider: (formProps: ISvgTemplateFormProps) => 
    <EmbeddedImageTemplateForm 
      svgGenerationInputsUpdateFn={formProps.svgGenerationInputsUpdateFn}
      />,
}
