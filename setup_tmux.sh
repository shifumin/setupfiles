#!/bin/bash

LIBEVENT_VER="2.0.22"
TMUX_VER="2.2"

# libevent
cd /usr/local/src
sudo wget https://github.com/libevent/libevent/releases/download/release-${LIBEVENT_VER}-stable/libevent-${LIBEVENT_VER}-stable.tar.gz
sudo tar zxvf libevent-${LIBEVENT_VER}-stable.tar.gz
cd libevent-${LIBEVENT_VER}-stable
sudo ./configure
sudo make && sudo make install

sudo touch /etc/ld.so.conf.d/libevent.conf
sudo sh -c "echo /usr/local/lib > /etc/ld.so.conf.d/libevent.conf"
sudo ldconfig

#### tmux
cd /usr/local/src
sudo wget https://github.com/tmux/tmux/releases/download/${TMUX_VER}/tmux-${TMUX_VER}.tar.gz
sudo tar zxvf tmux-${TMUX_VER}.tar.gz
cd tmux-${TMUX_VER}
sudo ./configure
sudo make && sudo make install

# tmuxinator
gem install tmuxinator
[ ! -d $HOME/.bin ] && mkdir $HOME/.bin
curl -fsSL https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -o $HOME/.bin/tmuxinator.zsh
source $HOME/.bin/tmuxinator.zsh
