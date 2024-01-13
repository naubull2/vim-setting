#!/bin/bash
cp ./home/.bashrc ~
cp ./home/.autoenv.bash ~
cp ./home/.git_prompt.bash ~
cp -r ./home/.vim ~
cp ./home/.vimrc ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source ~/.bashrc
source ~/.bash_profile
