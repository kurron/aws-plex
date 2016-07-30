#Overview
This project Docker Machine and Ansible to construct a Plex media server in AWS.

#Prerequisites
* a working [Docker Machine](http://docker.io) installation
* a working [Ansible](https://www.ansible.com/) installation
* a working [AWS](https://aws.amazon.com/) account with EC2 and EBS administration rights
* a set of AWS API keys
* `export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE`
* `export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY'
* `export AWS_ZONE=a`


#Building
There isn't anything to build.  There are just data files fed into shell scripts and tools.

#Installation
Other than the prerequisites, there is nothing to install.

#Tips and Tricks

## Configuration
Edit `create-instance.sh` and adjust the variables as needed.  The sensitive values, such as your secret key, should
be exported in your environment **and not in the script**.  You don't want your AWS keys leaking out to the 
internet.  You have been warned.

## Creating the instance

Run `./create-instance.sh`.  You should see something similar to this:

```
./create-instance.sh 
docker-machine create --driver amazonec2 plex
Creating CA: /home/vagrant/.docker/machine/certs/ca.pem
Creating client certificate: /home/vagrant/.docker/machine/certs/cert.pem
Running pre-create checks...
Creating machine...
(plex) Launching instance...
(plex) Tags are not key value in pairs. 1 elements found
Waiting for machine to be running, this may take a few minutes...
Detecting operating system of created instance...
Waiting for SSH to be available...
Detecting the provisioner...
Provisioning with ubuntu(upstart)...
Installing Docker...
Copying certs to the local machine directory...
Copying certs to the remote machine...
Setting Docker configuration on the remote daemon...
Checking connection to Docker...
Docker is up and running!
To see how to connect your Docker Client to the Docker Engine running on this virtual machine, run: docker-machine env plex

```

## Instance Creation
 
#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

