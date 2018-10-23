#!/bin/bash

# remove root's ability to SSH in
sudo sed -i "s/PermitRootLogin.*/PermitRootLogin no/g" /etc/ssh/sshd_config

systemctl restart sshd
