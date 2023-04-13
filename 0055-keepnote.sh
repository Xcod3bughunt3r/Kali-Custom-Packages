#!/bin/bash

wget http://keepnote.org/download/keepnote_0.7.8-1_all.deb --output-document /tmp/keepnote.deb

sudo apt install -y python-gtk2 python-glade2 

# keepnote depends on python-central (>= 0.5.6)
# keepnote depends on python-gtk2
# keepnote depends on python-glade2

sudo dpkg -i /tmp/keepnote.deb && rm /tmp/keepnote.deb
