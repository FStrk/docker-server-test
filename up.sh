#!/bin/sh

sudo docker compose --env-file ./proxy.env -f ./traefik/docker-compose.yml up -d
sudo docker compose --env-file ./proxy.env -f ./nextcloud/docker-compose.yml up -d
