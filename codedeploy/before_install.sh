#!/bin/bash

# This script is executed before copying the source

sudo apt-get update

sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get -y install nodejs

npm install -g pm2
pm2 update

export app_root=/usr/cddemo
if [ -d "$app_root" ];then
    rm -rf /usr/cddemo
    mkdir -p /usr/cddemo
else
    mkdir -p /usr/cddemo
fi

