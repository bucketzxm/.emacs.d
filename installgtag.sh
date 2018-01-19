#!/bin/bash


# change directory to current directory
cd "$(dirname "$0")"

# download global
wget http://tamacom.com/global/global-6.6.1.tar.gz
tar xvzf global-6.6.1.tar.gz
cd global-6.6.1


#install curses
sudo apt-get install libncurses5-dev libncursesw5-dev

./configure --with-exuberant-ctags=/usr/bin/ctasg
make
sudo make install

# cp config to HOME
cp gtags.conf ~/.globalrc


echo export GTAGSLABEL=pygments >> ~/.profile
