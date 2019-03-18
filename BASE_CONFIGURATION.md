# This is detailed description of [Base Configuration](https://github.com/romankh3/raspberrypi-home-ecosystem#base-congifuration-for-the-single-board-computers).

## Requeirements
* Downloaded OS
* microSD card 16GB
* Raspberry Pi model 3b+
* Display to setup first configuration
* HDMI cable
* keyboard

## Download Operation System
I prefere Raspberrian Official Operation System, it can be downloaded [here](https://www.raspberrypi.org/downloads/raspbian/).

## microSD card
In my opinion capacity of the card should be 16GB. I prefere `sanDisk`.

## Format microSD card to FAT32
Format microSD cart to FAT32 format. I use [CD Card Formatter](https://www.sdcard.org/downloads/formatter_4/).

<img width="634" alt="microSD_Card_Formatting" src="https://user-images.githubusercontent.com/16310793/54485358-c2eeff00-487f-11e9-970f-153c158dccce.png">

## Flash Raspberrian into microSD
Install downloaded image on microSD. I use [balenaEtcher](https://www.balena.io/etcher/) to do it. It's easy to use. It has one feature - mount `.img` files into microDS card and nothin else!

<img width="954" alt="flash_raspberrian_to_microSD" src="https://user-images.githubusercontent.com/16310793/54485381-2f69fe00-4880-11e9-881e-7c170867b53d.png">

## Turn on raspberry and set Wi-Fi connection
Plug in microSD card into Raspberry Pi and on the single-board PC.

Next put default `user:password`: `pi:raspberry`.

Next, should be configured Wi-Fi connection and SSH to be enabled.

`$ sudo raspi-config`

And configuration window will open and looks like picture below:
<img width="924" alt="Raspi Configuration Window" src="https://user-images.githubusercontent.com/16310793/54557655-5d585b00-49c4-11e9-9b1f-64f12fecf12e.png">

Next, choose `Interfacing Options` and set `SSH` enable. This will help to connect to Raspberry Pi via SSH.

After that, go back and go to `Network Options` and choose `Wi-Fi`. Fill name and password of the Wi-Fi.

To be sure, that these changes is working as expected, re boot Raspberry

`$ sudo reboot`

Next, need to undestand the `ip address` of the Raspberry to connect to.

`$ sudo ifconfig`

Next we can find the it:

<img width="454" alt="Sudo ifconfig" src="https://user-images.githubusercontent.com/16310793/54558416-57637980-49c6-11e9-8688-fcdfefb15cf6.png">

And `192.168.0.104` is an ip address of the Raspberry Pi.

Next all the actions will be executed from PC via SSH connection. SSH connection it's out of the scope, so google it :)

## Set Static Ip Address
To be sure, that everytime Raspberry will be on the same IP, this needs to be configured:

First we need to updarstand the main ip address of the router. For example in this case, it's `192.168.0.1`. Or it can be `192.168.1.1`. 

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
static ip_address=192.168.0.2224/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1

```

It looks like below:
<img width="254" alt="dhcpcd config result" src="https://user-images.githubusercontent.com/16310793/54561000-4ddd1000-49cc-11e9-8ab6-441a5db5a42e.png">

I choose `192.168.0.222` as a static ip address and set to all interfaces, which can be.

Next, re boot raspberry and watch to static ip instead of the dinamic.

`$ sudo reboot`
