# Check Internet

This script will configure a Raspberry Pi to check for the Internet every five minutes. If no Internet is detected it reboots the Pi.

1. Be warned that the process will edit the following files so backups of the files should be taken if you need the content post-operation:
- /var/spool/cron/crontabs/pi

2. No support is provided and no liability is accepted in the event of adverse outcome with the use of the script. If you choose to use it, it is your responsibility to test it before using.

3. The script can be invoked using:

#### Ubuntu 16.04 LTS +
```bash
cd /home/pi
wget --no-cache -O ci-install https://raw.githubusercontent.com/cmptscpeacock/check-internet/master/check-internet.bash && chmod +x ci-install && ./ci-install
```

## Copyright & Credit

### CMP TechSol Limited

The Check Internet Project is managed by CMP TechSol Limited, the creator and owner of the Check Internet Project
