#!/bin/bash
#locate, where your nmap scripts are located in your system
#copy the provided script (http-vulners-regex.nse) into <nmap_dir>/scripts/
#copy the provided json with the regexes to <nmap_dir>/nselib/data/
#copy the provided txt file with the default paths to <nmap_dir>/nselib/data/

#/usr/share/nmap/scripts
sudo git clone --depth=1 https://github.com/vulnersCom/nmap-vulners.git /tmp/nmap-vulners
sudo cp /tmp/nmap-vulners/http-vulners-regex.nse /usr/share/nmap/scripts/
sudo cp /tmp/nmap-vulners/http-vulners-regex.json /usr/share/nmap/nselib/data/
sudo cp /tmp/nmap-vulners/http-vulners-paths.txt /usr/share/nmap/nselib/data/
