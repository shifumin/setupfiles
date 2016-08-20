#!/bin/bash

# install dotfiles
DOT_FILES=( ansible.cfg .ctags .gemrc .gitconfig .gitignore .gitmessage.txt .pryrc .rubocop.yml .tigrc .tmux.conf .vimrc .vimrc.neobundle .zshrc .zshrc.custom )
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# install bin for tmux
BIN_FILES=( battery )
for file in ${BIN_FILES[@]}
do
    ln -s $HOME/dotfiles/$file /usr/local/bin/$file
done

# install .vim/indent/**.vim
[ ! -d ~/.vim/indent ] && mkdir ~/.vim/indent
ln -s $HOME/dotfiles/.vim/indent/ruby.vim $HOME/.vim/indent/ruby.vim
ln -s $HOME/dotfiles/.vim/indent/php.vim $HOME/.vim/indent/php.vim

# install .vim/syntax/smarty.vim
[ ! -d ~/.vim/syntax ] && mkdir ~/.vim/syntax && ln -s $HOME/dotfiles/.vim/syntax/smarty.vim $HOME/.vim/syntax/smarty.vim
