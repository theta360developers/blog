---
layout: post
comments: true
title:  "THETA Live Streaming -- Convert Dual-Fisheye to Equirectangular "
date:   2017-01-25
author: "Craig Oda"
categories: Video
---
The RICOH THETA S outputs a dual-fisheye video stream. To view and navigate the video
stream, developers need to convert the video into equirectangular format.

## Your App Sees Dual-Fisheye

![](/blog/img/2017-01/dualfisheye.jpg)

## You Want Equirectangular

![](/blog/img/2017-01/equirectangular.jpg)

## What's Available

* [THETA UVC FullHD Blender](/blog/video/unity/2016/12/02/theta-usb-live-streaming-full-hd-1080-free-upgrade.html) runs on Mac and Windows and will convert a
dual-fisheye stream into equirectangular. You can then use your Mac or Windows machine to stream it to YouTube. There's a
[step-by-step guide](http://theta360.guide/community-document/live-streaming.html).

* [RICOH R Dev Kit](http://lists.theta360.guide/t/new-ricoh-r-development-kit-focuses-on-live-streaming/786?u=codetricity) will perform stitching
inside of the camera and output an equirectangular stream from USB or HDMI. Available soon.

* Devices like the [Sony PlayStation VR Media Player](http://lists.theta360.guide/t/new-sony-playstation-vr-integration-with-ricoh-theta/691?u=codetricity) can
take equirectangular video files and stitch it in the media player. It can't convert a stream in real-time right now.

## When to Stitch the Spheres Yourself

The three most common applications where people want to stitch the spheres together themselves.

1. Streaming from mobile phone to YouTube (or Periscope)
2. Streaming directly into a headset or mobile phone
3. Streaming from small device like a Raspberry Pi

## Open Source Community Applications

NOTE: The problems described below apply to these open source projects as well as your own applications.

* [oF-thetaEquirectangular](https://github.com/theta360developers/oF-thetaEquirectangular) by Yasuhiro Hoshino
* [defisheye](https://github.com/theta360developers/defisheye) by @dinhnhat0401 - for GPUImage on iOS devices. Uses Hoshino-san's shader program
* [theta-s-quartz](https://github.com/theta360developers/theta-s-quartz) by Kieran Farr
* [thetaview.js](https://github.com/theta360developers/video-streaming-sample-app/blob/master/samples/common/thetaview.js) in the [video streaming sample app](https://github.com/theta360developers/video-streaming-sample-app) repository. JavaScript sample code to stimulate ideas for THETA contest.
* [Unity shader packs](https://github.com/theta360developers/unity-streaming) by goroman and stereoarts
* [THETA-S-LiveViewer-P5](https://github.com/theta360developers/THETA-S-LiveViewer-P5) by Kougaku. In Processing language.

## Problems Stitching Yourself

You will not get a perfect stitch on the edges. To get a good stitch, you will need the lens distortion data from RICOH, which is not available right now. At this stage,
it's best to use an official solution or wait for the RICOH R Development Kit. People have achieved fairly good-looking stitches without the lens distortion data.

## General Theory of Stitching
Assuming that you're a hobbyist and just want to quickly know what's involved in stitching, here's a quick overview.

The THETA camera is actually two cameras, one on each side of the camera body.

![](/blog/img/2017-01/theta-camera.png)

Each lens takes an angle slightly greater than 180 degrees. The image of each lens is a fisheye that is
radially symmetric in longitude and proportional in latitude from the center of the fisheye circle. The two fisheyes are combined together
into one equirectangular image by either using geometry alone or by detecting features points in each sphere and blending the spheres together.

![](/blog/img/2017-01/equirectangular-stitch.png)

## Summary
There is no one go-to solution that works to stitch a dual-fisheye stream into equirectangular. This problem may go away in the
next few years as the in-camera stitching technology evolves. RICOH apps and in-camera technology use lens distortion information
to align the edges of the spheres closely. Developers can only take a best-guess as to sphere alignment. Due to the quality of
the stitch on the Sony PlayStation VR video files, I'm speculating that RICOH may work with some large partners closely. I'd love to see
this technology trickle down to independent and boutique development partners in the future.

If someone builds a live-streaming application with an open source stitching library, please leave a comment in the
[Unofficial Guide community](http://lists.theta360.guide/) so that the
information can help other people.
