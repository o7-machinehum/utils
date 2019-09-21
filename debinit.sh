#!/bin/bash

# --- Manual ---
# su
# apt install sudo
# adduser machinehum sudo
# Then, reboot

sudo apt install -y git make vim python3 gcc i3 chromium weechat zathura ranger snap gparted openocd gdb-multiarch gcc-arm-none-eabi texlive-full doxygen octave xfce4-terminal compton feh

# Install brave
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ trusty main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-trusty.list
sudo apt update
sudo apt install brave-browser

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
