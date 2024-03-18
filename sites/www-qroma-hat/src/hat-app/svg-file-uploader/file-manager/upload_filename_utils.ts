

const sanitizeLabelTextForFilename = (labelText: string, maxLength: number): string => {
  const noSpaces = labelText.replace(/\s/g, '_');
  const lettersAndNumbersOnly = noSpaces.replace(/[^\w]/g, '');
  const truncated = lettersAndNumbersOnly.slice(0, maxLength);
  return truncated;
}

export const createFilepathFromLabelText = (labelText: string): string => {
  const sanitized = sanitizeLabelTextForFilename(labelText, 20);
  const path = "/dgsr/" + sanitized + ".dgsr";
  return path;
}