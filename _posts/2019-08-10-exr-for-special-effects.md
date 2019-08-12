---
layout: post
comments: true
title:  "4 Things 360 Photographers Need to Know About EXR Use in Visual Effects"
date:   2019-08-10
author: "Craig Oda"
categories: 3dmodel
---
Light in a 360 scene behaves very differently from light in a traditional photograph.
The photographer can't control the angle of light and framing. As most 360 
photographs
are taken with the mobile app or a timer, the photographer also can't see
the perspective of the audience when the picture is taken. Estimating 
the audience perspective is
even more difficult for viewing the picture in a headset
such as Daydream, Oculus, or Vive.

Looking at non-photography uses of THETA images can give us a deeper 
understanding of light in a 360 scene and spark creative ideas.
The RICOH THETA camera that you're using for photography is also 
the most widely used camera among artists creating visual effects (VFX). How the camera is used in the VFX industry can be difficult to understand for photographers at first.

Here are four concepts that can help with understanding lighting in a 360 scene.

## 1. HDRI and EXR Files Are Lighting Information

In the VFX industry, an EXR file is not used to produce a 360 image.  It contains light information that is used to illuminate 3D objects. The file is not used as the actual background scene in a movie.  

The first thing to understand is that the EXR file is light data, not the image 
the viewer sees.

## 2. Scene Lighting with an Image

To understand scene lighting with a 360 image, let’s start with a standard 2D image as a light source.

In the upper right panel below, imagine that the yellow flower is a giant OLED panel shining at the clock.

![flower shining on clock](/blog/img/2019-08/flower.jpg)

The picture will be brighter where the flower is yellow and where the sun is reflected off the flower.

![flower shining on clock close](/blog/img/2019-08/flower2.jpg)

On shiny objects like the face of a clock, you can even see a reflection of the light source. Remember, the image of the flower is the light source.

![flower shining on clock closeup](/blog/img/2019-08/flower3.jpg)

## 3. Scene Lighting from 360 Images

Before we get to HDRI and EXR files, let’s first look at a standard 360 image that is used as the skybox. The 3D model of the dog and swan are in the center of the 360 image. Since the sky has a green tinge from the Northern Lights, the dog has a green color.

![green dog](/blog/img/2019-08/dog-green.png)

If the 360 image is brown, the dog will be brown. The background tower is an image, not a 3D model.

![brown dog](/blog/img/2019-08/dog-brown.png)

Using the same image, if I rotate the scene, the dog will receive more white light.

![white dog](/blog/img/2019-08/dog-white.png)

## [Click here for a live view of the Northern Lights image with WebGL](https://codetricity.github.io/theta360aurora/) 

Use the mouse and arrow keys to navigate the scene. Note that it may take a few minutes to load and will be blank while it is loading. Initially, you may be staring at the water in the pool, so use your mouse to rotate the scene.
EXR Files

EXR files combine light information from 11 different exposures into a single file. This allows the 3D artist to adjust the light of the scene globally. If you inspect an EXR file, it will appear like 11 images with different exposures.

![EXR 11](/blog/img/2019-08/exr-11.jpg)

## 4. Automatically Generate EXR Files Inside the THETA

Kasper Oerlemans created Authydra to automatically create high quality EXR files inside of the RICOH THETA V or Z1 cameras. 
If you have a RICOH THETA V, make sure you're running the latest firmware.  There were problems with Authydra and HDR2EXR with
RICOH THETA V firmware 2.50.2 and earlier.

The scene below was created by Alexandre Dizeux using Blender as a test of Authydra.

![Authydra demo](/blog/img/2019-08/authydra-demo.jpg)

Authydra runs inside the RICOH THETA and takes 34 images with a single button press. The images are then combined to produce a single file inside the camera.

The application does the following automatically:

1. takes one image to set the base settings of the camera
2. takes a set of 3 images for denoise
3. repeats process of taking 3 images 11 times
4. combines images into single EXR file

An upcoming release of Authydra will have THETA Z1 support and an improved web interface.

![Authydra logo](/blog/img/2019-08/authydra-logo.png)

The EXR file is commonly used in Nuke, Maya, or the free and open source Blender.

![Authydra example 2](/blog/img/2019-08/authydra-2.png)


If you have a RICOH THETA V, you can install Authydra 1.0.0 and higher from the 
[RICOH THETA Plug-in Store](https://pluginstore.theta360.com/plugins/com.kasper.authydra/). If you have a RICOH THETA Z1, you will need version 1.0.1 or higher. Note that the developer Kasper indicated that the Z1 support is basic right now.

If you have a THETA S, SC, or M15, you can still experiment with HDR or EXR files using third-party software like Photoshop or the free and open source 
[Luminance HDR](http://qtpfsgui.sourceforge.net/). To use the S, SC, or M15 models, take bracketed shots at different exposures using the offical RICOH mobile app and then use software like Photoshop or Luminance HDR to create the HDR file.

### Using the EXR or HDRI File to Illuminate a Scene
If you have access to 
[Autodesk MAYA](https://www.autodesk.com/products/maya/overview), it is easier to work with and better than Blender in my personal opinion. A tutorial on using Autodesk MAYA with RICOH THETA HDRI files is 
[here](https://community.theta360.guide/t/howto-use-autodesk-maya-and-ricoh-theta-hdri-files-for-accurate-light-and-reflection/3767).

Alternately, you can use the screencast below:

[https://youtu.be/y7zhLakP2oc](https://youtu.be/y7zhLakP2oc)


The video does not cover Authydra, which is the recommended method to create an EXR file if you have a THETA V or a Z1.

If you do not have MAYA, you can use 
[Nuke Non-commercial](https://www.foundry.com/products/nuke/non-commercial). The developer of Authydra, Kasper Oerlemans recommends Nuke Non-commercial.

If you’d prefer to use open source software with a vibrant community surrounding it, you can use 
[Blender](https://www.blender.org/). Although Blender can be a bit confusing to use, version 2.8 is easier.
You can see the new features in Blender 2.8 in the video below by Blender Guru.

[https://youtu.be/MyxWDHy4ppY](https://youtu.be/MyxWDHy4ppY)

My article, [Using Blender with RICOH THETA HDRI Files](https://community.theta360.guide/t/using-blender-with-ricoh-theta-hdri-files/3786), contains a link to a free video course by Creative Shrimp called, HDR Image-Based Lighting Workflow in Blender.

I went through the tutorial and was able to create realistic lighting from HDR files I created with the RICOH THETA.

![blender example 1](/blog/img/2019-08/blender-1.jpg)

![blender example 2](/blog/img/2019-08/blender-2.png)


## Summary

If you’re a VFX professional, you should check out Authydra immediately as it’s likely the easiest way to create an EXR file inexpensively. It’s also free and open source and under active development.

If you’re a hobbyist and just want to play around with 3D models for the first time, I suggest you use Blender 2.8 with a good tutorial. You can also use a trial version of Maya or Nuke. You can get free 3D models from a number of places, including:

* [cgtrader](https://www.cgtrader.com/free-3d-models)
* [TurboSquid](https://www.turbosquid.com/Search/3D-Models/free)
* [Free3D](https://free3d.com/)

If you’re more interested in lighting, you can also follow one of the tutorials described in this tutorial with a mirrored ball.

I also encourage 360 photographers to try using the HDRI or EXR files in models as it will help you to understand 360 degree lighting and what your audience is experiencing even with a standard 360 image.