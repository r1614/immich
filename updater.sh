#!/bin/bash

cd /data/immich

docker compose down > /dev/null

cd /data/immich/docker

rm -rf .env > /dev/null

wget -O .env https://raw.githubusercontent.com/r1614/immich/main/immich.env > /dev/null

cd /data/immich

docker compose pull > /dev/null

docker compose up -d > /dev/null

echo "finished"

exit 0

