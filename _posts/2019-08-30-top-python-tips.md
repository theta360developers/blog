---
layout: post
comments: true
title:  "Top 3 Python Tips for RICOH THETA Development"
date:   2019-08-30
author: "Craig Oda"
categories: web
---

Python is often used to access the RICOH THETA web API over Wi-Fi or Ethernet. It's a great alternative to using curl and bash scripts.

Compared to bash and curl, Python makes it easier to 
organize complex projects with functions and classes.

If you're learning Python to build a project with the RICOH THETA API.  Here are some tips that can help you get started quickly.

## Use requests

Most example using the `requests` module.

Here's a simple example of using Python to take a picture
on the RICOH THETA with client mode.

```python
import requests
from requests.auth import HTTPDigestAuth
import pprint

# global constants specific to your THETA. Change for your camera.
THETA_ID = 'THETAYL00105377'
THETA_PASSWORD = '00105377'  # default password. may have been changed
THETA_URL = 'http://192.168.2.101/osc/'
def takePicture():
    url = THETA_URL + 'commands/execute'
    payload = {"name": "camera.takePicture"}
    req = requests.post(url,
                        json=payload,
                        auth=(HTTPDigestAuth(THETA_ID, THETA_PASSWORD)))
                        
    response = req.json()
    print(60 * "=")
    print("client mode takePicture - Testing RICOH THETA API v2.1\n")
    pprint.pprint(response)


takePicture()
```

[Code for this example is available on GitHub](https://github.com/codetricity/theta-client-mode)


## Download Image from Camera and Save as Blocks

The images on the camera can be viewed with a HTTP URI immediately. To
save the image to local disk, you will need to set up a for loop and 
write each block individually.

```python
def getImage(url):
    imageName = url.split("/")[6]
    print("saving " + imageName + " to file")
    with open('sampleImg/' + imageName, 'wb') as handle:
        response = requests.get(
                    url,
                    stream=True,
                    auth=(HTTPDigestAuth(THETA_ID, THETA_PASSWORD)))

        if not response.ok:
            print(response)
        for block in response.iter_content(1024):
            if not block:
                break
            handle.write(block)
```

The [example above and additional Python examples](https://github.com/codetricity/theta-client-mode/blob/master/client-mode.py) for the RICOH THETA are available
in this example on GitHub.

## Use Django to Build a Web Interface

You can drop the Python methods into Django to access them from a web interface. The only difference between the function from the command line and the function
from the web interface is the specification of the directory for the media.

```python
PROJECT_MEDIA_DIR = os.getcwd() + "/media/"

def getImage(url):
    imageName = url.split("/")[6]
    print("saving " + imageName + " to file")
    with open(f'{PROJECT_MEDIA_DIR}{imageName}', 'wb') as handle:
        response = requests.get(
                    url,
                    stream=True,
                    auth=(HTTPDigestAuth(THETA_ID, THETA_PASSWORD)))

        if not response.ok:
            print(response)
        for block in response.iter_content(1024):
            if not block:
                break
            handle.write(block)
```

Full project code is available below.

https://github.com/codetricity/theta-django

