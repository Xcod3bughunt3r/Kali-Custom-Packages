#!/bin/bash
# TODO remove until fuse can be made to work

#re-adding since nfspy has been removed from kali-rolling repo
mkdir -p /opt 2>/dev/null
git clone https://gitlab.com/kalilinux/packages/nfspy.git /opt/nfspy

# may need to build from source: https://github.com/libfuse/python-fuse.git
sudo apt install -y python-fuse

#old_dir=$(pwd)
cd /opt/nfspy && sudo python2 setup.py install
cd $old_dir
