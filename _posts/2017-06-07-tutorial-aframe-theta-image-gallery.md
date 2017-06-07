---
layout: post
comments: true
title:  "How To: Create a THETA Image VR Gallery with A-Frame"
date:   2017-06-07
author: "Craig Oda"
categories: webvr
---
![](/blog/img/2017-06/vrgallery/topImage.png)

A-Frame(1) works on web, mobile, and headsets.

## Test It [http://bit.ly/kai360](https://kai360.glitch.me)

Put your phone in landscape mode.



![](/blog/img/2017-06/vrgallery/gallery1.png)

![](/blog/img/2017-06/vrgallery/gallery2.png)


We're using [Glitch](https://glitch.com/), a fun tool to code web applications
with your friends.

## 1. Organize 3 Images for gallery

### Plug camera into computer with USB cable

![](/blog/img/2017-06/vrgallery/thetaMount.png)

Open camera folder.  

![](/blog/img/2017-06/vrgallery/theta-drive.png)

Copy 3 images from your camera to a folder on your computer.

![](/blog/img/2017-06/vrgallery/thetaImages.png)


## 2. Remix Gallery Application on Glitch

## [Start Coding Now](https://glitch.com/edit/#!/360gallery)

Press _Remix_ to make your own copy of the files.

![](/blog/img/2017-06/vrgallery/glitchRemix.png)

After the remix, your site will have a new random name.

![](/blog/img/2017-06/vrgallery/glitchRemixName.png)

You can customize the name from the drop down menu.

![](/blog/img/2017-06/vrgallery/glitchNameChange.png)



## 3. Upload THETA Images to Glitch

Under the assets area, drag and drop your THETA images.


![](/blog/img/2017-06/vrgallery/glitchAssets.png)


## 4. Click on the image to get the URL

![](/blog/img/2017-06/vrgallery/glitchUrl.png)


## 5. Paste URL Into HTML File

Select the index.html file in the left pane.

![](/blog/img/2017-06/vrgallery/glitchIndex.png)


In the HTML, change the src of the first image, line 18.

![](/blog/img/2017-06/vrgallery/glitchFirstImage.png)



## 6. Paste URL for Next 2 Images

Repeat the process above for the next 2 files on lines 23 and 24.

![](/blog/img/2017-06/vrgallery/glitchUrl23.png)

## 7. View Live Site

Press _Show_ in the upper left corner

![](/blog/img/2017-06/vrgallery/glitchShow.png)

Glitch will open up a new browser.

![](/blog/img/2017-06/vrgallery/glitchView.png)

## 8. Customize Your Gallery Title and Description

Facebook will grab the title and description meta tags to
automatically generate  a post when you share the link on your Wall
or the group's wall. Edit the tags with your own title and message.

![](/blog/img/2017-06/vrgallery/glitchMeta.png)


## 9. Share on Facebook

Grab the link from your browser to share on Facebook.

Example: https://craigjesse360.glitch.me/

![](/blog/img/2017-06/vrgallery/fbPost.png)


## 10. Modify Code

A good next step is to upload menu pictures. The menus are 240x240 pixel images.

![](/blog/img/2017-06/vrgallery/glitchModify.png)

![](/blog/img/2017-06/vrgallery/glitchImage2.png)


## 11. Use in Cardboard

Put the URL into Google Chrome on your phone and put your phone into
Google Cardboard.

![](/blog/img/2017-06/vrgallery/vr.png)

# [Discuss](http://lists.theta360.guide/t/easily-create-a-360-gallery-for-ricoh-theta-with-a-frame/456)

### Notes <a name="#Notes"></a>

(1) A-Frame is a leading
open source frameworks for WebVR, an experimental specification
for JavaScript APIs. For a status update on WebVR, go to
[webvr.info](https://webvr.info/)
