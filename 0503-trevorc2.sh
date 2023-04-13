#!/bin/bash


# download zip (smaller), unzip and clean up
# pip install requirements
sudo mkdir -p /opt/c2/trevorc2
wget -O /opt/c2/trevorc2/trevorc2.zip https://github.com/trustedsec/trevorc2/archive/master.zip
sudo cd /opt/c2/trevorc2 && sudo unzip trevorc2.zip && sudo rm trevorc2.zip
sudo cp -R /opt/c2/trevorc2/trevorc2-master/* /opt/c2/trevorc2 && sudo rm -rf /opt/c2/trevorc2/trevorc2-master

pip3 install -r /opt/c2/trevorc2/requirements.txt
