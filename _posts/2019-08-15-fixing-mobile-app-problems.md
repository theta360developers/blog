---
layout: post
comments: true
title:  "5 Most Effective Fixes For RICOH THETA Mobile App Problems"
date:   2019-08-15
author: "Craig Oda"
categories: mobile
---

Your THETA mobile app connects to your THETA, but you can't take a picture
or adjust the settings. Here are tips to get your mobile app working again
with THETA SC, S, V, and Z1.

## 1. Upgrade Firmware

![firmware upgrade](/blog/img/2019-08/firmware-upgrade.png)

This is the most common problem and an easy solution.  You can upgrade your firmware
with either the mobile app or the desktop app. I recommend using the desktop app
as I find the USB connection more reliable. 

This video will help you with the firmware upgrade process.

[https://youtu.be/B8SqFLDfqus](https://youtu.be/B8SqFLDfqus)



## 2. Clear All Settings from Camera

![reset button](/blog/img/2019-08/reset.png)

The settings in the camera can get corrupted. This has
been 
[extensively documented by the community](https://community.theta360.guide/t/plug-in-for-theta-v-settings-reset-now-in-store/4505/4?u=codetricity).  People have even traced a problem to a setting such as `offDelay`  being set to `null`.  We're not sure how
it is possible to delete the `offDelay`, but it can occur.

Normally, this is a fairly big problem as you need the mobile app to change the settings of the camera.  If you 
can't connect to the camera with the mobile app to change the settings, what do you do?

Fortunately, a group of community developers created, 
[Settings Reset](https://pluginstore.theta360.com/plugins/guide.theta360.settingsreset/) 
for the RICOH THETA V. You can install this plug-in using a USB cable connected to your
laptop.  It will reset your settings.  

This plug-in may also work with the THETA Z1, but I haven't tried it.

For THETA S and SC, you can use the API directly using this [article and 
companion video](https://community.theta360.guide/t/ricoh-theta-factory-reset-using-api/2907?u=codetricity).

Note that clearing the settings has also worked for other problems, including 
[problems with self timer activation](https://community.theta360.guide/t/theta-v-3-00-1-solved-self-timer-activates-for-video-only/4516?u=codetricity).


## 3. Power Cycle

Make sure you press and hold the power button for longer than 8 seconds. This will turn off the THETA V and reset the THETA SC and THETA S.

See this post on Facebook from someone with a THETA SC.

![reset button](/blog/img/2019-08/power-down.png)

## 4. Disable Mobile Phone Battery Optimization

![battery optimization 1](/blog/img/2019-08/battery-optimization.png)

![battery optimization 2](/blog/img/2019-08/battery-optimization-2.png)

![battery optimization 3](/blog/img/2019-08/optimization-3.png)

![battery optimization 4](/blog/img/2019-08/optimization-4.jpeg)

![battery optimization 5](/blog/img/2019-08/optimization-5.png)


## 5. Disable Mobile Data When Using Mobile App

Some phones have problems staying connected to the RICOH THETA camera as it
does not provide Internet access.  The phone will automatically try to push
the traffic through the mobile data network.  Set your phone to airplane mode
to disable mobile data then enable Wi-Fi mode only.


## Other Problems

If you're still having problems, you can try searching through the 
[theta360.guide forum](https://community.theta360.guide/).  If you're still stuck,
you can post a question and ask for the help of the community.



