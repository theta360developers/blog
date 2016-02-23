---
layout: post
title:  "Remote Shutter for THETA S Using ESP8266"
date:   2016-1-20
author: "Craig Oda"
categories: Applications
---
This post
[originally appeared](https://developers.theta360.com/en/forums/viewtopic.php?f=4&t=120&p=1408#p1408)
 in the RICOH Developers Forum.

Hi Guys..
I just finished building a handy little remote shutter for my Theta S
thought i would share

I'm using
[Katsuya Yamamoto's ESP8266 "simple remote" code](https://github.com/katsuya-san/ESP8266-THETA-S-SimpleRemoteControler)

the only change i did to the code was to swap the I/O around to make it work with the
I/O available on the smaller ESP-01 board

    const int buttonPin = 0;
    const int led2Pin = 2;


i used a small Lipo battery and charger circuit. built the required ESP-01 circuit straight on to the 2x4 header.
and stuffed inside a cheap 9v battery case
(patent pending ugly hotglue birds-nest style)  

but she works

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3581.JPG)

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3590.JPG)

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3591.JPG)

thoughts. I'm using a AMS1117 3.3v LDO between the ESP and the li-po cell. not sure how well
that will work when the voltage drops..

oh.. and get a nicer shutter button.. 20 cent one.. not quite up to par ;)
