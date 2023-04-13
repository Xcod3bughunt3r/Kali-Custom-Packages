#!/bin/bash

wget https://github.com/rewardone/OSCPRepo/archive/master.zip -O /tmp/OSCPRepo.zip
cd /tmp && unzip /tmp/OSCPRepo.zip && rm /tmp/OSCPRepo.zip

sudo mkdir -p /root/Documents/OSCPRepo

# Copy OSCP Repo notes into Documents
sudo cp -r /tmp/OSCPRepo-master/CherryTrees /root/Documents

# Copy OSCP Repo scripts into scripts
sudo cp -r /tmp/OSCPRepo-master/scripts /root/

# Copy OSCP Repo lists into chroot lists. Zipping first to save space.
tar -zcf /tmp/OSCPRepo_lists.tar.gz /tmp/OSCPRepo-master/lists/* 2>/dev/null
sudo cp /tmp/OSCPRepo_lists.tar.gz /root/
sudo rm /tmp/OSCPRepo_lists.tar.gz

# Copy enumerators into local info enum
sudo mkdir -p "/root/Local_Info_Enum/Linux" 2>/dev/null
sudo mkdir -p "/root/Local_Info_Enum/Windows" 2>/dev/null
sudo cp -r "/tmp/OSCPRepo-master/Local Info Enum/Linux/*" /root/Local_Info_Enum/Linux
sudo cp -r "/tmp/OSCPRepo-master/Local Info Enum/Windows/*" /root/Local_Info_Enum/Windows

# Copy priv checkers into priv checkers
sudo mkdir -p "/root/Priv_Esc_Checks/Linux" 2>/dev/null
sudo mkdir -p "/root/Priv_Esc_Checks/Windows" 2>/dev/null
sudo cp -r "/tmp/OSCPRepo-master/Priv Esc Checks/Linux/*" /root/Priv_Esc_Checks/Linux
sudo cp -r "/tmp/OSCPRepo-master/Priv Esc Checks/Windows/*" /root/Priv_Esc_Checks/Windows



# Cleanup
sudo rm -rf /tmp/OSCPRepo-master
