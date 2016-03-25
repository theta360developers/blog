---
layout: post
comments: true
title:  "Upgrading Firmware in RICOH THETA S"
date:   2016-03-24
author: "Craig Oda"
categories: Camera
---

![](/blog/img/2016-03/firmware-upgrade.png)

I upgraded to firmware 1.42 today using the RICOH desktop application on
Windows. The big feature is a self-timer. Press the WiFi and the power button
together to start the camera is timer mode. You will see a green light.

 ![](/blog/img/2016-03/green-timer.png)

As usual, the upgrade went smoothly. I've been upgrading the firmware
since before the camera was launched and I've never experienced a problem.
However, I know people do encounter problems, sometimes to the extent that
their camera is bricked.

The main source of the problem is that the camera is not fully charged.
If the camera is under 30% charge, your chance of a firmware upgrade
failure is increased.

Although there are many ways to check your battery level, I find it
convenient to connect to the camera with WiFi and send it an `osc/state`
command.

    http://192.168.1.1/osc/state

From here, I can easily see the battery level.

![](/blog/img/2016-03/battery-level.png)

The 'batteryLevel' will be one of `0.0, 0.33, 0.67, 1.0`

I have a full charge. :-)

I have my THETA S plugged directly into the rear panel of my computer,
not a hub. I haven't had any problems using a hub, but I do have a
powered USB hub of good quality. I suggest you plug the camera
directly into the rear panel of the computer.

Then, I [verify that I have the newest version of Adobe Air](https://helpx.adobe.com/air/kb/determine-version-air-runtime.html).

![](/blog/img/2016-03/adobe-air.png)

I then upgrade my THETA desktop application.

![](/blog/img/2016-03/ricoh-app.png)

At this point, I should have everything nicely upgraded and I can upgrade
the firmware from within the application. The camera should be off when you
plug it into the USB cable. After the firmware is transferred, leave the
camera off and unplug it. Then, when the camera is unplugged, you can
turn it on to start the upgrade process. The blue mode light will stop flashing
and you'll be upgraded.
