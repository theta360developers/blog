---
layout: post
comments: true
title:  "YouTube 360 Videos and 360 Images on Linux in VM"
date:   2016-2-28
author: "Craig Oda"
categories: Applications
---

![](/blog/img/2016-02/ubuntu-vmware.png)

When using Linux in a VM as a development environment for the THETA,
people often encounter
problems testing 360 video and images. Here is what works:

* Linux in VMware VM with 3D hardware acceleration on Firefox. YouTube 360
works with navigation.
[Akokubo JavaScript Viewer code](https://github.com/theta360developers/ThetaViewer)
works on FireFox.

* Linux in VirtualBox VM with 3D hardware acceleration disabled.
YouTube 360 video works in VM, but things are generally slow.

The following works in a Linux VM and is covered in the
[Unofficial API Guide](http://codetricity.github.io/theta-s/):

* dual network interfaces to connect to the THETA and the Internet at the
same time from inside of the VM (using NAT)
* command line access to THETA from bash shell with curl
* extensive Python examples to access THETA from Linux, including downloading
media
* JavaScript examples to access THETA from Linux with NodeJS

The following does not work in a Linux VM (as of 2/28/2016). If you get
it to work, send me a note.

* YouTube or other 360 image navigation with Chrome
* Stitching videos into equirectangular mode on Linux
* Viewing 360 videos on Linux from local media, not on YouTube
