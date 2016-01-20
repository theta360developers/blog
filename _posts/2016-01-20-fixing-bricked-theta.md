---
layout: post
title:  "RICOH THETA S Won't Boot - FIXED"
date:   2016-1-20
author: "Jesse Casman"
categories: Camera
---
I was able to unbrick my RICOH THETA S, and I’m sharing some of my results here. 

Background: I was running the RICOH THETA app version 2.0.0. This version has a known bug with the firmware upgrade. Unfortunately, I was unaware of this. I updated my firmware through the MacOS X RICOH THETA app to 1.21. Soon thereafter, my RICOH THETA S would not boot up. All of the blue lights on the front would blink, then a red light would come on, and a triple bee-bee-beep would happen, and it would shut down in about 3-5 seconds. Over and over.

![THETA with all lights blinking blue](/blog/img/2016-1/theta_blinking.jpg)

First I thought it was not charged. I tried charging, but the red charging light would only stay on for about 20 seconds, maybe a little longer.

Then I began imagining I had dropped it or something, maybe it was actually broken. But seeing these posts here and talking with codetricity, I realized it was bricked. If I could update the firmware, maybe we could get it to boot up again.

Steps to fix: First step, press and hold wifi button on the side and the shutter button on the front. While holding them, press the power button. Mine booted, with a front red light coming on (I think), and with the front wifi, video and LIVE blue lights blinking continuously.

Second step: Press and hold the wifi and shutter buttons, and DO NOT press power. Attach to the Mac while holding the two buttons down. (Yes, this is cumbersome.) I then connected to my MacOS X Macbook Air via USB and made sure I could see it as an attached device. 

If Photos comes up automatically, that may be an issue. Go into Photos, under the Import tab, unclick Open Photos for this device. Then unplug and plug back in.

If you see the RICOH THETA as a device, it’ll show up in Finder as RICODCX. Also, the front red light on the camera stays on continuously at this point (I think). Double click to open RICODCX. There should be two files, DCIM and MISC. Delete both. I believe this gets rid of a corrupted file. I do not know this for a fact, though.

Third Step: Unplug, turn off, and then reattach to the Mac while holding the wifi and shutter buttons down at the same time.

At some point here, under RICOH THETA please check for newest version and update the RICOH THETA app to 2.0.1.

Final step: Now, in the RICOH THETA app, under File, run Firmware Update. Here’s the interesting part. I went through the firmware update. If the camera is not connected (or not connected properly) you will get an error message. I was nicely connected at this point. 

The updater told me I was already running 1.21 and the newest version is the same version, 1.21, therefore no need to update. This felt like a dead end. But try ignoring this. I thought it would not upgrade or reinstall the firmware, but… after unplugging and restarting, my RICOH THETA S is healthy. Attaches to iPhone, takes pictures, everything.

Good luck!