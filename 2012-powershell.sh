#!/bin/bash

# dependencies
sudo apt install -y curl gnupg apt-transport-https

# let's get powershell set up via microsoft's instructions
# docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7


lastpwd=$(pwd)
cd /tmp
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-buster-prod buster main" > /etc/apt/sources.list.d/microsoft.list'
sudo apt update
sudo apt install -y powershell

cd $lastpwd
