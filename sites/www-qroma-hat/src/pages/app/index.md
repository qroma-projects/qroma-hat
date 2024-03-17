---
title: Qroma Hat App
---

import BrowserOnly from '@docusaurus/BrowserOnly';
import { SvgToGreyscaleArduinoFileTool } from '../../app/svg-file-uploader/SvgToGreyscaleArduinoFileTool';

# Qroma Hat App

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