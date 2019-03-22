#!/usr/bin/env bash


#
# Full update the system
#
# todo
# test it.
#

# update all packages to latest version
sudo apt-get update
sudo apt-get upgrade

# update Raspbian firmware
sudo rpi-update

# apply changes
sudo reboot