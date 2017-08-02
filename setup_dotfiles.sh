#!/bin/bash

# install dotfiles
DOT_FILES=( ansible.cfg .ctags .gemrc .gitconfig .gitignore .gitmessage.txt .pryrc .rubocop.yml .tigrc .tmux.conf .vimrc .vimrc.neobundle .zshenv .zshrc .zprofile)
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/
done

# install bin for tmux
BIN_FILES=( battery )
for file in ${BIN_FILES[@]}
do
    ln -s $HOME/dotfiles/$file /usr/local/bin/
done

# install $HOME/.vim/after/plugin/common-settings.vim
[ ! -d $HOME/.vim/after/plugin ] && mkdir -p $HOME/.vim/after/plugin && ln -s $HOME/dotfiles/.vim/after/plugin/common-settings.vim $HOME/.vim/after/plugin/

# setup Neovim settings
[ ! -d ~/.config/nvim ] && mkdir -p ~/.config/nvim

NEOVIM_FILES=( dein.toml deinlazy.toml init.vim mapping.vim options.vim plugins.vim )
for file in ${NEOVIM_FILES[@]}
do
    ln -s $HOME/dotfiles/nvim/$file $HOME/.config/nvim/
done
