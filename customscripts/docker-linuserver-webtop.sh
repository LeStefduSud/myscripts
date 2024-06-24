#!/bin/sh
# Script to centralise the installation of a Webtop on a working Dokcer host (Docker installed via snap is not supported)
# Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/
# More information on my post My Personal https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666
# Or on official doc https://medium.com/@lestefdusud/my-personal-free-webtop-in-5-minutes-383040f12666

#Creating the environnement
mkdir -p docker-webtop
nano compose.yml

#Paste the following information in the file (tweak as needed)
