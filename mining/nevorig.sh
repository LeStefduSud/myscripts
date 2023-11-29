#!/bin/sh
# Build latest custom NevoRig miner for mining Nevo coi
#https://github.com/nevocoin/NEVORig/archive/refs/tags/v6.20.0.tar.gz
# wget -O - https://raw.githubusercontent.com/LeStefduSud/myscripts/main/mining/nevo.sh | sudo bash
# sudo chown user /opt/
# mkdir -p /opt/nevorig

# My Nebo Adress on XeggeX NS27Dr6wxBxZbjFLk7Dx6iSqiTPcaaqWWMT3coVTzUfXCWL1uiRubAoC2FqY22p4gjZYARRDJXVkt3CoiEgWk4Bv2cqNuTfrU

echo "This script will try to build the latest version of xmrig from GitHub"
echo "More build instruction can be found at https://xmrig.com/docs/miner/build/ubuntu"
echo "Start at $(date)"
DEST=/opt/nevorig/

#starting Mining in Rplant
sudo /opt/nevorig/xmrig -a rx/nevo -o randomx.rplant.xyz:17102 --donate-level 0  --threads=23  -u NS27Dr6wxBxZbjFLk7Dx6iSqiTPcaaqWWMT3coVTzUfXCWL1uiRubAoC2FqY22p4gjZYARRDJXVkt3CoiEgWk4Bv2cqNuTfrU   -k -p rig-worker01

#HiveOS FlightSheet
Cpu Config :
"cpu": { "huge-pages": true, "hw-aes": null, "priority": null, "memory-pool": false, "asm": true, "rx1": [0], "rx": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22] }
User Config :
"randomx": { "1gb-pages": true } "donate-level": 1






echo "Getting stuff for building"
apt-get update
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
apt-get autoremove

echo "Getting the last version from GitHub and building"
rm -Rvf /tmp/xmrig
cd /tmp
git clone https://github.com/nevocoin/NEVORig/archive/refs/tags/v6.20.0.tar.gz
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)

#If the new file have been generated, copying
FILE=/tmp/xmrig/build/xmrig
if [ -f "$FILE" ]; then
    echo "$FILE exists, build has succeeded."
    cp "$FILE" "$DEST"
    chmod +x "$DEST"
else 
    echo "$FILE does not exist, build have failed"
fi
echo "End   at $(date)"

echo "Restarting XMrig"
killall -q - w xmrig
cd /opt/xmrig
./xmrig -V
