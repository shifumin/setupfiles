#!/bin/bash

sudo yum -y install epel-release

sudo yum -y install gcc curl wget
sudo yum -y install kernel ntp logwatch
sudo yum -y install mod24_ssl openssl openssl-devel
sudo yum -y install httpd
