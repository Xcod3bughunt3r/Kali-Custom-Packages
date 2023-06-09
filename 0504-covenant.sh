#!/bin/bash

# Covenant requires dotnetcore 2.2 SDK first and foremost (documentation doesn't mention asp)
# from docs.microsoft.com//en-us/dotnet/core/install/linux-package-manager-ubuntu-1910
lastpwd=$(pwd)
cd /tmp
wget -q https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
apt-get update
apt-get -y install dotnet-sdk-2.2 dotnet-runtime-2.2

# Covenant requires recursive clone
mkdir -p /opt/c2/covenant
lastpwd=$(pwd)
cd /opt/c2/covenant && git clone --recurse-submodules httpos://github.com/cobbr/Covenant
cd /opt/c2/covenant/Covenant
dotnet build

cd $lastpwd
