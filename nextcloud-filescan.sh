#!/bin/sh
#cd /var/www/nextcloud
sudo -u www php /data/www/nextcloud/occ files:scan --all
