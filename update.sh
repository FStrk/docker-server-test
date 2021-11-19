#!/bin/sh

cd ./traefik/
sudo docker compose down
sudo docker compose --env-file ../proxy.env build --pull
cd ..

cd ./nextcloud/
sudo docker compose down
sudo docker compose --env-file ../proxy.env build --pull
cd ..