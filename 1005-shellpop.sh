#!/bin/bash

sudo mkdir -p /opt/shells/shellpop 2>/dev/null
wget https://github.com/0x00-0x00/ShellPop/archive/master.zip -O /tmp/shellpop.zip

last=$(pwd)
cd /tmp && unzip shellpop.zip && rm shellpop.zip
cd /opt/shells/shellpop && mv /tmp/ShellPop-master/* -t /opt/shells/shellpop && pip3 install -r requirements.txt && chmod +x setup.py && python3 setup.py install
cd $last
