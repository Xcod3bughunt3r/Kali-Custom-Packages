#!/bin/bash

# Estimated clone size: 1mb

sudo mkdir -p /opt/active_directory 2>/dev/null
git clone https://github.com/fox-it/BloodHound.py.git /opt/active_directory/bloodhound_py
old_dir=$(pwd)
cd /opt/active_directory/bloodhound_py
python3 ./setup.py install
cd $old_dir
