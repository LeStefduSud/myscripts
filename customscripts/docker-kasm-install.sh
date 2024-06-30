#!/bin/sh
# Script to centralise the installation of Kasmweb web on a working Dokcer host (Docker installed via snap is not supported)
#Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/

# https://www.kasmweb.com/docs/latest/install/single_server_install.html

#installtion of docker Kasmweb with latest version
cd /tmp
curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.15.0.06fdc8.tar.gz
tar -xf kasm_release_1.15.0.06fdc8.tar.gz
sudo bash kasm_release/install.sh -L 9443

#installtion of docker Kasmweb
cd /tmp
curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.14.0.3a7abb.tar.gz
tar -xf kasm_release_1.14.0.3a7abb.tar.gz
sudo bash kasm_release/install.sh
