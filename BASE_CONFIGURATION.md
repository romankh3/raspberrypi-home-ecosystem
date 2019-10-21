# This is detailed description of [Base Configuration](https://github.com/romankh3/raspberrypi-home-ecosystem#base-congifuration-for-the-single-board-computers).

* [Requirements](#requeirements)
* [Download Operation System](#download-operation-system)
* [MicroSD Card](#microsd-card)
* [Format microSD card to FAT32](#format-microsd-card-to-fat32)
* [Flash Raspbian into microSD](#flash-raspbian-into-microsd)
* [Turn on raspberry and set Wi-Fi connection](#turn-on-raspberry-and-set-wi-fi-connection)
* [Install Git](#install-git)
* [Set Static Ip Address](#set-static-ip-address)
* [Install RPi-monitor](#install-rpi-monitor)
* [Backup](#backup)
* [Summary](#summary)

## Requeirements
* Downloaded OS
* microSD card 16GB
* Raspberry Pi model 3b+
* Display to setup first configuration
* HDMI cable
* keyboard

## Download Operation System
I prefer the [Raspbian Official Operation System](https://www.raspberrypi.org/downloads/raspbian/).

## MicroSD card
In my opinion, the capacity of the card should be 16GB. I prefer `SanDisk`.

## Format microSD card to FAT32
Format microSD card to FAT32 format. I use [CD Card Formatter](https://www.sdcard.org/downloads/formatter_4/).

<img width="634" alt="microSD_Card_Formatting" src="https://user-images.githubusercontent.com/16310793/54485358-c2eeff00-487f-11e9-970f-153c158dccce.png">

## Flash Raspbian into microSD
Install downloaded image on microSD. I use [balenaEtcher](https://www.balena.io/etcher/) to do it. It's easy to use. It has one feature - mount `.img` files into the microDS card and nothing else!

<img width="954" alt="flash_raspbian_to_microSD" src="https://user-images.githubusercontent.com/16310793/54485381-2f69fe00-4880-11e9-881e-7c170867b53d.png">

## Turn on raspberry and set Wi-Fi connection
1. Plug in microSD card into Raspberry Pi and on the single-board PC.

2. Next, put default `user:password`: `pi:raspberry`.

3. Next, should be configured Wi-Fi connection and SSH to be enabled: `$ sudo raspi-config`

And configuration window will open and looks like picture below:
<img width="924" alt="Raspi Configuration Window" src="https://user-images.githubusercontent.com/16310793/54557655-5d585b00-49c4-11e9-9b1f-64f12fecf12e.png">

4. Next, choose `Interfacing Options` and set `SSH` enable. This will help to connect to Raspberry Pi via SSH.

5. After that, go back and go to `Network Options` and choose `Wi-Fi`. Fill the name and password of the Wi-Fi.

6. To be sure, that these changes are working as expected, reboot Raspberry: `$ sudo reboot`

7. Next, need to understand the `IP address` of the Raspberry to connect to: `$ sudo ifconfig`

Next we can find the it:


<img width="454" alt="Sudo ifconfig" src="https://user-images.githubusercontent.com/16310793/54558416-57637980-49c6-11e9-8688-fcdfefb15cf6.png">


And `192.168.0.104` is an IP address of the Raspberry Pi.

Summary: all the actions will be executed from PC via SSH connection. SSH connection it's out of the scope, so google it :)

## Install Git
This is the light version of the Raspbian, that's why before using `scripts` from the project, we need to clone it, for this purpose install git:

`$ sudo apt-get install git -y`

## Set Static Ip Address
To be sure, that every time Raspberry will be on the same IP, this needs to be configured:

First, we need to understand the main IP address of the router. For example, in this case, it's `192.168.0.1`. Or it can be `192.168.1.1`. 

Open the dhcpcd config:

`$ sudo nano /etc/dhcpcd.conf`

and write down below 

```
nodhcp

interface eth0
static ip_address=192.168.0.222/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1

interface wlan0
static ip_address=192.168.0.222/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1

interface wlan1
static ip_address=192.168.0.222/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1

```

It looks like below:
<img width="254" alt="dhcpcd config result" src="https://user-images.githubusercontent.com/16310793/54561000-4ddd1000-49cc-11e9-8ab6-441a5db5a42e.png">

I choose `192.168.0.222` as a static ip address and set to all interfaces, which can be.

Next, reboot raspberry and watch to static IP instead of the dynamic.

`$ sudo reboot`

## Install RPi-monitor
Raspberry should be monitored and `RPi-monitor` - it's the tool, which can help with it. It developed for Raspbian and it's fast and light.
It shows the next data:
* Version of the OS
* Uptime
* CPU
* Temperature
* Memory
* SD Card memory

Looks like picture below:

<img width="1620" alt="RPi-monitor screenshot" src="https://user-images.githubusercontent.com/16310793/54562822-6bac7400-49d0-11e9-8f68-c1fc27402596.png">

I really like it, moreover it has `statistics` section, when can be sound data from last reboot, see below:

<img width="983" alt="RPi-monitor statictics" src="https://user-images.githubusercontent.com/16310793/54562960-bb8b3b00-49d0-11e9-9836-a17617006c93.png">

Can be used [bash script](https://github.com/romankh3/raspberrypi-home-ecosystem/blob/master/scripts/baseconfiguration/rpi-monitor.sh) from the project.

So, go ahead:

First, add `https` support:

`$ sudo apt-get install apt-transport-https ca-certificates`

Add the public key for repository access:

`$ sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2C0D3C0F`

Add RPi-monitor repository to the list of the available repos:

`$ sudo wget goo.gl/vewCLL -O /etc/apt/sources.list.d/rpimonitor.list`

Update packages with new configurations:

`$ sudo apt-get update`

Install RPi-monitor:

`$ sudo apt-get install rpimonitor`

It's the last step for installing RPi-monitor. Let's do extra configurations.

Add auto update package status:

```
$ sudo /etc/init.d/rpimonitor install_auto_package_status_update
$ sudo /etc/init.d/rpimonitor update
$ sudo service rpimonitor restart
```

Now it's available in `192.168.0.222:8888`.

## Backup
This is a good time to do the backup. What does it mean? It means that needs to create `.img` file of the microSD card with Base Configuration to be sure that if something will be bad, we can easily set it again, just mount own customized image.
//todo adds the link to the base configuration image.

Should be found the name of the microSD card put it into command below

For people who use linux/macOS it's really easy. I use macOS, so will tell how to do it on macboor:

`$ sudo dd if=/dev/name_of_the_microSdCard of=/home/Username/Desktop/raspberrypi-backup.img`
 
 That’s it. The only thing is highly recommended is that you properly eject the SD before taking it out of the slot physically:

`$ sudo diskutil eject /dev/name_of_the_microSdCard`

**Full Description of how to make the backup without empty space will be added later**

## Summary

It's all that I wanted to add to the Base Configuration stage. This is the base of all the instances of all Raspberry Pi PCs. 

Good luck!
