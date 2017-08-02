#!/bin/bash

# NOTE: 要整理. 必要のないパッケージが含ま�ている可能性あり
# sudo apt-get install python-dev python-pip python3-dev python3-pip python3.5-dev phtyon3.5-pip
sudo apt-get install python-dev python-pip python3-dev python3-pip phthon3.5 python3.5-dev phtyon3.5-pip
sudo curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python3.5
# sudo easy_install pip
sudo easy_install3 pip

sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo pip2 install --user --upgrade neovim
sudo pip3 install --user --upgrade neovim


# dein.vim
sudo apt-get install git libtool autoconf automake cmake g++ pkg-config unzip
