---
layout: post
title:  "Using RICOH THETA Live View With Unity [JP]"
date:   2015-12-17
author: "Jesse Casman"
categories: Unity
---
[hecomi](http://tips.hecomi.com/about) recently wrote an [interesting blog post](http://tips.hecomi.com/entry/2015/10/11/211456) using Unity to view realtime 360 degree video streaming. I personally have very little experience with Unity, but the content and pictures were useful, so I translated the blog post for others to use. This is not an exact translation, but it should be much more clear than doing Google translate.

I noticed GOROman ([@GOROman](https://twitter.com/GOROman)) tweeting about the info below, so I decided to try it myself right then and there.

[@GOROman tweet](https://twitter.com/GOROman/status/645896791469068288?ref_src=twsrc%5Etfw): You should be able to easily build a live VR stream from this. Stitching might be an issue… For the time being, it might be fine to just connect the sphere to the UV texture.

The THETA S is a 360 degree camera that will be going on sale October 23rd, and it includes features that were not included in the m15 like Dual-Eye Fisheye streaming over USB (1280x720 15fps) and HDMI streaming (1920x1080 30fps). In order to view this using Unity, I made a an appropriately UV developed sphere and a shader appropriate to AlphaBlend border. Ultimately, for the purpose of making a full sphere with the THETA S, it would be much higher quality and more convenient (can use Skybox too!) to use the fragment shader, made by Nora ([@Stereoarts](https://twitter.com/stereoarts), which directly writes Equirectangular onto a plane.

[Stereoarts Homepage](http://stereoarts.jp/)

[@Stereoarts tweet](https://twitter.com/Stereoarts/status/647737666520248321?ref_src=twsrc%5Etfw): I’ve released a Theta Shader Pack. A shader for converting THETA / THETA S full sphere video to Enquirectangular in Unity and supporting scripts. [stereoarts.jp/ThetaShaderPack_20150926.zip](stereoarts.jp/ThetaShaderPack_20150926.zip )

For this article, I wanted to jot down my techniques as well.

Sample

[ThetaS_LiveView_Sample.unitypackage @ Dropbox](https://dl.dropboxusercontent.com/u/7131835/Programs/ThetaS_LiveView_Sample.unitypackage)

Example of taking a video with THETA

When taking a video with m15, the circles overlapped. The THETA S gives beautifully separated spheres. The angle covered in one sphere is slightly larger than 180 degrees.

![dual fish eye image](/blog/img/2015-12/dual-fish-eye.jpg)

![dual fish eye image with tripod](/blog/img/2015-12/dual-fisheye-tripod.jpg)

In doing this, I've made an adjustment using sample texture, which Goroman filmed using WebCamTexture.

Making a sphere with good UV setting

Working with Maya LT, the UV comes out like this, if you make a normal sphere.

![Maya LT UV Mapping](/blog/img/2015-12/MayaLT-UV-mapping.png)

It would look like below, if you make a plane with the UV.

![Maya LT UV Mapping 2](/blog/img/2015-12/MayaLT-UV-mapping-2.png)

All it needs is to be cut in half and be moved appropriately.

![Maya LT UV Mapping 2](/blog/img/2015-12/MayaLT-UV-mapping-3.png)
![Maya LT UV Mapping 2](/blog/img/2015-12/MayaLT-UV-mapping-4.png)
	
It looks like this. (I did not adjust it, so it might be slightly off.)

IMAGE

Actually, I wanted to use alphablend for the border, so I used 2 overlapping half spheres instead of one sphere. The UV border is adequately stretched manually.

IMAGE

Incidentally, surface is set to face inward, by reversing all normal vectors. UV position and size are fine to adjust later with shader.


Setting with Unity

Import the Maya LT built model with Unity, and put the camera in the center. Write a shader, so the model's UV position can be adjusted or can alphablend. In order to control the drawing order and to prevent the border from changing at certain orientations, each half sphere has a different shader.

CODE BLOCK

As below, for alphablend, have a texture made, that is alpha adjusted to UV. I made adjustment for perfectly fit, by exporting UV with postscript and reading with illustrator (white circle inside is alpha=1; around the circle, from inside to outside, changes from 1 to 0; outside will not be used so whatever fits.)

IMAGE

Then, adjust the parameters and you've got a whole sphere.

IMAGE
IMAGE
IMAGE

Changing into Equirectangular

I tried it with a modified vertex shader.

CODE BLOCK
IMAGE

When taking a look at the mesh, it moves around like this.

IMAGE

Because polygon did not fit, there is a blank space in the corner. This could have been avoided if we have used a direct fragment shader like Nora.

Conclusion

It looks like there’s the possibility of multiple fun topics here like spherical AR and Stabilization. After the THETA S goes on sale, I would love to play with it more.
