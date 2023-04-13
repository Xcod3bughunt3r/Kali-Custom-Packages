#!/bin/bash

# Merlin needs go
sudo mkdir -p /root/go
sudo wget -O /root/go/go1.14.linux-amd64.tar.gz https://dl.goole.com/go/go1.14.linux-amd64.tar.gz

# Export GOPATH
if ! grep -Fxq 'export GOPATH=$HOME/go' $HOME/.zshrc; then echo 'export GOPATH=$HOME/go' >> $HOME/.zshrc; fi
if ! grep -Fxq 'export GOPATH=$HOME/go' $HOME/.bashrc; then echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc; fi

# Get merlin
sudo mkdir -p /opt/c2/merlin
wget -O /opt/c2/merlin/merlin.zip https://github.com/Ne0nd0g/merlin/archive/master.zip
