#!/bin/bash

RUBY_VER="2.4.2"

# install anyenv
git clone https://github.com/riywo/anyenv $HOME/.anyenv
[ ! -d $HOME/.anyenv/plugins ] && mkdir -p $HOME/.anyenv/plugins
git clone https://github.com/znz/anyenv-update $HOME/.anyenv/anyenv-update
git clone https://github.com/znz/anyenv-git $HOME/.anyenv/anyenv-git
exec $SHELL -l
anyenv install rbenv

# rbenv-default-gems settings
git clone https://github.com/sstephenson/rbenv-default-gems.git $HOME/.anyenv/envs/rbenv/plugins/rbenv-default-gems
ln -s $HOME/dotfiles/default-gems $HOME/.anyenv/envs/rbenv/default-gems

rbenv install ${RUBY_VER}
rbenv rehash
rbenv global ${RUBY_VER}
