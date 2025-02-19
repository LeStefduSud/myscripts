#!/bin/sh
# Script to centralise the installation of a Webtop on a working Dokcer host (Docker installed via snap is not supported)
# Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/
# More information on my post My Personal https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666
# Or on official doc https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666

# Launching the Ubuntu Deluxe container with rm option for testing only in front
# https://hub.docker.com/r/kasmweb/desktop-deluxe
# The Username to use is kasm_user and the password is the value set in the VNC_PW environment variable
docker run --name=WebtopDeluxe -d \
  --restart unless-stopped --shm-size="1gb" \
  -v /path/to/data:/config -v /var/run/docker.sock:/var/run/docker.sock \
  -e LC_ALL=fr_FR.UTF-8 -e VNC_PW=changemeoninstall \
  -e TZ=Europe/Paris -e TITLE=WebtopDeluxe -p 6901:6901 \
  --add-host=host.docker.internal:host-gateway \
  kasmweb/desktop-deluxe:1.16.1-rolling-weekly

docker run --name=WebtopDeluxe2 -d \
  --restart unless-stopped --shm-size="1gb" \
  -v /path/to/data:/config -v /var/run/docker.sock:/var/run/docker.sock \
  -e LC_ALL=fr_FR.UTF-8 \
  -e TZ=Europe/Paris -e TITLE=WebtopDeluxe2 -p 6901:6901 \
  --add-host=host.docker.internal:host-gateway \
  kasmweb/desktop-deluxe:1.16.1-rolling-weekly

# Basic ubuntu desktop
sudo docker run --name=WebTopUbuntu -d \
  --restart unless-stopped --shm-size="1gb" \
  -v /path/to/data:/config -v /var/run/docker.sock:/var/run/docker.sock \
  -e LC_ALL=fr_FR.UTF-8 \
  -e TZ=Europe/Paris -e TITLE=WebtopUbuntu -p 6901:6901 \
  --add-host=host.docker.internal:host-gateway \
  -e VNC_PW=changemeoninstall \
  kasmweb/ubuntu-jammy-desktop:aarch64-1.16.1

# The container is now accessible via a browser : https://<IP>:6901
User : kasm_user
Password: changemeoninstall

# For adding communciation with the host 
## in a compose file
extra_hosts:
      - "host.docker.internal:host-gateway"
## on a run command
--add-host=host.docker.internal:host-gateway <image>
      
      


  
