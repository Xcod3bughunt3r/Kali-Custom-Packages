#!/bin/bash
sudo mkdir -p /usr/share/dotdotpwn/Reports 2>/dev/null
sed -e "s/<STDIN>;/#<STDIN>;/" /usr/share/dotdotpwn/dotdotpwn.pl > /tmp/dotdotpwn_TMP && sudo mv /tmp/dotdotpwn_TMP /usr/share/dotdotpwn/dotdotpwn.pl
sudo chmod +x /usr/share/dotdotpwn/dotdotpwn.pl
