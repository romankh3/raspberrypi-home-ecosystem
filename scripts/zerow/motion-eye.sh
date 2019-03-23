#!/usr/bin/env bash

#
# These guidelines was taken from official wifi page:
# https://github.com/ccrisan/motioneye/wiki/Install-On-Raspbian
#
# todo
# test it
#

# Install ffmpeg and v4l-utils:
sudo apt-get install ffmpeg v4l-utils

# Install libmariadbclient18 and libpq5 required by motion:
sudo apt-get install libmariadbclient18 libpq5

# Install motion:
sudo wget https://github.com/Motion-Project/motion/releases/download/release-4.1.1/pi_stretch_motion_4.1.1-1_armhf.deb
sudo dpkg -i pi_stretch_motion_4.1.1-1_armhf.deb

# Install the dependencies from the repositories:
sudo apt-get install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev

# Install motioneye, which will automatically pull Python dependencies (tornado, jinja2, pillow and pycurl):
sudo pip install motioneye

# Prepare the configuration directory:
sudo mkdir -p /etc/motioneye
sudo cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf

# Prepare the media directory:
sudo mkdir -p /var/lib/motioneye

# Add an init script, configure it to run at startup and start the motionEye server:
sudo cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
sudo systemctl daemon-reload
sudo systemctl enable motioneye
sudo systemctl start motioneye

