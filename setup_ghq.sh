#!/bin/bash

# set permission
sudo chmod 600 ~/.ssh/config
sudo chmod 600 ~/.ssh/authorized_keys

sudo yum -y install epel-release
sudo yum -y install git golang

# export GOPATH
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin

go get github.com/motemen/ghq

touch .gitconfig
echo [ghq] >> .gitconfig
echo "    root = ~/.ghq" >> .gitconfig

ghq get -p shifumin/dotfiles
ghq get -p shifumin/setupfiles
rm -f $HOME/.gitconfig

ln -s $HOME/.ghq/github.com/shifumin/dotfiles/ $HOME/dotfiles
