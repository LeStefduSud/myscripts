# Installation of a KasmVNC standalone server to acces local RDP or VNC
# [KasmVN Install](https://www.kasmweb.com/kasmvnc/docs/1.0.0/index.html)

# Please choose the package for your distro here (under Assets):
# Get the latest Release on https://github.com/kasmtech/KasmVNC/releases

# For amd64
wget https://github.com/kasmtech/KasmVNC/releases/download/v1.3.4/kasmvncserver_noble_1.3.4_amd64.deb
# For ARM
wget https://github.com/kasmtech/KasmVNC/releases/download/v1.3.4/kasmvncserver_noble_1.3.3_arm64.deb

# Install IT
sudo apt-get install ./kasmvncserver_*.deb

# Add your user to the ssl-cert group
sudo usermod -a -G ssl-cert ubuntu



# YOU MUST DISCONNECT AND RECONNECT FOR GROUP MEMBERSHIP CHANGE TO APPLY

# start KasmVNC, you will be prompted to create a KasmVNC user and select a desktop environment
vncserver

# Tail the logs
tail -f ~/.vnc/*.log


