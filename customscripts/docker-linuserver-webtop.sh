#!/bin/sh
# Script to centralise the installation of a Webtop on a working Dokcer host (Docker installed via snap is not supported)
# Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/
# More information on my post My Personal https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666
# Or on official doc https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666


# Launching the Ubuntu Deluxe container with rm option for testing only in front
docker run --name=webtop \
  --security-opt seccomp=unconfined --restart unless-stopped \
  -e LC_ALL=fr_FR.UTF-8 \
  -e TZ=Europe/Paris -e TITLE=Webtop -p 3000:3000 -p 3001:3001 \
  -v /path/to/data:/config -v /var/run/docker.sock:/var/run/docker.sock \
  --device /dev/dri:/dev/dri  --shm-size="1gb" \
  --rm \
  lscr.io/linuxserver/webtop:ubuntu-deluxe

  
  