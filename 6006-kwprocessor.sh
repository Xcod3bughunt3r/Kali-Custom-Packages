#!/bin/bash
sudo mkdir -p /root/lists/password/kwprocessor 2>/dev/null
git clone https://github.com/hashcat/kwprocessor.git /root/lists/password/kwprocessor
old_dir=$(pwd)
cd /root/lists/password/kwprocessor && make
cd $old_dir
