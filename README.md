# Discord Notifications on System Startup

This project uses systemd and a simple bash script to send Discord notifications when a linux system starts up and successfully connects to the internet. I use this on a PoE-powered Raspberry Pi to alert me when a power outage is resolved and my network connectivity is restored. 

## Usage:
1. clone this git repository on the system for which you wish to enable startup notifications
2. on the Discord server you wish to receive notifications from go to Server Settings > Integrations
3. create a new webhook - name it whatever you wish and set the channel it will post to
4. copy the webhook URL
5. create a file called '.env' in the project directory and add a line `WEBHOOK_URL="<url>"` replacing `<url>` with the URL copied from Discord
6. run the `install-service.sh` script - this will install `discord-startup-notify.service` to `/etc/systemd/system/` and enable the serivce via `systemctl` (requires `sudo` access) 
7. restart your system to test

