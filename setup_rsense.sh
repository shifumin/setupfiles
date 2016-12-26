#!/bin/bash

sudo yum install java-1.8.0-openjdk wget -y
cd /usr/local/src
sudo wget http://cx4a.org/pub/rsense/rsense-0.3.tar.bz2
sudo bzip2 -dc rsense-0.3.tar.bz2 | sudo tar xvf -
sudo cp -r rsense-0.3 /usr/local/lib
sudo chmod +x /usr/local/lib/rsense-0.3/bin/rsense
