#!/bin/sh

cd ./traefik/
sudo docker compose --env-file ../proxy.env down
sudo docker compose --env-file ../proxy.env build --pull
cd ..

cd ./nextcloud/
sudo docker compose --env-file ../proxy.env down
sudo docker compose --env-file ../proxy.env build --pull
cd ..