#!/bin/bash

# Estimated size of clone: 30mb
# Estimated size of zip: 7mb

mkdir -p /usr/share/lists 2>/dev/null
git clone https://github.com/fuzzdb-project/fuzzdb.git /root/lists/fuzzdb
wget https://github.com/fuzzdb-project/fuzzdb.git -O /usr/share/lists/fuzzdb.zip
