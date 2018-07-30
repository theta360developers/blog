---
layout: post
comments: true
title:  "6 Ways to Find Your THETA IP Address"
date:   2018-08-01
author: "Craig Oda"
categories: plugin
---

In previous articles I explained how to configure [YouTube](http://theta360.guide/blog/streaming/2018/07/30/wireless-live-streaming.html) 
and [Facebook](http://theta360.guide/blog/streaming/2018/07/31/facebook-wireless.html)
for wireless live streaming.

Part of the configuration process involves using a web browser such as Chrome or
Firefox to save the YouTube or Facebook stream key to the THETA V. In order to 
start this configuration process, you need to know the IP address of your camera
when the camera is in **client mode**.

Here are six ways to find the IP address of your camera when it's connected to a Wi-Fi
hotspot as a *client*.

## 1. Use Ricoh Mobile App

The easiest way to find the IP address of your camera is to use the Ricoh mobile
app. After establishing a connection between your camera and your Internet router, use
the Ricoh mobile app and go to:

*Settings -> Camera settings -> Camera version*

You will see the IP address on the next screen.

![](/blog/img/2018-08/find-ip/mobile-ip.png)

This is the easiest and best way to find your IP address. If you can't use the
mobile app or if you want to use a different method, read on.

## 2. Log into you Wi-Fi router

If you are working at home, you can probably log into your Wi-Fi router
as an administrator and see the IP address that the router assigned the THETA V.

## 3. Use adb shell and ifconfig

If you're doing development, you probably have your THETA connected to your 
workstation with a USB cable. You can use the Android Debug Bridge (adb) to
get the IP address quickly.

    $ adb shell
    $ ifconfig

![](/blog/img/2018-08/find-ip/adb-shell.png)

![](/blog/img/2018-08/find-ip/mobile-ip.png)

In the example above, the IP address of my camera is 192.168.2.102.

In order to use adb, you must unlock your THETA V by joining the partner program.

## 4. Use Vysor to View Camera Status

Vysor also requires that you unlock your camera.  You can see the IP
address of the camera by going to *Settings*, then *Phone status*.

![](/blog/img/2018-08/find-ip/phone-status.png)

Once you click on *Status*, the IP address will be visible.


![](/blog/img/2018-08/find-ip/ip-address.png)

## 5. dns-sd

If you're on Mac OS X, you can use dns-sd. This technique does not
require your camera to be unlocked. You do not need to join the
partner program to use the techniques below.

### Technique 1: Using ping

    dns-sd -B _osc._tcp
    ping Instance_name.local

![](/blog/img/2018-08/find-ip/ping.png)

### Technique 2: Using THETA serial number

    dns-sd -G v4 THETAYLXXXXXXXX.local

![](/blog/img/2018-08/find-ip/dns-sd.png)

## 6. Use Python Scripts for Zeroconf

This technique will work on any camera. The camera does not 
need to be unlocked.

This [GitHub repository](https://github.com/codetricity/theta-client-mode) 
has two simple scripts.

Assuming your have zeroconf installed, you can run the script with:

    $ python3 find-theta.py

If you're a developer, the short video below may be useful.

[![](/blog/img/2018-08/find-ip/dns-sd.png)](https://youtu.be/z_9elAmeXv4)



Read the free 
[Plug-in User Guide](http://theta360.guide/plugin/) 
for more information. 