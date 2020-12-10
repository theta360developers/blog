---
layout: post
comments: true
title:  "Live Streaming Plug-in RTSP"
date:   2020-12-10
author: "Science Arts"
categories: "RTSP"
---

# Overview
This is a Live Streaming Plug-in for the RICOH THETA V and Z1.  It starts an RTSP
server on the THETA.

This software was developed by Science Arts.  The THETA V plug-in is available in the
[RICOH THETA Plug-in Store](https://pluginstore.theta360.com/plugins/com.sciencearts.rtspstreaming/).  I have heard from Science Arts that they are submitting the Z1 to the Plug-in Store.  You do not need to compile the plug-in from source unless you intend to modify the source code.   If you just want to use the plug-in, get the finished plug-in from the store.  It is free. 

## Usage

You can open and play the RTSP Stream from RTSP client tool like VLC.

1. Set RICOH THETA in Wireless LAN client mode.

Video: [https://youtu.be/tkqyBNOWWIY](https://youtu.be/tkqyBNOWWIY)

Manual: [https://theta360.com/en/support/manual/v/content/prepare/prepare_08.html](https://theta360.com/en/support/manual/v/content/prepare/prepare_08.html)

2. In the basic app for smartphone, select "Settings" > "Camera settings" and set "THETA RTSP Streaming" in "Plug-in", then tap the icon displayed next to "Starting plug-in".

If the application is launched successfully, video LED on RICOH THETA turns on.

3. Find out and remember the IP Address of RICOH THETA.

i. Open the basic app for smartphone.

ii. select "Setting" > "Camera setting" > "Camera version", then get IP Address.


4. Receive live streaming from RTSP client application like vlc.

vlc live streaming example

i. Open the vlc.

ii. select "Media" > "Open Network Stream", then set a network URL like below.
rtsp://[your RICOH THETA IP Address]:8554/live?resolution=1920x960
You can set a resolution of camera by the parameter which name of "resolution".
You can set the "resolution" to "640x320", "1024x512", "1920x960" or "3840x1920". "3840x1920" may not work because of bandwidth.

iii. If you want to change the resolution, push Stop Playback Button and retry (ii).

### Select App in Settings to set permissions

Using scrcpy or vysor to select the plug-in settings.

![select](/blog/img/2020-12/select.png)


### Enable Camera Persmissions

Move the slider switch for Camera permissions.

![enable](/blog/img/2020-12/enable.png)

### Put camera in client mode wifi

![client mode](/blog/img/2020-12/client-mode.png)


### Press and hold mode button to put the Z1 into plug-in mode

![z1 screen](/blog/img/2020-12/z1-screen.png)

### Select plug-in by pressing the shutter button

![z1 running](/blog/img/2020-12/z1-running.png)

When the plug-in is running, the blue LED on the Z1 body turns aqua. The OLED shows a puzzle piece.

The USB cable is to supply power to the camera.

### Open Network Stream on VLC

![network stream](/blog/img/2020-12/rtsp-vlc-open.png)

### Set Address and URL of THETA

![set address](/blog/img/2020-12/rtsp-network-address.png)

### View Equirectangular View in VLC

![equirectangular view](/blog/img/2020-12/rtsp-vlc-view.png)

### Adjust resolution to 1920x960 or 3840x1920

![3840 x 1920](/blog/img/2020-12/rtsp-3840x1920.png)


![3840 x 1920 view](/blog/img/2020-12/rtsp-3840x1920-view.png)

---

## Supply Power to Camera

With firmware 1.60.1 on the z1, the camera can stream indefinitely. The current draw is between 0.7A and .9A when streaming at 4K.  The battery is charging.

![electrical current](/blog/img/2020-12/electrical-current.png)


I am using an inline electrical current meter to monitor the power consumption.

### 8 hour 4K test - battery at 97%

![charging](/blog/img/2020-12/charging.png)


With firmware 1.60.1, the THETA Z1 heat management is improved.  Camera can stream indefinitely.

## Video Stream Navigation

You can use Go Pro VR Player to navigate around the video stream. 

![navigation](/blog/img/2020-12/navigation.gif)

Configuration.

![go pro config](/blog/img/2020-12/gopro-config.png)



## Possible Issues

I have problems using VLC on Windows.  Linux works fine.

On Ubuntu 20.04 with VLC 3.0.9.2, I have error messages, but the plug-in works fine and I can see the equirectangular view.