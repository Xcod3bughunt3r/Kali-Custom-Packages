#!/bin/bash

# Teeth using Python2 which is deprecated

# Estimated size of clone: 60mb
# Estimated size of zip: 10mb

#mkdir -p /opt/teeth
sudo git clone --depth=1 https://gitlab.com/kalilinux/packages/maltego-teeth.git /opt/maltego-teeth
sudo wget https://gitlab.com/kalilinux/packages/maltego-teeth/-/archive/kali/master/maltego-teeth-kali-master.zip -O /opt/teeth/maltego-teeth.zip

# dependencies for teeth. some are no longer in kali repo
sudo apt install -y python-mechanize python-levenshtein python-adns python-msgpack python-bs4
sudo pip install metaconfig easygui
