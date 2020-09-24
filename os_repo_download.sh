#!/bin/bash

sleep_time=3

###################################install repo###############################

yum install --downloadonly --downloaddir=./package/epel-release epel-release

DIR_remi_release="package/remi-release"
if [ -f $DIR_remi_release ]; then
 
    echo "File $DIR_remi_release exists."
else
 
    echo "File $DIR_remi_release does not exists."   
    mkdir $DIR_remi_release
fi

curl http://rpms.remirepo.net/enterprise/remi-release-7.rpm > ./package/remi-release/remi-release-7.rpm 


yum install --downloadonly --downloaddir=./package/yum-utils  yum-utils -y

echo "finished download epel-release remi-release-7 yum-utils"

sleep $sleep_time

