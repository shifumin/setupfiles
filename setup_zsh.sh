#!/bin/bash

ZSH_VER="5.4.1"
RIPGREP_VER="0.6.0"

sudo yum install -y ncurses-devel

cd /usr/local/src
[ ! -e /usr/local/src/zsh-${ZSH_VER}.tar.gz ] && sudo wget http://downloads.sourceforge.net/project/zsh/zsh/${ZSH_VER}/zsh-${ZSH_VER}.tar.gz
[ ! -e /usr/local/src/zsh-${ZSH_VER} ] && sudo tar zxvf zsh-${ZSH_VER}.tar.gz

cd /usr/local/src/zsh-${ZSH_VER}
[ ! -e /usr/local/bin/zsh ] && sudo ./configure
[ ! -e /usr/local/bin/zsh ] && sudo make && sudo make install

sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
chsh -s /usr/local/bin/zsh

# install zplug
curl -sL zplug.sh/installer | zsh

# install ccat
go get -u github.com/jingweno/ccat

# install ripgrep
cd /usr/local/src
[ ! -e /usr/local/src/ripgrep-${RIPGREP_VER}-x86_64-unknown-linux-musl.tar.gz ] && sudo wget https://github.com/BurntSushi/ripgrep/releases/download/${RIPGREP_VER}/ripgrep-${RIPGREP_VER}-x86_64-unknown-linux-musl.tar.gz
[ ! -e /usr/local/src/ripgrep-${RIPGREP_VER}-x86_64-unknown-linux-musl ] && sudo tar zxvf ripgrep-${RIPGREP_VER}-x86_64-unknown-linux-musl.tar.gz
sudo ln -s /usr/local/src/ripgrep-${RIPGREP_VER}-x86_64-unknown-linux-musl/rg /usr/local/bin

# install dircolors-solarized
ghq get seebi/dircolors-solarized
ln -s $HOME/.ghq/github.com/seebi/dircolors-solarized/dircolors.ansi-universal $HOME/.dircolors

# 応急処置
# install diff-highlight
sudo ln -s $HOME/.zplug/repos/b4b4r07/dotfiles/bin/diff-highlight /usr/local/bin/diff-highlight
