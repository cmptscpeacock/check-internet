#!/bin/bash

# variables

## credentials

## define console colours

RED='\033[0;31m' # red
WHITE='\033[1;37m' # white

## define formatting

UNDERLINE='\033[4m'
RESETUNDERLINE='\033[24m'

# install check internet script
## create directory

sudo mkdir /home/pi/check-internet/
#cd /home/pi/check-internet/

## download shell script

wget -O check-internet.sh https://raw.githubusercontent.com/cmptscpeacock/check-internet/master/check-internet.sh
mv check-internet.sh /home/pi/check-internet/check-internet.sh

## change permissions

sudo chmod +x /home/pi/check-internet/check-internet.sh

# add to user crontab

sudo printf "$(crontab -l ; echo '*/5 * * * * /home/pi/check-internet/check-internet.sh')\n" | crontab -
