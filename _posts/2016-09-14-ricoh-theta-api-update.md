---
layout: post
comments: true
title:  "RICOH THETA API Update to 2.1"
date:   2016-09-14
author: "Craig"
categories: API
---

There is a new THETA API version [2.1](https://developers.theta360.com/en/docs/v2.1/api_reference/). The [version 2.0](https://developers.theta360.com/en/docs/v2.0/api_reference/) API still works for now, but it is recommended that you update your apps to ensure future compatibility.

App developers: Be aware these changes may affect your previously-published app in the future and it is your responsibility to make corresponding changes to either handle both versions or remind camera owners to update their firmware.

If you want to compare the different documentation versions, you can toggle between the two different versions using the green rectangle on the main API reference page.

<img src="http://lists.theta360.guide/uploads/default/original/1X/03486b89bf0ed7ea32523c36fd12afe02f4f08ae.png" width="383" height="286">

In your program, you can set the API version with `camera.setOptions`.

    {
        "name": "camera.setOptions",
        "parameters": {
            "sessionId": "SID_0001",
            "options": {
                "clientVersion": 2
            }
        }
    }

One of the major changes is that you do not have to specify the `sessionId` for command execution.


----------


*version 2.0*

    {
        "name": "camera.takePicture",
        "parameters": {
        	"sessionId": "SID_0001"
        }
    }


----------

*version 2.1*

    {
        "name": "camera.takePicture",
        "parameters": {
        }
    }



----------

The `_listAll` command of version 2.0 has been replaced with `listFiles`

Example (*version 2.1*)
<img src="http://lists.theta360.guide/uploads/default/optimized/1X/09aae769ef0a9cede748ee03d4e5520e236c92cc_1_690x56.png" width="690" height="56">

    {
        "name": "camera.listFiles",
        "parameters": {
        	"fileType": "all",
        	"entryCount": 3,
            "maxThumbSize": 640
        }
    }

----------

This means that that there are now four API versions in current use for the THETA, 3 for the THETA S and one for the THETA m15.

For the THETA S, the three APIs are:

1. [API v2.0](https://developers.theta360.com/en/docs/v2.0/api_reference/)
2. [API v2.1](https://developers.theta360.com/en/docs/v2.1/api_reference/) - which is often referred to as API v2 reference (there doesn't appear to be a clear difference between v2.0 and v2.1 in some of the reference documentation)
3. [v2 USB API](https://developers.theta360.com/en/docs/v2/usb_reference/) - this is based off of the MTP 1.1 specification not the OSC specification

----------

You should use the API v2.1 (the WiFi) one for your applications. There is no reason to use v2.0. v2 USB API can be used if you application works better with a USB connection, which is probably only the case for an application with specialized hardware like a Raspberry Pi Zero controller.

THETA API v2.1 is compliant with Open Spherical Camera (OSC) API level 2. Here are the differences between OSC API level 1 and OSC API level 2

# API level 2 key changes

* Deprecated sessionId and deprecated/modified related commands. API level 2 is designed for one client connection and camera manufacturer should make sure that only one client at any time is connected (for example via limiting only one wifi connection).
  * Deprecated commands [startSession](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.start_session.html) / [updateSession](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.update_session.html) / [closeSession](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.close_session.html).
  * Deprecated sessionId from input of commands [takePicture](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.take_picture.html) / [getOptions](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.get_options.html) / [setOptions](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.set_options.html).
* Deprecated commands [getImage](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.get_image.html) / [getMetadata](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.get_metadata.html).
  * The absolute URL of a file is used to download directly from the HTTP server of the camera.
* Added/modified commands and options for video capture, interval image capture and live preview.
  * Added commands [startCapture](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.start_capture.html) / [stopCapture](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.stop_capture.html) / [getLivePreview](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.get_live_preview.html) /  [reset](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.reset.html).
  * Renamed [listImages](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera.list_images.html) to [listFiles](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.list_files.html) and modified inputs/outputs to handle video type as well as image type.
  * Added options [previewFormat](https://developers.theta360.com/en/docs/v2.1/api_reference/options/preview_format.html), [captureInterval](https://developers.theta360.com/en/docs/v2.1/api_reference/options/capture_interval.html), [captureNumber](https://developers.theta360.com/en/docs/v2.1/api_reference/options/capture_number.html), [remainingVideoSeconds](https://developers.theta360.com/en/docs/v2.1/api_reference/options/remaining_video_seconds.html), [clientVersion](https://developers.theta360.com/en/docs/v2.1/api_reference/options/client_version.html).
* Added [360 video XMP specification](https://developers.google.com/streetview/open-spherical-camera/reference/header/video-xmp)
* Added apiLevel field to [/osc/info](https://developers.theta360.com/en/docs/v2.1/api_reference/protocols/info.html) output.
  * apiLevel: Field was added in API level 2. It is considered to be API level 1 by default when this field is missing. It is developers’ responsibility to retrieve this information and implement differently based on the value.

---

Result of GET to http://192.168.1.1/osc/info

<img src="http://lists.theta360.guide/uploads/default/original/1X/9b36867d6ba7601527bd06e280cbd0950f3f0167.png" width="461" height="344">

Result of POST to 192.168.1.1/osc/state

<img src="http://lists.theta360.guide/uploads/default/original/1X/c2c218267745dda568aa6c9533973874dd65c63b.png" width="343" height="341">

# [Register for the THETA Developer Ecosystem](http://theta360.guide/ecosystem/)
