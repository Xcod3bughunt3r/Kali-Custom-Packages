#!/bin/bash
sudo mkdir -p /opt/sniff/net-creds 2>/dev/null
git clone https://github.com/DanMcInerney/net-creds.git /opt/sniff/net-creds
pip2 install scapy wsgiref
