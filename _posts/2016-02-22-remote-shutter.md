---
layout: post
title:  "Remote Shutter for THETA S Using ESP8266"
date:   2016-2-22
author: "Craig Oda"
categories: Applications
---
This post
[originally appeared](https://developers.theta360.com/en/forums/viewtopic.php?f=4&t=120&p=1408#p1389)
 in the RICOH Developers Forum.

Thanks to Rune Kyndal for building this awesome remote control and posting
it in the forum.

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

Update:
Maybe I will draw up a quick "Pseudo" schematic.. not much to it though.
just an ESP-01 board a 3.3v LDO, 3 resistors. 2 leds. 1 button,
1 battery charger circuit board + battery, stuffed in a case.

## Related Information
Information below added by Craig.

* [RICOH THETA S Simple Remote Controller ESP8266 GitHub source code and information](https://github.com/katsuya-san/ESP8266-THETA-S-SimpleRemoteControler)
* [RICOH THETA S Full Remote Controller](https://github.com/katsuya-san/ESP8266-THETA-S-FullRemoteControler)

Pictures from
[Katsuya-san](https://github.com/katsuya-san), the original author of the code.

![](/blog/img/2016-02/case2.png)

![](/blog/img/2016-02/remote_control_case.png)

![](/blog/img/2016-02/remote_2.png)

![](/blog/img/2016-02/simple_remote.png)

## General ESP8266 Information

* [ESP8266 Community Wiki](http://www.esp8266.com/wiki/doku.php?id=esp8266-module-family)
* [SparkFun WiFi Module ESP8266](https://www.sparkfun.com/products/13678) $6.95
* [Adafruit HUZZAH ESP8266 Breakout](https://www.adafruit.com/products/2471) $9.95 - currently sold out
* [Adafruit Feather HUZZAH with ESP8266 WiFi](https://www.adafruit.com/products/2821) $15.95 - currently sold out
* [SparkFun esp8266 Thing Dev Board](https://www.sparkfun.com/products/13711) $15.95
