#!/bin/sh
# sudo wget -O - https://raw.githubusercontent.com/LeStefduSud/myscripts/main/mining/warthog-build-miner.sh | sudo bash
# sudo chown stef2001 /opt/
# mkdir -p /opt/xmrig

export PATH="$PATH"


#https://github.com/CoinFuMasterShifu/janusminer
#You will need maybe to install OpenCl dev lib
sudo apt install ocl-icd-opencl-dev


echo "This script will try to build the latest version the JanusMiner and install it"
echo "More info at  https://github.com/CoinFuMasterShifu/janusminer"
echo "Start at $(date)"

# THis is for my specific setup using Supervisor to start the process
supervisorctl stop warminer


echo "Getting stuff for building"
apt-get update
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev meson ninja-build ocl-icd-opencl-dev
apt-get autoremove

echo "Getting the last version from GitHub and building"
cd /opt
rm -Rvf janusminer
git clone https://github.com/CoinFuMasterShifu/janusminer
cd janusminer
meson build --buildtype=release
cd build
ninja
echo "Build Complete for version"
/opt/janusminer/build/src/miner/wart-miner -V
echo "End  at $(date)"

echo "Restarting the process"
supervisorctl start warminer
exit 0
