---
layout: post
comments: true
title:  "RICOH THETA S API Over USB Cable"
date:   2016-05-09
author: "Craig Oda"
categories: Camera
---

The RICOH THETA S 360 camera can be controlled with an API that is accessible using WiFi. Version 2 of the API is compliant with Google Open Spherical Camera API specification.

An alternative to using the RICOH THETA S API over WiFi exists that works over an USB cable. This is a different API and requires firmware version 01.42 or later.  v2 USB API uses extended PTP, or Picture Transfer Protocol, as the communications protocol.

To use v2 USB API, go to:

[Official RICOH THETA USB Reference v2](https://developers.theta360.com/en/docs/v2/usb_reference/)

On the RICOH developer forum,
[MattWymore posted](https://developers.theta360.com/en/forums/viewtopic.php?f=4&t=626) this:

> I figured out how to make this work. This feature does work correctly, you just have to issue “raw” MTP/PTP commands to get it to work. So if anybody else is using the Windows Portable Devices API to control the Theta S, keep this in mind:
>
> 1. It looks like you can’t use the WPD command WPD_COMMAND_STILL_IMAGE_CAPTURE_INITIATE to initiate capture. If you use this command the driver returns an error to you.
>
> 2. The correct way to do this is to use WPD_COMMAND_MTP_EXT_EXECUTE_COMMAND_WITHOUT_DATA_PHASE and set up all the  parameters and Op Code for image capture and then send that command. Take a look at this example from Microsoft for setting things up. Basically you just need to change the Op Code to 0x100E (for initiate capture) and change the StorageID to 0x0 (as documented in the Theta v2 USB API) and you are ready to go.
>
> Hopefully this helps out anybody that is trying to do tethered capture.

#Resources

These are untested.

## C, C++

* [Windows Dev Center, Supporting MTP Extensions (C, C++)](https://msdn.microsoft.com/en-us/library/windows/desktop/ff384848(v=vs.85).aspx)

## Python

* [PyMTP](https://pypi.python.org/pypi/PyMTP) (Python bindings to LibMTP)
* [python-mtp](https://github.com/emdete/python-mtp) (another libmtp Python wrapper)

## MTP Specification

* [MTPforUSB-IFv1.1](https://theta360blog.files.wordpress.com/2016/04/mtpforusb-ifv1-1.pdf)

## libmtp

* [libmtp](http://libmtp.sourceforge.net/) on SourceForge
* installing [libmtp on Ubuntu](http://askubuntu.com/questions/611054/where-is-libmtp)

On my system, Xenial Xerus, Ubuntu 16.04, I already had libmtp installed. I think it may be installed with Calibre ebook reader.

    ricoh@xerus:~/Documents/community-document$ dpkg -l *libmtp*
    Desired=Unknown/Install/Remove/Purge/Hold
    | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
    |/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
    ||/ Name Version Architecture Description
    +++-==============-============-============-=================================
    ii libmtp-common 1.1.10-2ubun all Media Transfer Protocol (MTP) com
    ii libmtp-runtime 1.1.10-2ubun amd64 Media Transfer Protocol (MTP) run
    un libmtp8 <none> <none> (no description available)
    ii libmtp9:amd64 1.1.10-2ubun amd64 Media Transfer Protocol (MTP) lib
    ricoh@xerus:~/Documents/community-document$

Ready for more?

# [$45,000 in prizes for the RICOH THETA x IoT Developers Contest](http://theta360.guide/contest/)
