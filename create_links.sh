#!/bin/bash

#create symbolic links for each dot file. I did it one file at a time
#so you can remove the ones you don't want to create

#vim
ln -s `pwd`/.vimrc $HOME/.vimrc
cp `pwd`/jellybeans.vim /usr/share/vim/vim??/colors/

#bash
ln -s `pwd`/.bashrc $HOME/.bashrc 

#screen
ln -s `pwd`/.screenrc $HOME/.screenrc 

#emacs
ln -s `pwd`/.emacs $HOME/.emacs 


#(OPTIONAL) -- programs instalation
aptitude update
aptitude install vim screen #put emacs if will
