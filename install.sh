#!/usr/bin/env bash

[ -e $(pwd)/vim/bundle/YouCompleteMe/install.py ] || git submodule update --init

[ -e ~/.gitconfig ] || ln -s $(pwd)/gitconfig ~/.gitconfig
[ -e ~/.gitignore ] || ln -s $(pwd)/gitignore ~/.gitignore
[ -e ~/.vimrc ] || ln -s $(pwd)/vimrc ~/.vimrc
[ -e ~/.vim ] || ln -s $(pwd)/vim ~/.vim
[ -e ~/.gdb ] || ln -s $(pwd)/gdb ~/.gdb
[ -e ~/.gdbinit ] || ln -s $(pwd)/gdbinit ~/.gdbinit
[ -e ~/.pdbrc.py ] || ln -s $(pwd)/pdbrc.py ~/.pdbrc.py

bashrc_tag="a70634b1-ff48-4124-89c4-aa7b93584f90"
if ! grep -q $bashrc_tag ~/.bashrc ; then
  cat <<EOT >> ~/.bashrc

# Added automatically by https://github.com/ivochkin/dotfiles
# Search tag: $bashrc_tag
# Begin section

. $(pwd)/bashrc

# End section
EOT
fi
