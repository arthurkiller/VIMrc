#!/bin/bash
# this shell is used to install the vimrc file to your home dir automaticly
# for more information , please mail me at arthurkiller21@gmail.com
trap exit ERR
cp vimrc ../.vimrc
cp vim ../.vim

cd ~/.vim/bundle 
git clone https://github.com/gmarik/Vundle.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/fatih/vim-go.git

(cd ~/.vim/bundle/YouCompleteMe/ && git submodule update --init --recursive \
        && ./install.py --all)