#!/bin/bash

# Estimated clone size: 1mb

sudo mkdir -p /opt/shells 2>/dev/null
sudo mkdir -p /opt/shares 2>/dev/null
git clone https://github.com/trustedsec/nps_payload.git /opt/shells/nps_payload
pip3 install -r /opt/shells/nps_payload/requirements.txt

cp /etc/samba/smb.conf /etc/samba/smb_bak_1.conf 2>/dev/null

cat << EOF >> /etc/samba/smb.conf
[payloads\$]
  comment = Dirty Payloads
  path = /opt/shares/payloads
  browsable = yes
  guest ok = yes
  read only = yes
EOF
