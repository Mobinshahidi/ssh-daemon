#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install autossh -y
sudo ssh-copy-id $SSHUSER@$SSHSERVER
sudo mkdir /opt/autossh
sudo cp -r * /opt/autossh
sudo cp ./autossh.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable autossh.service
sudo systemctl start autossh.service
