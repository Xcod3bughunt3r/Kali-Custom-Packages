#!/bin/bash

sudo mkdir -p /opt/getsploit 2>/dev/null
sudo wget https://github.com/vulnersCom/getsploit/archive/master.zip -O /tmp/getsploit.zip

last=$(pwd)
sudo cd /tmp && unzip getsploit.zip && sudo rm getsploit.zip
sudo cd /opt/getsploit && sudo mv /tmp/getsploit-master/* -t /opt/getsploit && sudo chmod +x setup.py && sudo python3 setup.py install
cd "$last"
