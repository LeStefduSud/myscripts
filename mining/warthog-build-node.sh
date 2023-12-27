#!/bin/sh
# sudo wget -O - https://raw.githubusercontent.com/LeStefduSud/myscripts/main/mining/warthog-build-node.sh | sudo bash
# sudo chown stef2001 /opt/
# mkdir -p /opt/xmrig

export PATH="$PATH"

echo "This script will try to build the latest version the node and install it"
echo "More info at  https://github.com/warthog-network/warthog-guide"
echo "Start at $(date)"

# THis is for my specific setup using Supervisor to start node, znd deleting the blockchaine to reforce synchro
supervisorctl stop warnode

# The following line delete the Blockchain, in case of corrupt file, 
# Activate it only if needed
#rm -Rvf /home/stef2001/.warthog/

echo "Getting stuff for building"
apt-get update
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev meson ninja-build
apt-get autoremove

echo "Getting the last version from GitHub and building"
cd /opt
rm -Rvf Warthog
git clone https://github.com/warthog-network/Warthog
cd Warthog
meson build --buildtype=release
cd build
ninja
echo "Build Complete for version"
/opt/Warthog/build/src/node/wart-node -V
echo "End  at $(date)"

echo "Restarting the node"
supervisorctl start warnode
exit 0
