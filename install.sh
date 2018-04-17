#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

check_and_link()
{
	SRC="$1"
	DST="$2"
	if [ -e $DST -o -L $DST ]; then
	       echo "$DST existed, doin nothing"
       else
	       echo "$DST didn't exist, linkin"
	       ln -s $SRC $DST
       fi
}

cd ~/dotfiles

git submodule update --init

check_and_link ~/dotfiles/vim ~/.vim
check_and_link ~/dotfiles/vimrc ~/.vimrc
check_and_link ~/dotfiles/gitconfig ~/.gitconfig
check_and_link ~/dotfiles/gitignore_global ~/.gitignore_global
check_and_link ~/dotfiles/zshrc ~/.zshrc
check_and_link ~/dotfiles/screenrc ~/.screenrc
