#!/bin/bash

#This is needed for shellter, veil, and others

export DEBIAN_FRONTEND=noninteractive
sudo dpkg --add-architecture i386 && apt-get update && apt-get -y install wine32
export DEBIAN_FRONTEND=""
