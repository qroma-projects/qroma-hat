---
title: Manage Images
---

import BrowserOnly from '@docusaurus/BrowserOnly';
import { SvgToGreyscaleArduinoFileTool } from '../hat-app/svg-file-uploader/SvgToGreyscaleArduinoFileTool';

# Manage Qroma Hat Images

To connect to your Qroma Hat device, plug it into your computer's USB port
  and click the Connect button. When prompted
to connect to a serial port, select the entry with the most likely name 
(e.g. something-<b>usbserial</b>).

[Use the Upload page](/advanced-io/upload-file) to put your file on the hat's board


<BrowserOnly fallback={<div>SvgToGreyscaleArduinoFileTool is only available in the browser</div>}>
  {() => {
    return (
      <SvgToGreyscaleArduinoFileTool 
        />
    );
  }}
</BrowserOnly>