---
layout: post
comments: true
title:  "4 Libraries That Let You Embed a Watermark Into an Image - RICOH THETA Plug-in Development"
date:   2018-10-01
author: "Jesse Casman"
categories: plugin
---

Development with RICOH THETA V plug-ins allows an incredibly wide range of options for using tools and libraries to manipulate images on-camera for editing purposes. The user can take a picture, have it manipulated immediately, and then sent to a mobile phone or online cloud service. [One example is detecting and blurring faces found within an image](http://theta360.guide/plugin-guide/example/faceblur/). 

Depending on your workflow, you may want to do post-processing after the images are taken by the THETA. This is can also be a great solution.

See [Getting Started with Plug-ins](http://theta360.guide/plugin/) for an excellent listing of plug-ins and plug-in code in the theta360.guide Developers and Users Guides.

Using a RICOH THETA plug-in you may want to apply a watermark to images that are taken with your RICOH THETA V. OpenCV is widely used and often cited as an excellent image manipulation library. ImageMagick is a good alternative with 20+ language interfaces to choose from. There are other libraries that work well, depending on your operating system or language needs.

# 2 Popular Libraries 

## OpenCV (Open Source Computer Vision Library)
“OpenCV (Open Source Computer Vision Library) is released under a BSD license and hence it’s free for both academic and commercial use. It has C++, Python and Java interfaces and supports Windows, Linux, Mac OS, iOS and Android. OpenCV was designed for computational efficiency and with a strong focus on real-time applications. Written in optimized C/C++, the library can take advantage of multi-core processing. Enabled with OpenCL, it can take advantage of the hardware acceleration of the underlying heterogeneous compute platform.
Adopted all around the world, OpenCV has more than 47 thousand people of user community and estimated number of downloads exceeding 14 million. Usage ranges from interactive art, to mines inspection, stitching maps on the web or through advanced robotics.”

Download: https://opencv.org/releases.html  
Tutorial: https://www.pyimagesearch.com/2016/04/25/watermarking-images-with-opencv-and-python/

## ImageMagick
“Use ImageMagick® to create, edit, compose, or convert bitmap images. It can read and write images in a variety of formats (over 200) including PNG, JPEG, GIF, HEIC, TIFF, DPX, EXR, WebP, Postscript, PDF, and SVG. Use ImageMagick to resize, flip, mirror, rotate, distort, shear and transform images, adjust image colors, apply various special effects, or draw text, lines, polygons, ellipses and Bézier curves.
 
The functionality of ImageMagick is typically utilized from the command-line or you can use the features from programs written in your favorite language. Choose from these interfaces: G2F (Ada), MagickCore (C), MagickWand (C), ChMagick (Ch), ImageMagickObject (COM+), Magick++ (C++), JMagick (Java), JuliaIO (Julia), L-Magick (Lisp), Lua (LuaJIT), NMagick (Neko/haXe), Magick.NET (.NET), PascalMagick (Pascal), PerlMagick (Perl), MagickWand for PHP (PHP), IMagick(PHP), PythonMagick (Python), magick (R), RMagick (Ruby), or TclMagick (Tcl/TK). With a language interface, use ImageMagick to modify or create images dynamically and automagically.”

Download: https://imagemagick.org/script/download.php  
Tutorial: https://www.the-art-of-web.com/system/imagemagick-watermark/

# 2 Language-Specific Libraries (Python and C++)
A wide range of libraries exist that may work better with specific programming language requirements.

## Pillow (fork of Python Imaging Libraries)
Pillow is a fork of PIL (Python Image Library), started and maintained by Alex Clark and Contributors. It was based on the PIL code, and then evolved to a better, modern and more friendly version of PIL. It adds support for opening, manipulating, and saving many different image file formats. A lot of things work the same way as the original PIL.

Download: https://github.com/python-pillow/Pillow  
Tutorial: https://www.pythonforbeginners.com/gui/how-to-use-pillow

## CImg Library (C++ Libraries)
“The CImg Library is a small and open-source C++ toolkit for image processing. CImg stands for Cool Image. It is easy to use, efficient and is intended to be a very pleasant toolbox to design image processing algorithms in C++. Due to its generic conception, it can cover a wide range of image processing applications.”

Download: http://cimg.eu/download.shtml

# Summary

Adding editing functionality to the RICOH THETA V via plug-in technology allows for an incredible range of potential in-camera editing capabilities.

There is probably no one perfect solution for every developer. One of those 4 libraries may be an excellent tool for your development needs. It’s possible that image manipulation may become more integrated within future versions of RICOH THETA. In the meantime, there are excellent libraries like OpenCV that are usable immediately. You can quickly test them and implement them yourself. 

If you build a useful watermark plug-in with an open source stitching library, please leave a comment on theta360.guide so that can benefit!

See [Getting Started with Plug-ins](http://theta360.guide/plugin/) for more plug-in examples and code.
