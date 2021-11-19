#!/bin/sh

source ./proxy.env
sudo docker network create $PROXY_NETWORK

sudo docker compose --env-file ./proxy.env -f ./traefik/docker-compose.yml up -d
sudo docker compose --env-file ./proxy.env -f ./nextcloud/docker-compose.yml up -d

# Set default phone region
sudo docker exec --user www-data nextcloud-app-1 php occ config:system:set default_phone_region --value="DE"
