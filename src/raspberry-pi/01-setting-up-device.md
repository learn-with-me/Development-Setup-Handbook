# Setting up the device

## Install Operating System

> Skip this step if we have an SD card already with one of the Pi OS installed.

### Downloading OS image

Download a desired image from the [official website](https://www.raspberrypi.com/software/operating-systems/)

### Burn Image on SD card

You can use the official [Raspberry Pi Imager](https://www.raspberrypi.org/software/) (preferred).
Or [BalenaEtcher](https://www.balena.io/etcher/) is an excellent image writer for SD cards. These tool extracts the available files and makes the card bootable.

## Update Credentials

It is always a good idea to set personalized credentials on devices before letting them go online.

### Default Credentials

- default user name is `pi`
- default password is `raspberrypi`
- default hostname is `raspberrypi.local`

### Changing password

Type `passwd`, press `Enter` and follow the instructions.

### Changing password for root user

1. Type `sudo su` and enter
2. Type `passwd root`, press enter
3. Type your new password and hit enter

### Add new user

1. Type `adduser` and enter
2. Type `sudo adduser <user_name>` and enter. Example: `sudo adduser mypiuser`
3. Follow the remaining instructions

### Delete a user

1. Type `userdel` and enter
2. Type `sudo userdel -r <user_name>` and enter. Example: `sudo userdel -r pi`

## Enable SSH

Secure Socket Shell (ssh) disabled by default, for security reasons.
To enable ssh, place a blank text file with name `ssh` (no file extension) in the root directory. Root directory depends on the user. For user `pi`, it would be `/home/pi/`.

## Set up WiFi

This step configures WiFi for the Pi, so the device automatically stays connected to internet every time it is on.

Create `/etc/wpa_supplicant/wpa_supplicant.conf` file, with settings below. Make sure to replace network credentials with desired ones.

```sh
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="NETWORK-NAME"
    psk="NETWORK-PASSWORD"
    priority=1
    id_str="Family"
}

# If you have more than one network to connect to
network={
    ......
}
```

> If the wifi network is hidden, add `scan_ssid=1` to the configuration file.

Verify the `wlan0` network setting using `iwconfig`, `ifconfig` or `iwlist wlan0 scan` commands.

## Update Device

To get the latest version of the operation system and dependencies, use the following command:

```sh
$ sudo apt update && sudo apt upgrade -y
```
