#!/bin/bash

# Estimated clone size: 25mb
# Estimated zip size: 5mb

sudo mkdir -p /opt/docker/gorsair 2>/dev/null
git clone https://github.com/Ullaakut/Gorsair.git /opt/docker/gorsair
wget https://github.com/Ullaakut/Gorsair/archive/master.zip -O /opt/docker/gorsair/gorsair.zip
