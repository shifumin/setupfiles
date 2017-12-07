#!/bin/bash

GIT_VER="2.14.1"
TIG_VER="2.2.2"

# Git
# TODO: Ubuntu用を作成する
# sudo apt-get install -y gettext

sudo yum -y remove git
sudo yum install -y gcc curl-devel expat-devel gettext-devel ncurses-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker
# Ubuntu
# sudo apt-get install -y libcurl4-openssl-dev

cd /usr/local/src
[ ! -e /usr/local/src/git-${GIT_VER}.tar.gz ] && sudo wget https://www.kernel.org/pub/software/scm/git/git-${GIT_VER}.tar.gz
[ ! -e /usr/local/src/git-${GIT_VER} ] && sudo tar zxvf git-${GIT_VER}.tar.gz

cd /usr/local/src/git-${GIT_VER}
[ ! -e /usr/local/bin/git ] && sudo ./configure --prefix=/usr/local/
[ ! -e /usr/local/bin/git ] && sudo make && sudo make install

# diff-highlight
# CentOS
sudo ln -s /usr/local/src/git-${GIT_VER}/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
# Mac
# ln -s /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/
# Ubuntu
# curl https://raw.github.com/git/git/master/contrib/diff-highlight/diff-highlight -o diff-highlight
# chmod +x diff-highlight
# sudo mv diff-highlight /usr/local/bin/diff-highlight

# Tig
cd /usr/local/src
[ ! -e /usr/local/src/tig-${TIG_VER}.tar.gz ] && sudo wget https://github.com/jonas/tig/releases/download/tig-${TIG_VER}/tig-${TIG_VER}.tar.gz
[ ! -e /usr/local/src/tig-${TIG_VER} ] && sudo tar zxvf tig-${TIG_VER}.tar.gz

cd /usr/local/src/tig-${TIG_VER}
[ ! -e /usr/local/bin/tig ] && sudo ./configure --prefix=/usr/local/
[ ! -e /usr/local/bin/tig ] && sudo make && sudo make install

# hub
[ ! -e ~/bin ] && mkdir ~/bin
curl http://hub.github.com/standalone -sLo ~/bin/hub && chmod +x ~/bin/hub
