#!/bin/sh
# Script to centralise the installation of Kasmweb web on a working Dokcer host (Docker installed via snap is not supported)
#Installaion of docker engine on ubuntu https://docs.docker.com/engine/install/ubuntu/

# https://www.kasmweb.com/docs/latest/install/single_server_install.html

#installtion of docker Kasmweb with latest version
cd /tmp
curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.1.98d6fa.tar.gz
tar -xf kasm_release_1.16.1.98d6fa.tar.gz
sudo bash kasm_release/install.sh --proxy-port 9443

#upgrading to a newer version
# https://www.kasmweb.com/docs/latest/upgrade/single_server_upgrade.html#automated-upgrade
cd /tmp
curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.a1d5b7.tar.gz
tar -xf kasm_release_1.16.0.a1d5b7.tar.gz
sudo bash kasm_release/upgrade.sh --proxy-port 9443

# Using Proot-apps to install without privilege and persistance application
proot-apps install gui

# Defining sudo on a Ubuntu container
Modify the Docker Exec Config field to include the following example of installing sudo and configuring sudo to not require a password.
{
 "first_launch":{
      "user":"root",
      "cmd":"bash -c 'apt-get update && apt-get install -y sudo && echo \"kasm-user  ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers'"
  }
}


