---
layout: post
comments: true
title:  "First Impression of Unity for THETA Live Streaming"
date:   2016-10-15
author: "Craig Oda"
categories: Live Streaming
---
I spent last night in Santa Cruz and was planning to go surfing this morning,
but when I woke up, I saw that red tide had hit the coast and was I decided
to stay on shore, install Unity on my laptop and get Makoto-san's
[ThetaWifiStreaming](https://github.com/theta360developers/ThetaWifiStreaming)
app working.

Wow. I simply opened up the project in Unity, pressed _Play_, and the WiFi
360 streaming started to work.

![](/blog/img/2016-10/unity/game-view-crop.png)

Going to the _Scene_ tab, I was able to change the perspective.

![](/blog/img/2016-10/unity/scene-1-crop.png)

Using the scroll wheel, I was able to zoom out on the sphere to see exterior
of the 360 video.

![](/blog/img/2016-10/unity/scene-2-crop.png)

Usually, when you watch a 360 video on YouTube, your perspective
is from the center of the sphere. It's cool to see the outside. It's so
cool that I zoomed out more and realized I could put the sphere on a plane.

![](/blog/img/2016-10/unity/scene-4-crop.png)

I adjusted the Scene view to get a top-down perspective of the video sphere
and see the stitching.

![](/blog/img/2016-10/unity/scene-3-crop.png)

I then oriented the camera to face me directly to get a better view of the
stitching.

![](/blog/img/2016-10/unity/top-down-sphere.png)

The stitching to equirectangular MotionJPEG is done inside of the THETA using
RICOH's proprietary ASIC chip. As you would expect, the stitching is great.
The main downside is that the video stream
is only 640x320 and streams over WiFi at 10fps.

In a
[previous blog post](http://theta360.guide/blog/live/streaming/2016/10/14/wifi-streaming-theta-s-unity.html), I showed a picture from Makoto-san of his app working
on a mobile phone.

The streaming is intended only to preview still images. However, it's fun to
play with and get a taste for what might be possible in the future with 360
video streams.
