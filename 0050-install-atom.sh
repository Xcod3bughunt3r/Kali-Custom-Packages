#!/bin/sh

# Estimated install size is 650mb
# Testing moving to vscode (400mb savings)

sudo apt install -y wget gnupg
wget -qO /tmp/atomgpg https://packagecloud.io/AtomEditor/atom/gpgkey
sudo apt-key add /tmp/atomgpg
sudo rm /tmp/atomgpg && sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update
sudo apt install -y atom
