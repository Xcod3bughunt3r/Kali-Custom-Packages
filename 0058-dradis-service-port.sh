#!/bin/bash
# Set dradis to listen on all interfaces instead of only local for collaboration

sudo sed -i 's/webrick/webrick -b 0.0.0.0/g' /lib/systemd/system/dradis.service
