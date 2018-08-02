---
layout: post
comments: true
title:  "Wireless Live Streaming Top Tips"
date:   2018-08-02
author: "Jesse Casman"
categories: plugin
---
Thanks to the community, we received many tips to use the THETA V to stream to
YouTube using Wi-Fi, mobile data hotspot, and USB tethering to a mobile phone.
I've collected the best tips from the community here for you.

Read the free [Plug-in User Guide](http://theta360.guide/plugin/) for more information.

# Introduction

The THETA V can stitch videos in real-time inside the camera. With this technology, a direct connection to a live streaming service such as YouTube can be easily implemented by using Plug-in.

A big benefit is that VR live streaming ("live") can be easily accomplished without a computer using a wireless router (either a mobile router or a Wi-Fi router at home) or smartphone tethering. If you tether the THETA to your smartphone, you do not need to launch the THETA application even during live streaming. 

The ability to stream directly from the camera to YouTube without a separate app appears to be a unique strength of the THETA V compared to other 360 cameras.

This is useful when you travel for a short time with mobile scenes such as travel destinations and events.

If you use the tethering function of a mobile router or smartphone to live stream on a 4G line, be careful of data bandwidth limitations. As a guideline, for 2k video, you need 3 Mbps (sufficient level for watching with a smartphone etc., insufficient resolution to see with HMD), and 1GB of packets will be used in about 45 minutes. 

With 4k video, approximately 4 times the bandwidth is necessary. Also, in wireless LAN mode, since heat generation will increase, it’s not suitable for live streaming for a long time period. Thermal shutdown occurs. It is likely to be good enough if it is used for short time periods several times in a month.
* If you do live streaming with a wired connection (directly connected to a router with a USB - Ethernet conversion cable) as described below, thermal shutdown will be less likely to occur because power consumption used by Wi-Fi is suppressed.

## How to Start Up YouTube Live Streaming When You Are All Prepped

*Everyday Usage*

1. Turn on tethering to smartphone. (This operation is unnecessary if it is a home Wi-Fi router)
2. When you turn on the THETA V, the green wireless LED will be blinking. Once connected to tethering (router function), it changes to solid.
3. Press the side MODE button for 2 seconds. The LED above the shutter button turns white.
4. Press the shutter button. The red LED will begin flashing. This will start live streaming on YouTube. That’s all it takes!

After that, if you send the URL to your friends, etc., via text or email, you can watch live video from friends from smartphone or a computer, just by clicking the URL. It is not necessary to launch the THETA application. The same URL can be used many times. Live streaming anytime, anywhere, immediately.

The viewer may not be able to watch in 360 degrees unless the default browser is Chrome.

**During evaluation so far, although it is possible to start and stop live streaming with THETA's shutter button multiple times, YouTube will stop continuous live streaming by the following day. It has not been clarified on what timing it is stopping. However, even after YouTube stops live streaming, the original settings are preserved, so, it seems that live streaming can resume with the same URL and the same key.*

## Preliminary Preparation of YouTube settings

*This is the most annoying part*

1. Create a YouTube account (channel). People who have one can use it as-is.
2. Access YouTube from a PC or Mac. (It can not be set up from a smartphone.)
3. Click on your account icon in the upper right corner of the YouTube site and select Creator Studio.
4. When the dashboard comes up, click Live Streaming on the left side and select Events.
5. Click New Live Event in the upper right.
6. Fill in the Title. Any title is okay, even “test,” but you have to put in something.
7. To the right of the Title, you select the video privacy setting. Let's choose Public.
8. Basically, if someone does not know the URL, whichever setting you choose, it will not change much, so you can leave it alone.
9. There is a setting for the time and date under the Title. Set up the day and then set the time slightly before the current time (within 30 minutes). For example, if the current time is 2:20, set it to 2:00. With this setting, you can start broadcasting immediately.
10. Click Advanced settings next to Basic info.
11. At the lower right corner, place a ✓ for *This live stream is 360°*
12. At the bottom right, click Create Event.
13. At the bottom of the next screen, click *Reusable stream key* and choose *Create new stream*.
14. You can enter anything for the Stream name.
15. By choosing the maximum bit rate, you can assume mobile access and choose 1080p. In this case, the distribution will be Full HD. It’s realistic to get Full HD when it is used for mobile. When using 4k, it is necessary to secure enough bandwidth like having a network environment with fiber optic lines.
16. Click Save Change. For the moment, your YouTube settings are all finished.
17. Go to the live console screen and copy the URL and the streaming key. In my case, I sent it in Gmail to myself. (This will be useful later.) This URL and Key can be used repeatedly.

## Preliminary Preparation THETA V Setting

*What is client mode?*

1. Background: Wireless LAN is a convenient function in Client Mode (CL). It is an indispensable setting when using wireless live streaming, cloud uploading, etc. However, before getting used to it, you may be confused by this setting.

CL Mode is not difficult. Everyone uses a computer connected by Wi-Fi at home or office, are you not? In this case, since the computer is operating in CL Mode in a wireless environment, it is normal Wi-Fi usage and not special. THETA V's CL Mode is equivalent to connecting via Wi-Fi to a router, just like a computer. Once set, it will automatically connect to Wi-Fi. 

However, THETA has no display or keyboard. Therefore, some preliminary preparation is required. Everyone uses Wi-Fi when connecting THETA and smartphones, right? That one-to-one mode is called Wi-Fi Ad Hoc Mode. It is only a one-to-one connection, though, and a Wi-Fi connection is required every time since THETA is the parent, and the smartphone is the child. This can be inconvenient. 

Using CL Mode, THETA can now connect with the net via a router just like other IoT devices. In other words, by using CL Mode, THETA V will be included with other IoT devices.

OK, I will return to preparation.

2. Confirm that wireless LAN is set to CL Mode as described in the previous step.
  If it is not set to CL Mode, connect THETA V and smartphone via Wi-Fi Ad Hoc Mode (direct connection mode) and switch to CL Mode. CL Mode is the same as when a laptop is connected to Wi-Fi and an IP address is automatically assigned when connected to an access point or a router. CL Mode is also called Infrastructure Mode, which is more common, but Apple seems to call it CL Mode.
3. If you are already in CL Mode, press the Wi-Fi button on the THETA and the blinking green LED will change to solid. You’re connected to the router. In this state, THETA is connected to the net by giving the router (parent) an IP address (address on the net) as a child, equivalent to other IoT devices (computer, smartphone etc. ...).
4. In this state, the smartphone is also connected to the router. In the Wi-Fi setting for the smartphone, find the SSID for THETA and connect to it there.
5. Launch the THETA application and select Picture --> Settings in the camera.
5.1 It is now connected to THETA via the router.
5.2 If there’s a red display on the smartphone indicating that you’re not connected to the camera, it is not connected properly. Let's try restarting the THETA once.
6. Choose Camera Setting in Settings. Choose Wireless Live Streaming in the plug-in listing.
7. Go back one and start the plugin. When you tap the web pages icon, the web screen display will come up. Now enter the streaming resolution and bitrate. I suggest copying the YouTube URL and Key from here. It’s a pain to enter URL and Key that you got on the computer to your smartphone. I sent the Key and URL information from the computer to the smartphone by Gmail and then can copy it easily on the smartphone. There are less mistakes this way. 
8. This time, the resolution for live streaming is 1920 x 1080 30 fps (in other words 2k) is chosen.
9. Also, set the bit rate to 3 Mbps.

## Start Streaming

1. When you turn on the THETA V power, the green wireless LED flashes. After that, it changes to solid when connected to tethering (router function).
2. Press the side MODE button for 2 seconds. The LED above the shutter button turns white.
3. On the above smartphone web screen, tap the streaming start button.
The red LED on the THETA V will come on (indicating that it is streaming)
4. Preview is done on the live control screen in YouTube (on the computer). If the live screen comes up, things are good. However, let's keep going even if it does not come up.
5. On the YouTube screen, press the start streaming button.
6. Let's get the YouTube broadcast URL by clicking on the share button.
7. By entering the broadcast URL in a web browser, if you can see the live screen, it’s a success!
8. Share the URL to your friends and when they enter it in a browser, they can see the live streaming from anywhere in the world.
9. A delay of 10 - 20 seconds will occur, but live streaming is like that. (It will be faster if it is a paid service)
10. If you share the URL by email, etc., viewers will see 360 degree movies / sound that can be rotated. However, when you share the URL by other apps, sometimes only equirectangular versions will only be displayed. Not all apps support 360° movies. In this case, the viewer will be able to play 360° movies by opening them in Safari, so it works fine but it will take a little while.
11. Now you have set the URL that you will use, you can use the THETA V button at any time without touching the YouTube settings, as described above in *How to Start Up YouTube Live Streaming When You Are All Prepped.*

## Practical Use - Live streaming in mobile environment

Basically, the tethering function of the Wi-Fi router, the mobile router, and the smartphone in the house, etc., have differences in the method connecting to the Internet, but all of these work equally well as seen from the THETA side.

Let's try using the tethering function of the smartphone as a mobile router here.

1. Turn on the tethering function of the smartphone. For iPhone it is called Internet Sharing. Turn this on.
2. In the CL Mode setting, set the smartphone model ID (equivalent to SSID) to the name and set the password for tethering. Security is set to WPA / WPA2 PSK.

In this state, when launching in THETA's CL Mode in the mobile environment, the smartphone is automatically selected as a router. If there are two routers in the same environment, routers are chosen in the order of the setting priority.

As a precaution, both the tethering of the smartphone and the mobile router often have capacity restrictions such as 2 GB per month, so be careful.

## Practical Use - Facebook and other streaming services

There seems to be times where it is possible to live stream to Facebook and times when it can not be done. Since THETA V utilizes a streaming method called RTMP, basically it may work if you set Key and server URL provided from the streaming service for THETA. There are reports that it worked on Facebook, but in my case I did not succeed.

## Practical Use - Live and merit with wired connection

Wi-Fi routers in homes and the like have Ethernet ports. By using the adapter, it seems possible to use THETA's USB port and Ethernet, and make a wired LAN connection. (I have not tested it since I have not obtained an adapter.)

The advantage of this case is that computer was intervening in streaming in the past, but it is now theoretically possible to connect THETA and router directly. Furthermore, it seems that you can expect more stable live streaming than wireless LAN (Wi-Fi). This could be especially good in situations where there are a lot of interference from other radio signals such as in exhibition halls. Also, in wireless LAN mode, since THETA consumes extra power, thermal shutdown tends to occur, but a wired LAN connection may delay thermal shutdown.

※ The adapter is in development and currently under investigation.

## Important Point

Some mobile routers have privacy separator settings. In this case, you need to set whether to prohibit mutual communication between the wireless LAN terminals connected to SSID A or not. In the Privacy Separator settings, if mutual communication is not permitted, trouble will occur in CL mode. Be sure to allow mutual communication with clients. 

## How to Set CL Mode for THETA V

1. Basically, the behavior is the same for home Wi-Fi routers (access points), mobile routers, and smart tethering (also a kind of router). Let's prepare a computer to find the SSID of the router. Here is an example of a home Wi-Fi router. Required equipment is THETA V, smartphone, computer and Wi-Fi router connected to optical lines, etc., at home. Turn on the wireless mode of the computer.
2. If it is Windows, let's make sure that you can connect with the wireless LAN at the bottom right. This state is CL Mode for your computer.
3. Click on the Wi-Fi icon to find the connected wireless LAN. The string that is written there is the SSID of the router. If you are connected, you should also know the password.
4. Then, we connect THETA V and smartphone directly by wireless LAN. (It is the usual Wi-Fi connection.)
5. Let's press the wireless button of the THETA V main unit to make the blue LED blink.
6. On your smartphone, launch THETA's smartphone app.
7. Camera Image --> Settings
8. Let's set the Wi-Fi frequency band to 5GHz.
9. Tap Settings in Wireless LAN Client Mode.
10. Tap Access point setting and tap Add connection destination.
11. Register the SSID found above in the name.
12. For security, choose WPA / WPA2 PSK. Enter the SSID password.
13. Go back one screen and enter the THETA password in the authentication setting. 8 digits. CL Mode has been set up. Let's restart THETA once.
14. When the wireless button is pushed, the green LED will be blinking and then when it turns solid, the CL Mode connection has been established.

---

Read the free 
[Plug-in User Guide](http://theta360.guide/plugin/) 
for more information. 
