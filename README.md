#Overview
This project is a simple Docker image that runs [Packer](http://packer.io/), saving you from having to install it.

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

#Building
Type `docker-compose build` to build the image.

#Installation
Docker Compose will automatically install the newly built image into the cache.

#Tips and Tricks

##Launching The Image

`docker-compose up` will launch the image, proving it built correctly.

#Troubleshooting

##User Account
The image assumes that the account running the continer will have a user and group id of 1000:1000.  This allows the container 
to save files in your home directory and keep the proper permissions.

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

