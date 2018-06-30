#!/bin/bash
echo "* * * * * /usr/local/bin/chainstatus > /var/www/html/chainstatus.json >/dev/null 2>&1" >> /var/spool/cron/crontabs/root

sudo crontab -l
sudo crontab -e