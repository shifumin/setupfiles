#!/bin/bash

# install dotfiles
DOT_FILES=( ansible.cfg .ctags .gemrc .gitconfig .gitignore .gitmessage.txt .pryrc .rubocop.yml .tigrc .tmux.conf .vimrc .vimrc.neobundle .zshrc .zshrc.custom )
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

# install $HOME/.vim/indent/*.vim
[ ! -d $HOME/.vim/indent ] && mkdir -p $HOME/.vim/indent
ln -s $HOME/dotfiles/.vim/indent/ruby.vim $HOME/.vim/indent/
ln -s $HOME/dotfiles/.vim/indent/php.vim $HOME/.vim/indent/

# install $HOME/.vim/syntax/smarty.vim
[ ! -d $HOME/.vim/syntax ] && mkdir -p $HOME/.vim/syntax && ln -s $HOME/dotfiles/.vim/syntax/smarty.vim $HOME/.vim/syntax/

# install $HOME/.vim/after/plugin/common-settings.vim
[ ! -d $HOME/.vim/after/plugin ] && mkdir -p $HOME/.vim/after/plugin && ln -s $HOME/dotfiles/.vim/after/plugin/common-settings.vim $HOME/.vim/after/plugin/
