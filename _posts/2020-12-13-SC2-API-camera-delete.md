---
layout: post
comments: true
title:  "SC2 API camera.delete problems and workaround"
date:   2020-12-10
author: "community"
categories: 
---

# SC2 API September Community Update

Last updated September 18, 2020.

This is a community document based on contributions of
informal test results 
from the [theta360.guide independent community](https://www2.theta360.guide/).  This is
not an official RICOH document.  For official information, please
contact RICOH.  You should confirm these community tips with your
own tests prior to deployment in a business setting.  As these are
unofficial tips, the official RICOH THETA API may change unexpectedly
and these techniques could stop working. 

## Firmware Update

* SC2 for business: 6.12 released on Aug 25, 2020
* SC2: 1.42 released on September 3, 2020

## Problem Description and Fixes

With SC2B firmware version 6.01 and SC2 firmware 1.31, it was
not possible to delete all the files  with a single API call.  

New firmware addresses this problem. 

## Model

This is equivalent to firmware 1.31.

```
{
  "manufacturer": "RICOH",
  "model": "RICOH THETA SC2",
  "serialNumber": "40100146",
  "firmwareVersion": "06.01",
    ...
  },
  "apiLevel": [
    2
  ],
```

## Delete All Files

Camera contains 5 images initially.

![camera delete all](doc/images/delete.png)

First, check the files in the camera.

```dart
{
    'name': 'camera.listFiles',
    'parameters': {
      'fileType': 'image',
      'entryCount': 5,
      'maxThumbSize': 0,
      '_detail': true,
    }
  };
```

Note that I've set the `maxThumbSize` to zero as setting it to 640 will hang the camera.

```dart
200
{
  "name": "camera.listFiles",
  "results": {
    "entries": [
      {
        "name": "R0010005.JPG",
        "fileUrl": "http://192.168.1.1/files/thetasc2c0847dfebf755838793d3c13/100RICOH/R0010005.JPG",
        "size": 4172209,
        "isProcessed": true,
        "previewUrl": "",
        "dateTimeZone": "2020:08:30 10:28:00-07:00",
        "width": 5376,
        "height": 2688,
        "_thumbSize": 24532,
        "_recordTime": 0
      },
      {
        "name": "R0010004.JPG",
        "fileUrl": "http://192.168.1.1/files/thetasc2c0847dfebf755838793d3c13/100RICOH/R0010004.JPG",
        "size": 4098858,
        "isProcessed": true,
        "previewUrl": "",
        "dateTimeZone": "2020:08:19 09:58:34-07:00",
        "width": 5376,
        "height": 2688,
        "_thumbSize": 7275,
        "_recordTime": 0
      },
```


Request

```
{
    "name": "camera.delete",
    "parameters": {
      "fileUrls": ["all"]
    }
  };
```
Running a delete all returns a 200 OK response.
However, the images on the camera are still there. 

```
HTTP status code: 200
{"name":"camera.delete","state":"done"}
```

I check the files on the camera.  Yup, all of the 5 files remain.

Oh, no.

```
...
        "height": 2688,
        "_thumbSize": 10517,
        "_recordTime": 0
      }
    ],
    "totalEntries": 5
  },
  "state": "done"
  ```

## Firmware Upgrade

In this example, I'm using the desktop software on Windows 10.
However, you can also use the mobile app to upgrade the firmware.
The firmware file was about 90MB.

The desktop app was updated on September 3, 2020.

This walkthrough covers upgrading the desktop application first,
then using the desktop application to upgrade the camera firmware.

![desktop app](/blog/img/2020-12/desktop_app.png)

My desktop app is 3.13.3.  The newest version is 3.14.0.  I upgrade the desktop software first.

![new desktop app](/blog/img/2020-12/new_desktop_app.png)

With the latest version of the desktop app, I select _Firmware Update_ from the top _File_ menu.

![firmware update menu](/blog/img/2020-12/firmware_update_menu.png)

My camera is fully charged.  I start the process. 

![firmware](/blog/img/2020-12/02_firmware.png)

Check for new firmware.  Yup, there it is, waiting for you.  If you have an SC2, it will say, 1.31 to 1.42. 

![available](/blog/img/2020-12/03_firmware_available.png)

The transfer is done.  Let's reboot the camera.

![next steps](/blog/img/2020-12/04_firmware_next_steps.png)

We're up to date. Let's see if I can delete all the files.

![confirm firmware](/blog/img/2020-12/05_firmware_up_to_date.png)

## With New Firmware

Confirm firmware is updated with `info`.

Response from info.

```
{
  "manufacturer": "RICOH",
  "model": "RICOH THETA SC2",
  "serialNumber": "40100146",
  "firmwareVersion": "06.12",
```

Yay!  The firmware was upgraded and we can take another
crack at deleting all the files. 

Request list of files to see where we begin. 

```
{
  'name': 'camera.listFiles',
  'parameters': {
    'fileType': 'image',
    'entryCount': 5,
    'maxThumbSize': 0,
    '_detail': true,
  }
}
```

Returns a list of images as expected.  However, now we can
delete all the pictures from the camera.

```dart
{
    "name": "camera.delete",
    "parameters": {
      "fileUrls": ["all"]
    }
  };
```

Response.

```dart
200
{
  "name": "camera.listFiles",
  "results": {
    "entries": [],
    "totalEntries": 0
  },
  "state": "done"
}
```

Yay!  A big improvement for companies that want to delete all the files
at the end of a work day.

---
This tip and many more SC2 developer articles are available on the 
[SC2 Developers Community Site](https://theta360.guide/special/sc2/).
Markdown to PDF conversion done with [Grip](https://github.com/joeyespo/grip). 

__This is not an official RICOH document. It is produced by
an independent community.  Please contact RICOH for official
information.__ 