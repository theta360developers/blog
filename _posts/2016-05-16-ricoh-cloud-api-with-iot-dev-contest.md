---
layout: post
comments: true
title:  "Using RICOH Cloud API with IoT Dev Contest"
date:   2016-05-16
author: "Craig Oda"
categories: Contest
---

Wow, in the last few weeks, we've seen a huge surge in
[community activity](http://theta360.guide/)
around development for the RICOH THETA. We have 122
members in our
[Silicon Valley THETA Dev meetup](http://www.meetup.com/RICOH-THETA-Developers-SF-Bay-Area/)
group. More than 1,000 people have visited our unofficial guide to [contest signup](http://theta360.guide/contest/), hoping to win some of the $45,000
in prizes, learn, and have fun.

People are using a variety of devices to connect to the THETA.
Many developers are
interested in storing content in the cloud and using devices
like the
[Raspberry Pi](http://codetricity.github.io/theta-s/index.html#_raspberry_pi) to control the camera and transfer 360 media
to cloud-based servers for management. RICOH is making
[free cloud storage](http://docs.ricohapi.com/)
available to contest participants. Here's
how to use it with their API.

# RICOH Cloud API Keys

First, you'll need RICOH API Client Credentials. To help you grab
the API credentials, we created a
[guide](http://theta360.guide/contest/signup_cloudapi.html).

Once you complete the process and log into RICOH's notes server,
you'll get a `client_id` and a `client_secret`. The keys will be
look like this `5xm7jIvlPk4`, only longer. Be careful. The username
and password in get in your email is for the RICOH notes server
to download your keys. The email does not contain the actual
keys. The `client_id` and `client_secret` both look like
a string of random characters.

# Unified Communications System User ID and password

In addition to the Cloud API `client_id` and `client_secret`
you will also need `user_id` and `password` from the
Unified Communications System. The `user_id` looks like
an email address like `user@oppkey.com`. The password is
a user-defined password.

Please refer to the
[Cloud API Signup guide](http://theta360.guide/contest/signup_cloudapi.html)
 for more
information on what you need, where to get it, and
what each credential looks like.

# Testing RICOH Cloud API with Node.js

Use `npm` to install `ricohapi-mstorage`. I am using Ubuntu 16.04 with
node v6.1.0 installed from the
[Node.js](https://nodejs.org/en/download/current/) site. You should be able to
use node v4.4 despite the warnings. However, I did most of my tests
with node v6.1.

    $ npm install ricohapi-mstorage

I get minor warnings. Ignore them.

    ricoh@xerus:~/Development$ npm install ricohapi-mstorage
    /home/ricoh
    └── ricohapi-mstorage@1.0.0

    npm WARN enoent ENOENT: no such file or directory, open '/home/ricoh/package.json'
    npm WARN ricoh No description
    npm WARN ricoh No repository field.
    npm WARN ricoh No README data
    npm WARN ricoh No license field.

We finally get to the fun part. Open up an editor and drop in some code.

    const MStorage = require('ricohapi-mstorage').MStorage;
    const AuthClient = require('ricohapi-mstorage').AuthClient;

    const client = new AuthClient('clientId', 'clientSecret');
    client.setResourceOwnerCreds('userID', 'password');

    const mstorage = new MStorage(client);

Run the code. Hopefully, there are no error messages.

    node cloudtest2.js

Grab an image and save it into the same directory as your test code.
In my example, my test code is called `cloudtest2.js`. My test image
is a 360 equirectangular image called `beach.jpg`.

The big moment of of connecting to the RICOH Cloud server and
uploading a 360 image has arrived! Drop the code below onto the
end of your program and run it.

    mstorage.connect()
    .then(() => mstorage.upload('./beach.jpg'))
    .then(() => console.log('uploaded')
    .catch(e => console.log(e)));

Boom. it works!

    ricoh@xerus:~/Development/ricoh-cloud-api$ node cloudtest2.js
    uploaded

Grab a listing of your images. Add the code below to the end of your
test program.

    mstorage.connect()
    .then(() => mstorage.list())
    .then(list => console.log(list));

Run it and verify the file was upload. I have multiple files in my test account. Your output may be slightly different.

    ricoh@xerus:~/Development/ricoh-cloud-api$ node cloudtest2.js
    {"media":[{"id":"c516ccd5-db40-438c-8f8b-e306a1c618d5"},{"id":"258f43a9-4d7a-4d4e-b625-f3a149fc7240"},{"id":"b2046fcf-1c86-47bc-a1ff-1922ecd8859a"}],"paging":{"previous":"http://mss.ricohapi.com/v1/media?before=c516ccd5-db40-438c-8f8b-e306a1c618d5\u0026limit=10"}}
    uploaded

Grab the ID for one of your media assets in the RICOH Cloud server. Replace the ID below with your own ID.

    mstorage.connect()
    .then(() => mstorage.downloadTo('258f43a9-4d7a-4d4e-b625-f3a149fc7240', './img/downloadbeach.jpg' )
    .then(() => console.log('downloaded')));

Run it.

    ricoh@xerus:~/Development/ricoh-cloud-api$ node cloudtest2.js
    {"media":[{"id":"9d0f457e-a969-4247-81dc-3f430c2cb06d"},{"id":"c516ccd5-db40-438c-8f8b-e306a1c618d5"},{"id":"258f43a9-4d7a-4d4e-b625-f3a149fc7240"},{"id":"b2046fcf-1c86-47bc-a1ff-1922ecd8859a"}],"paging":{"previous":"http://mss.ricohapi.com/v1/media?before=9d0f457e-a969-4247-81dc-3f430c2cb06d\u0026limit=10"}}
    downloaded
    ricoh@xerus:~/Development/ricoh-cloud-api$ ll img/
    total 4064
    drwxrwxr-x 2 ricoh ricoh    4096 May 16 15:32 ./
    drwxrwxr-x 4 ricoh ricoh    4096 May 16 16:34 ../
    -rw-rw-r-- 1 ricoh ricoh 4151640 May 16 16:45 downloadbeach.jpg
    ricoh@xerus:~/Development/ricoh-cloud-api$

# Live Stream Video
With your RICOH API credentials and RICOH ID, you can now live stream
inside of your browser.

Grab the [live streaming code from GitHub](https://github.com/ricohapi/video-streaming-sample-app).

Follow the steps and get going.

Just a few quick ideas to get your imagination going. If you build something, I'd love to hear about it.

Ready for more?

# [$45,000 in prizes for the RICOH THETA x IoT Developers Contest](http://theta360.guide/contest/)
