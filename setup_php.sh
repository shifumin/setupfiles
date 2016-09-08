#!/bin/bash

# install PHP 5.3.3
sudo yum -y install php php-devel php-pear php-mbstring php-pdo php-gd
# sudo yum -y install php-myslqnd
sudo yum -y install php-pgsql
sudo pecl install xdebug
# vim /etc/php.d/xdebug.ini
