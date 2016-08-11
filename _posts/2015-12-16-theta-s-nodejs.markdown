---
layout: post
comments: true
title:  "Using Node.js with the RICOH THETA S"
date:   2015-12-17
author: "Craig Oda"
categories: javascript
---
[Satoru Yamada](http://qiita.com/FePlus) recently wrote a
[blog post describing how to access the RICOH THETA S with
node.js](http://qiita.com/FePlus/items/aaeca40468d49786e2f5).

Since I've been trying to test the THETA API with JavaScript,
I spent a few minutes to translate his main points into
English.

I'll start off Satoru's code snippet. The rest of the text
is also from him, including the summary, which includes an
interesting idea about NFC tags to help with automation.

    var fs = require('fs');
    var OscClientClass = require('osc-client').OscClient;

    var domain = '192.168.1.1';
    var port = '80';
    var client = new OscClientClass(domain, port);
    var sessionId;
    var filename;

    client.startSession().then(function(res){
      sessionId = res.body.results.sessionId;
      return client.takePicture(sessionId);
      })

    .then(function (res) {
      var pictureUri = res.body.results.fileUri;
      console.log('pictureUri :%s',pictureUri);

      var path = pictureUri.split('/');
      filename = path.pop();
      return client.getImage(pictureUri);
    })
    .then(function(res){
      var imgData = res.body;
      fs.writeFile(filename,imgData);
      return client.closeSession(sessionId);
    });

By running the `node theta.js`, you can view the `fileUri`
of the picture that you previously took.

    node theta.js
    pictureUri :100RICOH/R0010009.JPG

The file will be created in the directory where you executed
the command.

![Directory with file](/blog/img/2015-12/directory_screenshot.png)

The IP address and port are described in the [API reference](https://developers.theta360.com/en/docs/v2/api_reference/).
With a P2P connection, only one client can connect.

An overview of the process is shown below:

1. set up a new session with `startSession()`
2. `takePicture` using the `sessionId` you just got from the new session
3. use the `fileUri` you got from `takePicture` to download the image with `getImage()`
4. close the session with `closeSession()`

# Summary
Since the new THETA S supports Open Spherical Camera API, it's now possible
to easily build applications. As sales and thus the popularity of the
camera appear to be going quite well, it seems likely that we'll see
many interesting uses in the future.

Personally, I've been thinking that since it may be difficult to turn the
WiFi on and off, start THETA applications, and perform repetitive tasks,
using a NFC tag might help with the automation. If I finish that,
I'll write another post.

Ready for more?

# [Unofficial THETA Developer Ecosystem Registration](http://theta360.guide/ecosystem/)
