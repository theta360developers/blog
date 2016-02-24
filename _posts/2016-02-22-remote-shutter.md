---
layout: post
comments: true
title:  "Remote Shutter for THETA S Using ESP8266"
date:   2016-2-22
author: "Craig Oda"
categories: Applications
---
The main idea for this post
[originally appeared](https://developers.theta360.com/en/forums/viewtopic.php?f=4&t=120&p=1408#p1389)
in the RICOH Developers Forum. Thanks to Rune Kyndal for building his awesome remote control and posting
information on it in the forum. Rune was also kind enough to point us to the original code from
Katsuya-san, which opened up a range of possibilities for the community to
hack ESP8266 boards to control the THETA S 360 camera. I extended Rune's post to include
general information on ESP8266 boards and added information on the projects from Katsuya-san,
the original author of the code for the ESP8266 THETA remote shutter project.

## What is an ESP8266 and Why Should I Care?
If you search on the Internet, you'll quickly learn that the ESP8266
is a small WiFi module that cost between $6 and $15, with a typical price
of $10 for the module with
accessories built on the dev board such as breadboard breakout pins, LED monitoring
lights, and flash. Most of the early excitement around the ESP8266 dealt
with adding WiFi support to Arduino boards. However, as $10 (and cheaper)
ESP8266 boards have a MCU, flash, and bootloader, people have been running
the $10 boards standalone with a battery.

For projects with the THETA S, the ESP8266 can connect to the THETA S
using WiFi, then send HTTP commands directly to the THETA to take
pictures and control the camera.

![](/blog/img/2016-02/remote_2.png)

It's a cool little project and very gratifying to press a remote button
and hear the THETA S shutter chirp. :-)

Join in and share your THETA project.

## Rune Kyndal's Completed Controller for the THETA S
From Rune Kyndal
Hi Guys..
I just finished building a handy little remote shutter for my THETA S camera and
thought I would share it.

I'm using
[Katsuya Yamamoto's ESP8266 "simple remote" code](https://github.com/katsuya-san/ESP8266-THETA-S-SimpleRemoteControler)

The only change I made to the code was to swap the I/O around to make it work with the
I/O available on the smaller ESP-01 board

    const int buttonPin = 0;
    const int led2Pin = 2;


I used a small Lipo battery and charger circuit and built the
required ESP-01 circuit straight onto the 2x4 header.
Everything is stuffed inside of a cheap 9v battery case
(patent pending ugly hot glue birds-nest style)  

But, she works.

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3581.JPG)

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3590.JPG)

![](https://dl.dropboxusercontent.com/u/1644351/theta-remote/IMG_3591.JPG)

Additional thoughts, I'm using a AMS1117 3.3v LDO between the ESP and the li-po cell. not sure how well
that will work when the voltage drops..

oh.. and I need to get a nicer shutter button. The 20 cent one I am using is
not quite up to par ;)

Update:
Maybe I will draw up a quick "Pseudo" schematic.. not much to it though.
just an ESP-01 board a 3.3v LDO, 3 resistors. 2 leds. 1 button,
1 battery charger circuit board + battery, stuffed in a case.

## Katsuya-san's ESP8266 THETA S Remote Controller
Information below added by Craig.

[Katsuya-san](https://github.com/katsuya-san) developed two remote control units
for the THETA S. One version has a single button control and the other
version has full controller features. Both versions are based on the
[Switch Science ESP-WROOM-02](https://www.switch-science.com/catalog/2500/)
 development board. Although it looks like this board is only available in
 Japan, other 8266 boards are available globally. People in the US
 should be able to source parts from places like [Adafruit](https://www.adafruit.com/)
 [SparkFun](https://www.sparkfun.com/). Although I have not checked their
 parts inventory, you may be able to find components at places like
 [Digi-Key](http://www.digikey.com/) and
 [Mouser Electronics](http://www.mouser.com/).

* [RICOH THETA S Simple Remote Controller ESP8266 GitHub source code and information](https://github.com/katsuya-san/ESP8266-THETA-S-SimpleRemoteControler)
* [RICOH THETA S Full Remote Controller](https://github.com/katsuya-san/ESP8266-THETA-S-FullRemoteControler)

Pictures from
[Katsuya-san](https://github.com/katsuya-san), the original author of the code.

![](/blog/img/2016-02/case2.png)

![](/blog/img/2016-02/remote_control_case.png)

![](/blog/img/2016-02/simple_remote.png)

## General ESP8266 Information

* [ESP8266 Community Wiki](http://www.esp8266.com/wiki/doku.php?id=esp8266-module-family)
* [SparkFun WiFi Module ESP8266](https://www.sparkfun.com/products/13678) $6.95
* [Adafruit HUZZAH ESP8266 Breakout](https://www.adafruit.com/products/2471) $9.95 - currently sold out
* [Adafruit Feather HUZZAH with ESP8266 WiFi](https://www.adafruit.com/products/2821) $15.95 - currently sold out
* [SparkFun esp8266 Thing Dev Board](https://www.sparkfun.com/products/13711) $15.95
