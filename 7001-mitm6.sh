#!/bin/bash

# Estimated clone size: 1mb

sudo mkdir -p /opt/mitm/mitm6 2>/dev/null
git clone https://github.com/fox-it/mitm6.git /opt/mitm/mitm6
pip3 install -r /opt/mitm/mitm6/requirements.txt
ppwd=$(pwd)
cd /opt/mitm/mitm6 && python3 /opt/mitm/mitm6/setup.py install && cd $ppwd
