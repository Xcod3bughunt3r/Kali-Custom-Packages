#!/bin/bash
sudo apt install -y xorg && apt install -y xrdp xorgxrdp && apt install -y tigervnc-common tigervnc-standalone-server

sed -i"" 's/allowed_users=console/allowed_users=anybody/g' /etc/X11/Xwrapper.config

sudo systemctl enable xrdp
sudo service xrdp status