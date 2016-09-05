#!/bin/bash

RUBY_VER="2.3.1"

git clone git@github.com:sstephenson/rbenv.git ~/.rbenv
git clone git@github.com:sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install ${RUBY_VER}
rbenv rehash
rbenv global ${RUBY_VER}

# hub実行用のシンボリックリンク
sudo ln -s ~/.rbenv/shims/ruby /usr/bin/ruby
