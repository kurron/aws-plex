#!/bin/bash

#AWS_ACCESS_KEY_ID=
#AWS_SECRET_ACCESS_KEY=
export AWS_AMI=ami-5f709f34
export AWS_DEFAULT_REGION=us-east-1
export AWS_VPC_ID=vpc-27d3f742
#AWS_ZONE=a
export AWS_SUBNET_ID=subnet-c8b2c3bf
export AWS_SECURITY_GROUP=docker-machine
export AWS_TAGS=name,plex
export AWS_INSTANCE_TYPE=t2.micro
export AWS_DEVICE_NAME=/dev/sda1
export AWS_ROOT_SIZE=16
export AWS_VOLUME_TYPE=gp2
#AWS_INSTANCE_PROFILE
export AWS_SSH_USER=ubuntu

# we include our own keys so we can use Ansible
export AWS_SSH_KEYPATH=/home/vagrant/plex-keys/id_rsa

CMD="docker-machine create --driver amazonec2 plex"
echo $CMD
$CMD
