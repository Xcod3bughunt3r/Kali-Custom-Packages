#!/bin/bash

# Estimated clone size: 1mb

sudo mkdir -p /opt/active_directory 2>/dev/null
git clone https://github.com/byt3bl33d3r/DeathStar.git /opt/active_directory/deathstar
pip3 install -r /opt/active_directory/deathstar/requirements.txt
