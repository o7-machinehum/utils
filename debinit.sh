#!/bin/bash

# --- Manual ---
# su
# apt install sudo
# adduser machinehum sudo
# Then, reboot

sudo apt install -y git make vim python3 gcc i3 chromium weechat zathura ranger snap gparted openocd gdb-multiarch gcc-arm-none-eabi texlive-full doxygen octave


cd xmodmap
./link.sh
cd ..

cd vim
./updateVimrcPC.sh
cd ..

cd menu
./link.sh
cd ..

cd bash
./updateScreenrcPC.sh
cd ..

cd screen
./updateScreenrcPC.sh
cd ..

cd ~
rm -r Desktop Documents Music Templates Videos

git config --global core.editor "vim"
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool
