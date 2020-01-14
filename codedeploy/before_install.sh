#!/bin/bash

# This script is executed before copying the source

apt-get update

curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
apt-get install nodejs

npm install -g pm2
pm2 update

export app_root=/usr/cddemo
if [ -d "$app_root" ];then
    rm -rf /usr/cddemo
    mkdir -p /usr/cddemo
else
    mkdir -p /usr/cddemo
fi

