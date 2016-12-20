#!/bin/bash

RUBY_VER="2.4.2"

git clone git@github.com:sstephenson/rbenv.git ~/.rbenv
git clone git@github.com:sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# rbenv-default-gems settings
git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
ln -s $HOME/dotfiles/default-gems $HOME/.rbenv/

rbenv install ${RUBY_VER}
rbenv rehash
rbenv global ${RUBY_VER}

# hub実行用のシンボリックリンク
sudo ln -s $HOME/.rbenv/shims/ruby /usr/bin/ruby

gem install rubocop
