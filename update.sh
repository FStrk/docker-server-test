#!/bin/sh

cd ./traefik
cat ./tags.env ../network.env > ./tmp.env
sudo docker compose --env-file ./tmp.env build --pull
rm ./tmp.env
cd ..

cd ./nextcloud
cat ./tags.env ../network.env > ./tmp.env
sudo docker compose --env-file ./tmp.env build --pull
rm ./tmp.env
cd ..