#!/bin/bash
sudo mkdir -p /opt/active_directory 2>/dev/null
git clone https://github.com/CroweCybersecurity/ad-ldap-enum.git /opt/active_directory/ad-ldap-enum

# python-ldap(3) installed via kali.list.chroot
