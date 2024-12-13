#!/bin/bash

repo_dir=$(pwd)
ln -s $repo_dir/dotfiles/.Xmodmap ~/.Xmodmap
ln -s $repo_dir/dotfiles/.xinitrc ~/.xinitrc
ln -s $repo_dir/dotfiles/.bashrc ~/.bashrc
ln -s $repo_dir/dotfiles/.Xresources ~/.Xresources

mkdir -p ~/.config/vim
mkdir -p ~/.config/i3
mkdir -p ~/.config/alacritty

ln -s $repo_dir/dotfiles/i3/config ~/.config/i3/config
ln -s $repo_dir/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s $repo_dir/dotfiles/vimrc ~/.vimrc
