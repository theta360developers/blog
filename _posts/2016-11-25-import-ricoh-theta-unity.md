---
layout: post
comments: true
title:  "Using RICOH THETA With Unity - Import Images  Pt 3/4"
date:   2016-11-25
author: "Craig Oda"
categories: Unity
---
[Pt 1](http://theta360.guide/blog/unity/2016/11/29/guide-to-theta-unity-skybox.html)
[Pt 1](http://theta360.guide/blog/unity/2016/11/29/theta-unity-skybox-install-navigate.html)
Drag the THETA image into the *Images* folder of Unity.

<img src="http://lists.theta360.guide/uploads/default/original/2X/d/d7d62f1e2be411773f7ce320502cc3eb1febb13d.png" width="560" height="357">

Click on the THETA image in Unity. Go to the *Texture Type* in the Inspector.

<img src="http://lists.theta360.guide/uploads/default/original/2X/b/b77e3cde22bc288cd07e106268f6337205a6d107.jpg" width="510" height="500">

Select *Cubemap*

<img src="http://lists.theta360.guide/uploads/default/original/2X/a/afb79de06844c777ec00722488ad9a8b541f09e2.png" width="402" height="312">

Click *Apply* to transform into Cubemap texture.

Create a new *Material* in the *Materials* folder.

<img src="http://lists.theta360.guide/uploads/default/original/2X/c/ca2db61d969dd5c9c7c566f2a877a8c8902845d8.png" width="398" height="500">

Select the new material.

In the Inspector for the material, select *Shader -> Skybox -> Cubemap*

<img src="http://lists.theta360.guide/uploads/default/original/2X/e/edb4f3aa2ee34841189ecad4d49cd6ef2816430e.png" width="486" height="444">

Drag the material onto the sky in your scene.

<img src="http://lists.theta360.guide/uploads/default/original/2X/b/b80ba383dfa22a681f863c8b3a154b96e47face6.png" width="690" height="374">

Here are two additional examples using THETA images.

<img src="http://lists.theta360.guide/uploads/default/original/2X/d/d6f9b4131e185c56d4c08f3de764d128ab26771b.png" width="690" height="319">

<img src="http://lists.theta360.guide/uploads/default/original/2X/d/d38a216e975b28f2aed3bd70157a2c5d4d460377.png" width="690" height="316">
