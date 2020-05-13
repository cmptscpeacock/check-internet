#!/bin/bash

TMP_FILE=/tmp/check-internet

# check the internet and reboot if no pings

check-internet() {
    sudo shutdown -r +1 'No Internet detected. Rebooting...'
}

if ping -c5 8.8.8.8; then
    echo 1 > $TMP_FILE
else
    [[ `cat $TMP_FILE` == 0 ]] && check-internet || echo 0 > $TMP_FILE
fi