#!/bin/bash

sudo yum remove -y vim-common vim-enhanced
sudo yum install -y mercurial lua-devel ncurses-devel readline-devel python-devel
sudo yum install -y ctags lynx

cd /usr/local/src
sudo hg clone https://bitbucket.org/vim-mirror/vim
cd vim
sudo hg pull
sudo hg update
sudo make distclean

# --prefix=/usr/local でもいいかも
# --with-ruby-command=~/.rbenv/shims/ruby RubyのPATH
sudo ./configure --prefix=/opt/vim  --with-features=huge --enable-multibyte --enable-rubyinterp --enable-pythoninterp --enable-luainterp --enable-cscope --enable-fail-if-missing --with-ruby-command=~/.rbenv/shims/ruby --with-lua-prefix=/usr
sudo make
sudo make install

sudo ln -s /opt/vim/bin/vim /usr/local/bin/

# install NeoBundle
[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && echo "you should run following command to setup plugins ->  vim -c ':NeoBundleInstall'"

# set PHP manual for vim-ref
mkdir -p $HOME/.vim/vim-ref/cache
cd /tmp
wget http://jp2.php.net/get/php_manual_ja.tar.gz/from/this/mirror -O php_manual_ja.tar.gz
tar -zxvf php_manual_ja.tar.gz -C $HOME/.vim/vim-ref

# setup for refe2
gem install refe2
bitclust setup
