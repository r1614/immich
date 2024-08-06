#!/bin/bash

mkdir -p /data/

echo "made /data"

cd /data

echo "wait a minute, cloning git..."

git clone https://github.com/immich-app/immich.git > /dev/null

echo "cloned git"

cd /data/immich/docker

wget -O .env https://raw.githubusercontent.com/r1614/immich/main/immich.env > /dev/null

docker compose up -d

echo "immich is ip:2283"

exit 0







