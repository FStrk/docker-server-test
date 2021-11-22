#!/bin/sh

cd ./nextcloud
cat ./tags.env ../network.env > ./tmp.env
sudo docker compose --env-file ./tmp.env down
rm ./tmp.env
cd ..

cd ./traefik
cat ./tags.env ../network.env > ./tmp.env
sudo docker compose --env-file ./tmp.env down
rm ./tmp.env
cd ..


