#!/usr/bin/env bash

#
# todo
# 1. make it executable.
#

# First, add https support:
sudo apt-get install apt-transport-https ca-certificates

# Add public key for repository access:
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2C0D3C0F

# Add RPi-monitor repository to the list of the available repos:
sudo wget goo.gl/vewCLL -O /etc/apt/sources.list.d/rpimonitor.list

# Update packages with new configurations:
sudo apt-get update

# Install RPi-monitor:
sudo apt-get install rpimonitor -y -y

# Add auto update package status:
sudo /etc/init.d/rpimonitor install_auto_package_status_update
sudo /etc/init.d/rpimonitor update
sudo service rpimonitor restart