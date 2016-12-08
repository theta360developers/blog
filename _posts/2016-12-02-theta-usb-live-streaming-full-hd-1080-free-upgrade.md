---
layout: post
comments: true
title:  "THETA USB Live Streaming Now in Full 1080 HD - Free Upgrade"
date:   2016-12-02
author: "Craig Oda"
categories: Video, Unity
---

At the end of November, RICOH released
free upgrades to the THETA firmware, mobile app, and UVC Blender.
The most important upgrade was 1080 full HD live streaming using USB at 30 fps.
This increase in resolution from 720 is a game changer for live streaming.
Previously, live streaming with USB was limited to 1280x720 at 15fps.
It's a lot clearer now. I confirmed RICOH's announcement with my own
tests showing 1920x1080 at 30fps.

<img src="http://lists.theta360.guide/uploads/default/original/1X/90a770d1558d734994b9e14dcd4616d2ff0e8566.png" width="690" height="446">


Mobile app updates include:

* interval composite shots
* color temperature specification shots
* register shooting conditions as *My Setting*

You can upgrade your THETA firmware with the desktop application.

You need to be running firmware version 1.82 or above. This [discussion thread covers upgrading your firmware](http://lists.theta360.guide/t/upgrading-firmware-in-ricoh-theta-s/66/2?u=codetricity).

Official RICOH Announcements:

* [Mobile App and UVC Blender](https://theta360.com/en/info/news/2016-11-24-1/) (Nov 24)
* [Firmware 01.82](https://theta360.com/en/info/news/2016-11-24-2/) (Nov 24)

## [Official RICOH UVC Blender (Live Streaming App) and Mobile App Download Site](https://theta360.com/en/support/download/)

<img src="http://lists.theta360.guide/uploads/default/original/1X/bd29d4a969553fdd5f07fde03237d0c394f2046e.png" width="109" height="141">

<img src="http://lists.theta360.guide/uploads/default/original/1X/4f20f0c89db450a612f4f16d6a263b5afa0ec2ed.png" width="375" height="265">

<img src="http://lists.theta360.guide/uploads/default/original/1X/a0302c6c657d53d07ba393d99e8d2b48ece74ee9.png" width="400" height="156">

Ready for more?

Give live streaming to YouTube a try. Instructions are in the [live streaming guide](http://lists.theta360.guide/t/360-live-streaming-guide-for-ricoh-theta/621)

Have more questions?

Here's a quick QA.

**Q: What do I need to stream to YouTube or other video site**

A: You need to install UVC Blender (also called live streaming app) which will convert the USB video stream into equirectangular format. The THETA will appear to your system as a webcam. With UVC Blender installed there will be multiple THETA *webcams*. Select *THETA UVC FullHD Blender*.

**Q: Will UVC Blender work with HDMI?**

A: No. You need to use third-party software or hardware solutions. See the live streaming guide for more information.

**Q: Can I Stream with WiFi?**

A: No. UVC Blender only works with a USB cable. The THETA S only supports streaming over WiFi with live preview which is intended to preview a scene before you take a still image. The live preview mode is 640x320 at 10fps. The output is equirectangular.

**Q: Can I save the output of UVC Blender to a file to get around the storage limitations of the THETA?**

A: Yes. Free software like OBS can save the output of UVC Blender to a file.

<img
src="http://lists.theta360.guide/uploads/default/original/1X/a6949673a9b5ad442b7ff0402d0062390ba3088b.png" width="196" height="184">

The file will be in equirectangular format.

<img src="http://lists.theta360.guide/uploads/default/original/1X/e9d7f8bf22aab6ac66b3fd2bf5c75dae02c40490.jpg" width="690" height="424">

You can load the file directly up to YouTube. [Sample video](https://www.youtube.com/watch?v=KTKgASgUF8g). When I first loaded the video up, it did not have the navigation icon. After I let it sit on YouTube for a while, the 360 navigation icon was automatically added.

The next section explains how to edit the file with Premiere Pro VR mode and share it on YouTube 360.

**Q: How do I edit the file I saved to disk from UVC Blender with Adobe Premiere Pro VR mode?**

A: You can import the clip into Premiere Pro, adjust the VR projection data and then edit it in VR mode.

<img src="http://lists.theta360.guide/uploads/default/original/1X/ab922fb18c37aaa9f17c55d86754292ac073161f.png" width="690" height="419">

Right click on the clip. Select Modify -> Interpret Footage.

<img src="http://lists.theta360.guide/uploads/default/original/1X/72894e41bfa95fadbaadefd641d13debcd4f896f.png" width="423" height="237">

Set the Projection to *Equirectangular*

<img src="http://lists.theta360.guide/uploads/default/original/1X/5bcd48982bf903eb418328d3531052054f0be094.png" width="612" height="233">

Select your sequence. On the top menu, select Sequence -> Sequence Setting.

<img src="http://lists.theta360.guide/uploads/default/original/1X/246b083f9d017a8005f3c7b897e81958d7b161c0.png" width="393" height="219">

In the VR Properties section, select Projection: Equirectangular.

<img src="http://lists.theta360.guide/uploads/default/original/1X/d701ede0cd5a8fa389f4cdb503f3b97220184dfb.png" width="633" height="214">

Your clip properties will now look like this.

<img src="http://lists.theta360.guide/uploads/default/original/1X/f1ababce9910beedb502b26f7623234e48c361df.png" width="298" height="196">

Right-click on the video, select VR Video -> Enable.

<img src="http://lists.theta360.guide/uploads/default/original/1X/457ecf77bea306d749cde3c3eb03cbff3bfd39f7.png" width="567" height="369">

You will now be able to use the VR controls in Premiere Pro and view the video as if you were watching it on YouTube 360 or a headset.

Export the video, inject metadata, then upload to YouTube. You will have 360 navigation in a headset or browser.

<img src="http://lists.theta360.guide/uploads/default/original/1X/5be59575b0069cc2a7d84552158808a6e0dc6ef0.jpg" width="690" height="379">

---

**Q: How can I view the saved 360 files on my desktop?**

A: many desktop software can view 360 videos. For example, I used the open source vlc 3.0 to view the files I saved from THETA UVC FullHD Blender. I needed to [inject the metadata](https://github.com/google/spatial-media/releases)

Here's a screenshot of the THETA UVC FullHD Blender file playing in VLC media player 3.0.0.  Navigation works in 360.

<img src="http://lists.theta360.guide/uploads/default/original/2X/e/eee339314958300068c1883d2c04ff7cab25f14d.png" width="400" height="250">

Make sure you're using the VLC version 3.0.0 or above.

<img src="http://lists.theta360.guide/uploads/default/original/2X/7/7dd76414c1632890274c340b31afedaf6a29c56a.png" width="450" height="247">
