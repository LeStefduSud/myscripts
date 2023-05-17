#!/bin/bash
# This script can be downloaded and executed in 1 command line usin
#wget -O - <script_url> | bash 

# Download the latest version of the RaptoreumQT wallet
wget https://github.com/Raptor3um/raptoreum/releases/latest/download/raptoreum-qt-linux-x64.tar.gz

# Unpack the downloaded file to a directory of your choice
tar -xvf raptoreum-qt-linux-x64.tar.gz

# Copy the raptoreum-qt binary to /usr/local/bin
sudo cp raptoreum-qt-linux-x64/raptoreum-qt /usr/local/bin

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
rm -rf raptoreum-qt-linux-x64.tar.gz raptoreum-qt-linux-x64
