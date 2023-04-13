#!/bin/bash

# Estimated size of clone: 70mb
# Estimated size of zip: 5mb

mkdir -p /usr/share/lists/password 2>/dev/null
git clone https://github.com/berzerk0/Probable-Wordlists.git /root/lists/password/probable
wget https://github.com/berzerk0/Probable-Wordlists/archive/master.zip -O /usr/share/lists/password/probable.zip
