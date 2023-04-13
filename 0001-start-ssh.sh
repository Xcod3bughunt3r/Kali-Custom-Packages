#!/bin/bash
# enable root login for ssh
sed 's/#PermitRootLogin prohibit-password/PermitRootLogin Yes/g' /etc/ssh/sshd_config > /tmp/sshd_config
sudo cp /tmp/sshd_config /etc/ssh/sshd_config
sudo rm /tmp/sshd_config
sudo systemctl enable ssh
sudo systemctl status ssh
# sudo systemctl desabled ssh
sudo service ssh start
sudo service ssh stop
sudo service ssh status

