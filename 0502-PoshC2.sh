#!/bin/bash

# Default dir is /opt/PoshC2
# The script will get a bunch of stuff (python, mingw, etc). 
# It will apt-get update. 
# It will clone instead of download zip
# It will install python requirements.txt
sudo curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2/master/Install.sh | bash
sudo git clone --depth=1 https://github.com/nettutude/PoshC2.git /opt/PoshC2


