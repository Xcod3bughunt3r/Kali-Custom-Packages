#!/bin/bash

sudo mkdir -p /opt/web
ver=$(curl https://github.com/gchq/CyberChef/releases/latest | cut -d"v" -f 2 | cut -d'"' -f 1)
wget https://github.com/gchq/CyberChef/releases/download/v$ver/CyberChef_v$ver.zip -O /opt/web/CyberChef.zip
