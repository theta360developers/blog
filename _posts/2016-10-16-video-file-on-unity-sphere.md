---
layout: post
comments: true
title:  "RICOH THETA 360 Video (From File) Unity Tutorial"
date:   2016-10-16
author: "Craig Oda"
categories: Video, Unity
---

[![](/blog/img/2016-10/unity-tutorial/video-tutorial.png)](https://www.youtube.com/watch?v=fiucH5q_4VE)

[Video tutorial](https://www.youtube.com/watch?v=fiucH5q_4VE) available.

## Prepare THETA Videos in Equirectangular Format
Use the official THETA desktop application to convert the dual-fisheye
video into equirectangular.
![](/blog/img/2016-10/unity-tutorial/video-convert.png)

## Create New Unity Project

![](/blog/img/2016-10/unity-tutorial/unity-new-project.png)

* Save Scene as 360video
* Position Main Camera in center at 0, 0, 0

## Create Sphere

![](/blog/img/2016-10/unity-tutorial/sphere.png)

* Position at 0, 0, 0
* Scale Sphere to 10, 10, 10

## Create Materials

* Create new folder called _Materials_ under _Assets_
* In _Materials_ create material called 360Video

## Add Material to Sphere

![](/blog/img/2016-10/unity-tutorial/add-material-sphere.png)

## Create Shader
In _Assets_ create new folder, _Shaders_. Create new Unlit Shader in the folder.

![](/blog/img/2016-10/unity-tutorial/unlit-shader.png)

Rename shader. I called mine, _ViewInside_ Double-click on the new Shader.

![](/blog/img/2016-10/unity-tutorial/shader-icon.png)

Drop in the code below from community member [Shanyuan Teng](http://tengshanyuan.com/).

    Shader "ThetaInsideShader" {
    	Properties{
    		_MainTex("Base (RGB)", 2D) = "white" {}
    	}

    		SubShader{
    		Tags{ "RenderType" = "Opaque" }
    		Cull front    //  FLIP THE SURFACES
    		LOD 100

    		Pass{
    		CGPROGRAM
    #pragma vertex vert
    #pragma fragment frag

    #include "UnityCG.cginc"

    		struct appdata_t {
    		float4 vertex : POSITION;
    		float2 texcoord : TEXCOORD0;
    	};

    	struct v2f {
    		float4 vertex : SV_POSITION;
    		half2 texcoord : TEXCOORD0;
    	};

    	sampler2D _MainTex;
    	float4 _MainTex_ST;

    	v2f vert(appdata_t v)
    	{
    		v2f o;
    		o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
    		v.texcoord.x = 1 - v.texcoord.x;
    		o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
    		return o;
    	}

    	fixed4 frag(v2f i) : SV_Target
    	{
    		fixed4 col = tex2D(_MainTex, i.texcoord);
    	return col;
    	}
    		ENDCG
    	}
    	}

    }

## Add Shader to Sphere

![](/blog/img/2016-10/unity-tutorial/shader-sphere.png)

## Add 360 Video Asset

In _Assets_, create a new folder _Videos_. Drop you THETA equirectangular video
into the folder. Any resolution is fine.  Import may take several minutes.
If you're on Windows, Unity needs QuickTime for the import.

## Create Empty Game Object
I called mine _VideoPlayback_.

## Add Playback Script
Connect a video playback script to the new game object, _VideoPlayback_

This is the code from community member [Shanyuan Teng](http://tengshanyuan.com/).


    using UnityEngine;
    using System.Collections;

    public class VideoPlayback : MonoBehaviour {

        public GameObject Sphere;

    	// Use this for initialization
    	void Start () {

            MovieTexture video360 = (MovieTexture)Sphere.GetComponent<Renderer>().material.mainTexture;
            video360.loop = true;
            video360.Play();
    	}

    }

## Add Texture to Video Sphere

Drop your video onto the texture box in 360Video. Your video file is the
texture.

![](/blog/img/2016-10/unity-tutorial/video-texture.png)

## Play It!

![](/blog/img/2016-10/unity-tutorial/play-video.png)
