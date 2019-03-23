#!/usr/bin/env bash

#
# These guidelines was taken from official wifi page:
# https://github.com/ccrisan/motioneye/wiki/Install-On-Raspbian
#

# To upgrade to the newest version of motionEye, just issue:
pip install motioneye --upgrade
systemctl restart motioneye
