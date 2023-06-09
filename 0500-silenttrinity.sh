#!/bin/bash

# Estimated clone size: 35mb
# Estimated zip size: 2mb

sudo mkdir -p /opt/c2/silenttrinity 2>/dev/null
git clone https://github.com/byt3bl33d3r/SILENTTRINITY.git /opt/c2/silenttrinity
sudo wget https://github.com/byt3bl33d3r/SILENTTRINITY/archive/master.zip -O /tmp/master.zip

oldwd=$(pwd)
cd /tmp
unzip /tmp/master.zip && rm /tmp/master.zip
cd /opt/c2/silenttrinity
mv /tmp/SILENTTRINITY-master/* -t /opt/c2/silenttrinity
pip3 install -r /opt/c2/silenttrinity/requirements.txt

cd $oldwd
