#!/bin/bash

# Estimated size of clone: 1mb

sudo mkdir -p /root/lists/password 2>/dev/null
git clone https://github.com/initstring/passphrase-wordlist.git /root/lists/password/passphrases
