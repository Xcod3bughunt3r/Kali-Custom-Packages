#!/bin/bash
sudo apt install -y curl gnupg
wget -qO /tmp/dockergpg https://download.docker.com/linux/debian/gpg
sudo apt-key add /tmp/dockergpg
rm /tmp/dockergpg
sudo sh -c 'echo "deb https://download.docker.com/linux/debian buster stable" > /etc/apt/sources.list.d/docker.list'
sudo apt update
sudo apt -y remove docker docker-engine docker.io
sudo apt install -y docker-ce
