#!/bin/bash

sudo yum -y install git golang

# export GOPATH
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin

go get github.com/motemen/ghq

touch .gitconfig
echo [ghq] >> .gitconfig
echo "    root = ~/.ghq" >> .gitconfig

ghq get shifumin/dotfiles
ghq get shifumin/setupfiles
rm -f $HOME/.gitconfig

ln -s $HOME/.ghq/github.com/shifumin/dotfiles/ $HOME/dotfiles
