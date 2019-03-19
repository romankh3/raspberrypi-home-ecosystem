# Smart home based on Raspberry Pi
Guidelines of how to build smart home ecosystem based on Raspberry Pi. Why *Raspberry*? Because it's not so expensive as the solutions "out of the box".
This is first step to create smart home.

# Versions

### 0.0.2-SNAPSHOT
* apply updates for Raspberry Pi Zero W
* add all scripts and test them

### 0.0.1-SNAPSHOT 
* added [Base configuration for the single-board computers](#base-congifuration-for-the-single-board-computers)(Not added Samba)
* added bash script for installing RPi-monitor(not tested)
# Parts
* [Base congifuration for the single-board computers](#base-congifuration-for-the-single-board-computers)
* [Main server based on Raspberry Pi Modeb 3b+](#main-server-based-on-raspberry-pi-modeb-3b)
* [Camera monitoring based on Raspberry Pi Zero W](#camera-monitoring-based-on-raspberry-pi-zero-w)
* [Monitoring home state with different sensors](#monitoring-home-state-with-different-sensors)
* [Local internet customising based on Orange Pi R1](#local-internet-customising-based-on-orange-pi-r1)

## Base congifuration for the single-board computers
[Full description](BASE_CONFIGURATION.md) [:arrow_up:](#smart-home-based-on-raspberry-pi) Go Top.
  1. Download [Raspberrian OS](https://www.raspberrypi.org/downloads/raspbian/). All the guidelines describe the case with *Raspbian Stretch Lite*, image with only commandline.
  2. Get microSD card on 16GB+. I prefere sanDisk 16GB.
  3. Format microSD cart to FAT32 format. I use *CD Card Formatter* on MacOS.
  4. Install downloaded image on microSD. I use *balenaEtcher* to do it.

## Main server based on Raspberry Pi Modeb 3b+
[:arrow_up:](#smart-home-based-on-raspberry-pi) 
1. Implement [Base Configuration](#base-congifuration-for-the-single-board-computers)
2. Install torrent-downloader(to be added)
3. Mount USB-storage
4. Install own cloud
5. to be added
## Camera monitoring based on Raspberry Pi Zero W
[:arrow_up:](#smart-home-based-on-raspberry-pi)
1. Implement [Base Configuration](#base-congifuration-for-the-single-board-computers)
2. Install MotionEye using next [guidelines](https://github.com/ccrisan/motioneye/wiki/Install-On-Raspbian) or use our bash script `./srcripts/zerow/motion-eye.sh`
3. This raspberry can be used for other needs, too. On demand can be chosen features from list.
## Monitoring home state with different sensors
[:arrow_up:](#smart-home-based-on-raspberry-pi)
In a nutshell:
* CO2 Sensor
* Humidity sensor
* air temperature sensor
* etc

## Local internet customising based on Orange Pi R1
[:arrow_up:](#smart-home-based-on-raspberry-pi) To be added

# Usage
[:arrow_up:](#smart-home-based-on-raspberry-pi)
Step by step these guidelines can be used for creating own smart home ecosystem.

You can use two ways to do it. 
* First is to go step by step throw the description.
* Second is to run bash scripts, which are based on the guidelines.

# Features
[:arrow_up:](#smart-home-based-on-raspberry-pi)
* media server
* Wi-Fi printer
* gaming center
* torrent-downloader
* etc... to be added

# Contributing
[:arrow_up:](#smart-home-based-on-raspberry-pi)
If you have any ideas of how to improve these apporoach or you have ideas about new features - welcome!
The main idea is to provide the solution which won't really expensive. So think in this way ;)

# Lisence
[:arrow_up:](#smart-home-based-on-raspberry-pi)
This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

