#!/bin/bash

# install systemd file
sed "s|{path}|$(pwd)|g" discord-startup-notify.service | sudo tee /etc/systemd/system/discord-startup-notify.service

# reload systemd daemon
sudo systemctl daemon-reload

# enable service
sudo systemctl enable discord-startup-notify.service

