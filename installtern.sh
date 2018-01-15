#!/bin/bash

curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs

rm nodesource_setup.sh

sudo npm install -g tern
