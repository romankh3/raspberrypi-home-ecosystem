![square version-01](https://user-images.githubusercontent.com/16310793/57600941-db1f8980-7563-11e9-95ed-5f9c90f0136c.png)
# Smart home ecosystem based on Raspberry Pi
Build your own smart home ecosystem based on Raspberry Pi. Use the guideline and/or bash scripts, which is tested and verified on real hardware and software.

Why do you need it? It a great chance to build own smart home, which is customing as you want and all the features as you want.


# Release Notes

### 0.1.0-SNAPSHOT
* added [Base configuration for the single-board computers](#base-congifuration-for-the-single-board-computers)
* add all scripts based on Base Configuration and tested it.
# Parts
* [Base congifuration for the single-board computers](#base-congifuration-for-the-single-board-computers)
* [Main server based on Raspberry Pi Modeb 3b+](#main-server-based-on-raspberry-pi-modeb-3b)
* [Camera monitoring based on Raspberry Pi Zero W](#camera-monitoring-based-on-raspberry-pi-zero-w)
* [Monitoring home state with different sensors](#monitoring-home-state-with-different-sensors)
* [Local internet customising based on Orange Pi R1](#local-internet-customising-based-on-orange-pi-r1)
* [Backup server on Raspberry Pi Zero W](#Backup-server-on-Raspberry-Pi-Zero-W)

## Base congifuration for the single-board computers
[Full description](BASE_CONFIGURATION.md) [:arrow_up:](#smart-home-based-on-raspberry-pi) Go Top.
  1. Download [Raspbian OS](https://www.raspberrypi.org/downloads/raspbian/). All the guidelines describe the case with *Raspbian Stretch Lite*, the image with the only command line.
  2. Get microSD card on 16GB+. I prefer SanDisk 16GB.
  3. Format microSD card to FAT32 format. I use *CD Card Formatter* on MacOS.
  4. Install downloaded image on microSD. I use *balenaEtcher* to do it.

## Main server based on Raspberry Pi Modeb 3b+
[:arrow_up:](#smart-home-based-on-raspberry-pi) 
1. Implement [Base Configuration](#base-congifuration-for-the-single-board-computers)
2. Install torrent-downloader(to be added)
3. Mount USB-storage
4. Install own cloud
5. to be added
## Camera monitoring based on Raspberry Pi Zero W
[Full description](PI_ZERO_W_CAMERA.md) [:arrow_up:](#smart-home-based-on-raspberry-pi)
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
## Backup server on Raspberry Pi Zero W
[To be added](BACKUP_SERVER.md). Zero W should be enough to be a backup server.
1. Implement [Base Configuration](#base-congifuration-for-the-single-board-computers)
2. Mount USB-storage and connect it to USB 2.0
3. Install Samba.

## Local internet customising based on Orange Pi R1
[:arrow_up:](#smart-home-based-on-raspberry-pi) To be added

# Usage
[:arrow_up:](#smart-home-based-on-raspberry-pi)
Step by step these guidelines can be used for creating own smart home ecosystem.

You can use two ways to do it. 
* First is to go step by step throws the description.
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
If you have any ideas of how to improve this approach or you have ideas about new features - welcome!
Full description can be found [HERE](CONTRIBUTING.md)
# Lisence
[:arrow_up:](#smart-home-based-on-raspberry-pi)
This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

