---
layout: post
comments: true
title:  "WiFi Streaming THETA S in Unity"
date:   2016-10-14
author: "Craig Oda"
categories: Live Streaming
---

This article was originally written by [@noshipu](https://twitter.com/noshipu),
CEO of [ViRD, Inc](http://vird.co.jp/) in Japanese. It was translated into English
at the request of the THETA developer community in the US. All credit to this great
article goes to Noshipu-san.

Makoto-san produced a finished app.
Code is [here](https://github.com/theta360developers/ThetaWifiStreaming). 

![](/blog/img/2016-10/unity1.png)

![](/blog/img/2016-10/unity-middle.png)

![](/blog/img/2016-10/unity2.png)



# About the RICOH THETA API

In order to use Wifi live streaming, you must use the `_getLivePreview` API.
[Official Reference](https://developers.theta360.com/en/docs/v2.0/api_reference/commands/camera._get_live_preview.html)

> NOTE from Craig: This was replaced by [getLivePreview](https://developers.theta360.com/en/docs/v2.1/api_reference/commands/camera.get_live_preview.html) in version 2.1 of the API. This blog by Noshipu-san refers to the 2.0 API, which is still supported by
the THETA S. Be aware of the differences in your code.

Unlike the other APIs, `_getLivePreview` is different because the data is in a stream and keeps going. You will not be able to get a WWW class to wait until the request is complete (maybe).

> NOTE from Craig: This is the major problem developers have when working with `getLivePreview`. As the data
> is a stream, you can't want for the data to end before running your next command. For example, it's
> different from downloading and displaying an image or video file because you know when the transfer is
> complete.

# Processing Flow

## Set the POST request to create a HttpWebRequest class

    string url = "Enter HTTP path of THETA here";
    var request = HttpWebRequest.Create (url);
    HttpWebResponse response = null;
    request.Method = "POST";
    request.Timeout = (int) (30 * 10000f); // to ensure  no timeout
    request.ContentType = "application/json; charset = utf-8";

    byte [] postBytes = Encoding.Default.GetBytes ( "Put the JSON data here");
    request.ContentLength = postBytes.Length;

## Generate a class of BinaryReader to get the byte data (you get the bytes one by one)

    // The start of transmission of the post data
    Stream reqStream = request.GetRequestStream ();
    reqStream.Write (postBytes, 0, postBytes.Length) ;
    reqStream.Close ();
    stream = request.GetResponse () .GetResponseStream ();

    BinaryReader reader = new BinaryReader (new BufferedStream (stream), new System.Text.ASCIIEncoding ());

## Get the start and stop bytes of 1 frame of the MotionJPEG and cut out one frame

With the byte, check the partion value of the MotionJPEG.

    ...(http)
    0xFF 0xD8      --|
    [jpeg data]      |--1 frame of MotionJPEG
    0xFF 0xD9      --|
    ...(http)
    0xFF 0xD8      --|
    [jpeg data]      |--1 frame of MotionJPEG
    0xFF 0xD9      --|
    ...(http)

Please refer this answer on StackOverflow to
[How to Parse MJPEG HTTP stream from IP camera?](http://stackoverflow.com/questions/21702477/how-to-parse-mjpeg-http-stream-from-ip-camera)  

The starting 2 bytes are `0xFF, 0xD8`. The end bye is `0xD9`

The code is shown below.

    List<byte> imageBytes = new List<byte> ();
    bool isLoadStart = false; // 画像の頭のバイナリとったかフラグ
    byte oldByte = 0; // 1つ前のByteデータを格納する
    while( true ) {
        byte byteData = reader.ReadByte ();

        if (!isLoadStart) {
            if (oldByte == 0xFF){
                // First binary image
               imageBytes.Add(0xFF);
            }
            if (byteData == 0xD8){
               // Second binary image
               imageBytes.Add(0xD8);

               // I took the head of the image up to the end binary
               isLoadStart = true;
            }
        } else {
            // Put the image binaries into an array
            imageBytes.Add(byteData);

            // if the byte was the end byte
            // 0xFF -> 0xD9 case、end byte
            if(oldByte == 0xFF && byteData == 0xD9){
                // As this is the end byte
                // we'll generate the image from the data and can create the texture
                // imageBytes are used to reflect the texture
                // imageBytes are left empty
                // the loop returns the binary image head
                isLoadStart = false;
            }
        }
        oldByte = byteData;
    }

## Texture Generation Separated by Byte

This is the byte to reflect the texture.

    mainTexture.LoadImage ((byte[])imageBytes.ToArray ());

---

Portion of Python code taken from [StackOverflow answer](http://stackoverflow.com/questions/21702477/how-to-parse-mjpeg-http-stream-from-ip-camera).

    import cv2
    import urllib
    import numpy as np

    stream=urllib.urlopen('http://localhost:8080/frame.mjpg')
    bytes=''
    while True:
        bytes+=stream.read(1024)
        a = bytes.find('\xff\xd8')
        b = bytes.find('\xff\xd9')
        if a!=-1 and b!=-1:
            jpg = bytes[a:b+2]
            bytes= bytes[b+2:]
            i = cv2.imdecode(np.fromstring(jpg, dtype=np.uint8),cv2.CV_LOAD_IMAGE_COLOR)
            cv2.imshow('i',i)
            if cv2.waitKey(1) ==27:
                exit(0)
Mjpeg over http is multipart/x-mixed-replace with boundary frame info and jpeg data is just sent in binary. So you don't really need to care about http protocol headers. All jpeg frames start with marker 0xff 0xd8 and end with 0xff 0xd9. So the code above extracts such frames from the http stream and decodes them one by one. like below.

    ...(http)
    0xff 0xd8      --|
    [jpeg data]      |--this part is extracted and decoded
    0xff 0xd9      --|
    ...(http)
    0xff 0xd8      --|
    [jpeg data]      |--this part is extracted and decoded
    0xff 0xd9      --|
    ...(http)
