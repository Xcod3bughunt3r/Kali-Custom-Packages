#!/bin/bash
sudo mkdir -p /opt/active_directory 2>/dev/null
git clone https://github.com/SySS-Research/Seth.git /opt/active_directory/seth
pip3 install -r /opt/active_directory/seth/requirements.txt
