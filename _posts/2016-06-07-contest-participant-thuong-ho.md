---
layout: post
comments: true
title:  "Contest Participant: JavaScript and RICOH THETA Development"
date:   2016-06-07
author: "Craig Oda"
categories: Contest
---
![](/blog/img/2016-06/thuong-ho.png)

**Who:** Thuong Ho

**Vocation:** Software engineer

**Where:** San Jose, California

**Skills:** JavaScript/jQuery, Angular/Ionic, Express, MongoDB, Ruby on Rails, SQL

**Interested in Forming Contest Team:** Yes

**Web Site:** [http://www.thuongho.com/](http://www.thuongho.com/)

Thuong first encountered the RICOH THETA at the DeveloperWeek Hackathon in San Francisco. His team came in second for the RICOH prize. His hack was called 360 Cruise Experience. It used the RICOH THETA to provide 360/VR experiences to cruise ship guests and allowed passengers to share adventures after docking for the day. Thuong chose to expand his skills with JavaScript and built the camera controller using NodeJS and the
[Ionic Framework](http://ionicframework.com/), based on
[Cordova](https://cordova.apache.org/). He used [Browserify](http://browserify.org/) to allow
[Node.js](https://nodejs.org/en/) ‘required’ modules to be accessed in Ionic.

To access the THETA, Thuong used the node
[osc-client](http://theta360.guide/blog/javascript/2015/12/17/theta-s-nodejs.html) module written by Satoru Yamada.

After the hackathon, Thuong continued development with
[Three.js](http://threejs.org/) and built
[ThreeJS Dimension](http://www.thuongho.com/holo-challenge/#/).

![](/blog/img/2016-06/threejs-dimensions.png)

Thuong assesses his skills as follows.

![](/blog/img/2016-06/thuong-skills.png)

Contact us at info@theta360.guide if you would like to get in touch with Thuong and propose to work with him on a project for the contest. He is currently in the ideation phase. We'll send you
his email so you can communicate with him directly. Thuong is also willing to respond
to questions about setup for his application or libraries.
He's interested in exchanging information
with other people that share his technology interests.

## Additional information on JavaScript technology
A JavaScript browser application can't access the THETA camera directly.  You
will need to use node.js.

* [osc-client](https://www.npmjs.com/package/osc-client) by turbobeast
* [osc-client-theta_s](https://gitlab.com/horihiro/osc-client-theta_s#README) by HoriHiro-san

If you want to display a 360 image in a browser, here are two open source libraries.

* [Photo Sphere Viewer](https://github.com/JeremyHeleine/Photo-Sphere-Viewer) by Jeremy Heleine
* [ThetaViewer](https://github.com/akokubo/ThetaViewer) by Atsushi Kokubo

If you want to stitch a streaming dual-fisheye 360 video, here is some sample code:

* [thetaview.js](https://github.com/ricohapi/video-streaming-sample-app/tree/master/samples) from video streaming sample app developed by RICOH Cloud API.

Detailed directions on running thetaview.js is [here](http://lists.theta360.guide/t/360-video-conferencing-with-the-ricoh-theta-s/38).

## Other tips on Development

* install dual network interfaces to connect to the THETA and the Internet at the same time
* Use a HTTP testing tool like [DHC REST Client](https://chrome.google.com/webstore/detail/dhc-rest-client/aejoelaoggembcahagimdiliamlcdmfm?hl=en) to save HTTP tests
* If you're not using a library to access the THETA, the [Request](https://github.com/request/request) - Simplified HTTP client is easy to use
* If you're building a mobile app, people in the forum have been using Appcelerator Titanium
and Cordova

# [$45,000 in prizes for the RICOH THETA x IoT Developers Contest](http://theta360.guide/contest/)
