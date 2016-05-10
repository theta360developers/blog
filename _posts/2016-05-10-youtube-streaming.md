---
layout: post
comments: true
title:  "THETA Live Streaming on YouTube"
date:   2016-05-10
author: "Craig Oda"
categories: Camera
---

The main content for this article was originally written by
[Motoaki Tanigo](https://medium.com/@tanigox)
 on his blog in Japanese
 I’ve made a few changes for clarity. For example, I changed the links to go to the English versions and added screenshots.

![](/blog/img/2016-05/theta-logo.png)

# THETA UVC Blender Setup

Download the live streaming application from the RICOH site and install it on your PC or Mac desktop computer.

## [Download](https://theta360.com/en/support/download/)

![](/blog/img/2016-05/driver-download.png)


Update from Craig: I have a detailed
[tutorial on installing THETA UVC Blender live-streaming app](http://theta360.guide/community-document/uvc-theta.html).

# Setup the Live Streaming Encoder

Download any of the
[live streaming applications recommended by YouTube](https://support.google.com/youtube/answer/2907883?hl=en),
and do the set up. I’m using
[Wirecast Play](http://www.telestream.net/controls/wirecast-play/download-wirecast-play.htm).

Update from Craig: I’ve also tested
[Open Broadcaster Software (OBS) Studio](https://obsproject.com/)
64 bit. It’s free and open source. Works great.

# Create a Live Streaming Event on YouTube

1 Log into YouTube. Click  on the “Upload” button. Click the “start” button on the live streaming.

![](/blog/img/2016-05/youtube-event-setup.png)

2 On the live streaming menu, you’ll see “immediate delivery” and “event.” Select “event.”

![](/blog/img/2016-05/youtube-event.png)


3 Click on the “New live event” button. Add the title. Set the start time in the “basic information” tab description.

![](/blog/img/2016-05/new-event.png)

4 Click on the “Advanced Settings” tab. Click the checkbox for “This live stream is 360°” under the new 360° video section.

![](/blog/img/2016-05/livestream-checkbox.png)

After completing these steps, click the “Create Event” button.

# Start THETA S in Live Streaming Mode
![](/blog/img/2016-05/thetas_livestreaming.jpg)

THETA S in live streaming mode. The blue lights in the red circle flash. The word “Live” appears.
Hold down the “camera” button of THETA S while pressing the “Power” button. The THETA will start in live streaming mode. If the setup is successful, the “Live” mark will light up on the front of the THETA S.

# Deliver the Live Streaming Encoder to YouTube

Connect the THETA S to set up the encoder. Add “THETA UVC Blender” as the camera.

In Wirecast Play, click on the “stream” button, to authenticate the YouTube account, to start the live streaming.

Update from Craig: For OBS, copy the Stream key into the box below.

    Settings => Stream => Stream key

![](/blog/img/2016-05/streamkey-youtube.png)

Here’s my Video resolution settings. As of 5/5/16, the THETA S can only output 1920 x 720 through the USB UVC Blender driver.

![](/blog/img/2016-05/obs-resolution-settings.png)

# 360 Degree Live Streaming Example

This
[video](https://youtu.be/lkUI7vH8BYs)
will give you a feeling for what it looks like when it’s streaming:


Update from Craig.

Found this cool and awesome
[video tutorial on live streaming to YouTube with the THETA S](https://youtu.be/1HrmtE8j5o8)
by Jeremy Sciarappa.

{% include youtubePlayer.html id="1HrmtE8j5o8" %}

![](/blog/img/2016-05/screenshot-stream.png)

I was able to successfully to get live streaming to YouTube using Open Broadcaster Software (OBS) Studio. Although the process took me a few days to figure out, you should be able to get everything set up in 15 minutes. The documentation from YouTube was pretty thin when they first announced support of 360 streaming. Thanks to the wonderful magic of the community, there is now wealth of documentation on this process, only a week after the announcement. It will be easy for you to get set up and stream 360 videos.:-)  Let’s dive in!

You should follow the
[video tutorial above by Jeremy Sciarappa](https://youtu.be/1HrmtE8j5o8).
If you’re having problems installing the software, refer to this article on
[THETA live streaming with equirectangular output](http://theta360.guide/community-document/uvc-theta.html).

I’ve documented some of the problems I encountered in the hope that it’ll help other people avoid these pitfalls.

First, I needed to delete my existing webcam from the “Camera” list in Live Control Room. Then, I realized that I was having bandwidth problems, which resulted in a blurry image.

![](/blog/img/2016-05/capture_blurry.png)

I decided to use Custom settings instead of Quick. I’m not sure if this is needed, but it worked for me.

![](/blog/img/2016-05/livestream-custom-encoding.png)

I also realized that the Stream Name is different per event.

![](/blog/img/2016-05/stream-name.png)

When I first started using OBS, I didn’t have the screen sized properly. Right click on the UVC THETA source (or whatever you named the camera source) and select Transform => Stretch to screen.

![](/blog/img/2016-05/obs-setting-stretch-to-screen.png)


I then hit Start Streaming from my Windows 10 computer in Palo Alto.

Take a break and celebrate with your friends around the world. My colleague Tyler was able to see the 360 stream in San Francisco with full navigation. He wants to buy a headset now.

![](/blog/img/2016-05/streaming-test-san-francisco.png)

Live stream configuration test using my Palo Alto home Internet for upstream. Image is clearer when I have more bandwidth
I’ll update the blurry image above when I bring my laptop to a place with more bandwidth. The actual bitrate at my house is under 1Mbps, too low for a good test.

Ready for more?

# [$45,000 in prizes for the RICOH THETA x IoT Developers Contest](http://theta360.guide/contest/)
