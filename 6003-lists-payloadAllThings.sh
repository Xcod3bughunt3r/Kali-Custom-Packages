#!/bin/bash

# Estimated size of clone: 20mb
# Estimated size of zip: 5mb

mkdir -p /usr/share/lists 2>/dev/null
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /root/lists/payloadAllTheThings
wget https://github.com/swisskyrepo/PayloadsAllTheThings/archive/master.zip -O /usr/share/lists/PayloadsAllTheThings.zip
