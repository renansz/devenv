#!/bin/bash

#create symbolic links for each dot file. I did it one file at a time
#so you can remove the ones you don't want to create

#vim
ln -s ~/.vimrc .vimrc
ln -s ~/.vim .vim
ln -s /usr/share/vim/vim??/colors/ jellybean.vim

#bash
ln -s ~/.bashrc .bashrc

#screen
ln -s ~/.screenrc .screenrc

#emacs
ln -s ~/.emacs .emacs


