#!/bin/bash

repo_dir=$(pwd)
ln -s $repo_dir/dotfiles/.vimrc ~/.vimrc
ln -s $repo_dir/dotfiles/.Xmodmap ~/.Xmodmap
ln -s $repo_dir/dotfiles/.xinitrc ~/.xinitrc
ln -s $repo_dir/dotfiles/.bashrc ~/.bashrc

ln -s $repo_dir/dotfiles/i3/config ~/.config/i3/config
