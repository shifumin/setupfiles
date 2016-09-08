#!/bin/bash

sudo yum -y install epel-release

sudo yum -y install gcc wget kernel ntp
sudo yum -y install logwatch
sudo yum -y install mod24_ssl openssl openssl-devel

sudo yum -y install httpd
sudo yum -y install postgresql-server

# setup_git.sh
# sudo yum -y install git golang
