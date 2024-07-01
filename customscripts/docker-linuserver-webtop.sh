#!/bin/sh
# Script to centralise the installation of a Webtop on a working Dokcer host (Docker installed via snap is not supported)
# Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/
# More information on my post My Personal https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666
# Or on official doc https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666





#Creating the environnement
mkdir -p docker-webtop
nano compose.yml

#Paste the following information in the file (tweak as needed)
services:
  webtop:
    image: lscr.io/linuxserver/webtop:ubuntu-xfce
    container_name: webtop
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Paris
      - TITLE=webtop #optional name of the docker image
      - CUSTOM_USER=myuser
      - PASSWORD=mypassword
    volumes:
      - /path/to/data:/config
      - /var/run/docker.sock:/var/run/docker.sock #optional
    ports:
      - 3000:3000
      - 3001:3001
    shm_size: "1gb" #optional
    restart: unless-stopped

    #Save it
    #Launch docker compose up in background
    docker compose up -d

    #you
    
    #Testing different parameters using command line
docker run --rm --name=webtop \
  --security-opt seccomp=unconfined \
  -e TZ=Etc/UTC -e TITLE=Webtop \
  -p 3000:3000 -p 3001:3001 \
  -e CUSTOM_USER=myuser -e PASSWORD=mypassword
  -v /path/to/data:/config \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --device /dev/dri:/dev/dri  \
  --shm-size="1gb" `#optional` \
  lscr.io/linuxserver/webtop:latest
