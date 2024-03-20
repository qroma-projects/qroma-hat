---
title: Use Qroma Hat
---

import BrowserOnly from '@docusaurus/BrowserOnly';
import { QromaHatManageImagesComponent } from "../hat-app/manage-images/QromaHatManageImagesComponent";


# Use Qroma Hat

To connect to your Qroma Hat device, plug it into your computer's USB port
  and click the Connect button. When prompted
to connect to a serial port, select the entry with the most likely name 
(e.g. something-<b>usbserial</b>).


<BrowserOnly>
{() => {
  return (
    <QromaHatManageImagesComponent
      />
  )
}}
</BrowserOnly>