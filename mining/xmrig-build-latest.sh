#!/bin/sh
#/opt/xmrig/xmrig-build-latest.sh script for building the latest official version of Xmrig from gitHub##
# wget -O - https://raw.githubusercontent.com/LeStefduSud/myscripts/main/mining/xmrig-build-latest.sh | bash
# sudo chown stef2001 /opt/
# mkdir -p /opt/xmrig


echo "This script will try to build the latest version of xmrig from GitHub"
echo "More build instruction can be found at https://xmrig.com/docs/miner/build/ubuntu"
echo "Start at $(date)"
DEST=/opt/xmrig/xmrig

echo "Getting stuff for building"
apt-get update
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
apt-get autoremove

echo "Getting the last version from GitHub and building"
rm -Rvf /tmp/xmrig
cd /tmp
git clone https://github.com/xmrig/xmrig.git
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
