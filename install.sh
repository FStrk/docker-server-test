#!/bin/sh

# Set default phone region
sudo docker exec --user www-data nextcloud-app-1 php occ config:system:set default_phone_region --value="DE"
