import React, { useState } from 'react';
import { FormControl, InputLabel, Select, MenuItem, SelectChangeEvent, Box, Button, Grid, Stack } from '@mui/material';
import { ISvgTemplateInputs, ISvgToGrayscaleTemplate } from './svgTemplates/ISvgToGrayscaleTemplate';
import { SvgToGrayscaleTemplates } from './SvgToGrayscaleTemplates';


export interface ISvgToGrayscaleInputs {
  newSvgText: string
  svgImageLabel: string
}

export interface ISvgTemplateSelectorProps {
  svgTemplateIndex: number
  onNewSvgTemplateSelected: (templateIndex: number, newTemplate: ISvgToGrayscaleTemplate) => void
  onGenerateNewSvg: (svgGenerationInputs: ISvgToGrayscaleInputs) => void
  onSvgTemplateFormUpdate: (templateTitle: string, formValues: any) => void
  svgTemplateInputs: ISvgTemplateInputs
  onNewSvgTemplateInputs: (newSvgTemplateInputs: ISvgTemplateInputs) => void
  // dispatch: (React.Dispatch<ReturnTypeUnion<ActionCreators<typeof ReducerClass>>>) => void
  // dispatch: (value: ActionCreators<typeof ReducerClass>) => void
}


export const SvgTemplateSelector = (props: ISvgTemplateSelectorProps) => {

  // const [svgTemplateIndex, setSvgTemplateIndex] = useState(0);
  const [showSettings, setShowSettings] = useState(false);

  // const [state, dispatch] = useReducer(componentStateReducerFunction);


  const handleChange = (x: SelectChangeEvent<number>) => {
    const templateIndex = x.target.value as number;

    // setSvgTemplateIndex(templateIndex);
    console.log("SVG TEMPLATE INDEX: " + templateIndex);
    const newSvgTemplate = SvgToGrayscaleTemplates[templateIndex];
    props.onNewSvgTemplateSelected(templateIndex, newSvgTemplate);
  }

  const validateNumericInput = (inputString: string | null, minNum: number, maxNum: number): number | null => {
    if (inputString === null) return null;

    const intValue = parseInt(inputString);
    if (intValue >= minNum && intValue <= maxNum) {
      return intValue;
    }
    return null;
  }

  const validateChoiceInput = (inputString: string | null, choiceStrings: string[]): string | null => {
    if (inputString === null) return null;

    const intValue = parseInt(inputString) - 1;
    if (intValue >= 0 && intValue < choiceStrings.length) {
      return choiceStrings[intValue];
    }
    return null;
  }
  
  return (
    <>
    <Box sx={{ 
      // borderBottom: 1, 
      borderColor: 'divider' 
      }}>
      <Grid container spacing={2}>
        <Grid item xs={8}>
          {/* <Item> */}
            {/* xs=8 */}
            <FormControl fullWidth>
              <InputLabel id="svg-template-select-label">SVG Template</InputLabel>
              <Select
                labelId="svg-template-select-label"
                id="svg-template-select"
                value={props.svgTemplateIndex}
                label="SVG Template"
                onChange={handleChange}
              >
                {
                  SvgToGrayscaleTemplates.map((t, tIndex) => {
                    return (
                      <MenuItem value={tIndex} key={t.templateTitle}>
                        {t.templateTitle}
                      </MenuItem>
                    )
                  })
                }
              </Select>
            </FormControl>
          
          </Grid>
          <Grid item xs={4}>
            <Button onClick={() => setShowSettings(!showSettings) }>{showSettings ? "Hide Settings" : "Settings"}</Button>
          </Grid>
          {
            showSettings ? 
              <Grid item xs={12}>
                <Stack spacing={2}>
                  
                  <div>
                    Font Size: {props.svgTemplateInputs.fontSize} 
                    <button onClick={() => {
                      const newFontSize = window.prompt("Choose new font size (20-300)", props.svgTemplateInputs.fontSize.toString());
                      console.log("NEW FONT SIZE: " + newFontSize);
                      const validated = validateNumericInput(newFontSize, 20, 300);
                      if (validated !== null) {
                        props.onNewSvgTemplateInputs({
                          ...props.svgTemplateInputs,
                          fontSize: validated,
                        });
                      }
                    }}>
                    Change
                    </button>
                  </div>
                  <div>
                    Border Thickness: {props.svgTemplateInputs.borderWidth}
                    <button onClick={() => {
                      const newBorderWidth = window.prompt("Choose new border thickness (10-300)", props.svgTemplateInputs.borderWidth.toString());
                      console.log("NEW BORDER THICKNESS: " + newBorderWidth);
                      const validated = validateNumericInput(newBorderWidth, 10, 300);
                      if (validated !== null) {
                        props.onNewSvgTemplateInputs({
                          ...props.svgTemplateInputs,
                          borderWidth: validated,
                        });
                      }
                      }}>
                      Change
                    </button>
                  </div>
                  <div>
                    Font Family: {props.svgTemplateInputs.fontFamily}
                    <button onClick={() => {
                      const promptMessage = "Choose new font family\n1 - Arial\n2 - exo";
                      const newFontFamily = window.prompt(promptMessage, "1");
                      console.log("NEW FONT FAMILY THICKNESS: " + newFontFamily);
                      const validated = validateChoiceInput(newFontFamily, ["arial", "exo"]);
                      if (validated !== null) {
                        props.onNewSvgTemplateInputs({
                          ...props.svgTemplateInputs,
                          fontFamily: validated,
                        });
                      }
                    }}>
                    Change
                  </button>
                </div>
              </Stack>
            </Grid> : null
          }
          
        </Grid>

      <div>
        {/* under box */}

        {/* {SvgToGrayscaleTemplates[svgTemplateIndex].formProvider(props.onGenerateNewSvg)} */}
      </div>
    </Box>
    </>
  )}

export { SvgToGrayscaleTemplates };
  