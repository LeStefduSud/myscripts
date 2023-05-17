#!/bin/bash
# This script can be downloaded and executed in 1 command line using this line
#wget -O - https://raw.githubusercontent.com/LeStefduSud/myscripts/main/crypto-wallets/raptoreum-qt.sh | bash 

# Download the latest version of the RaptoreumQT wallet
wget https://github.com/Raptor3um/raptoreum/releases/download/1.3.17.04/raptoreum-ubuntu22-1.3.17.04.tar.gz

# Unpack the downloaded file to a directory of your choice
tar -xvf raptoreum-ubuntu22-1.3.17.04.tar.gz

# Copy the raptoreum-qt binary to /usr/local/bin
sudo cp raptoreum-ubuntu22-1.3.17.04/raptoreum-qt /usr/local/bin

# Create a desktop file to create a launcher for the wallet
cat <<EOF | sudo tee /usr/share/applications/raptoreum-qt.desktop
[Desktop Entry]
Name=RaptoreumQT
Exec=raptoreum-qt
Icon=/opt/raptoreum-qt/src/qt/res/icons/bitcoin.png
Terminal=false
Type=Application
Categories=Office;Finance;
EOF

# Delete the temporary files
rm -rf raptoreum-ubuntu22-1.3.17.04.tar.gz raptoreum-ubuntu22-1.3.17.04
