# Setop to install an congigure an RDP desktop
# On Oracle CLoud Infrastructure (or other VPS) ubuntu VM
# Based on video https://www.youtube.com/watch?v=nGul2e7XLRw
# Instructions on [This Blog](https://ideaspot.com.au/blog/windows-remote-ubuntu-desktop/)

# Setup the ubuntu VM 
# Authorize port 3389 on the OCI
# Update the server, install taskel then install ubuntu desktop:

sudo apt-get update && sudo apt-get upgrade -y
sudo apt install tasksel
sudo tasksel install ubuntu-desktop

# Installing XRDP and enabling it
sudo apt install xrdp -y
sudo systemctl enable --now xrdp

# Configuring Firewall Add the port 3389 to the iptables and save
sudo apt-get update
sudo apt-get install iptables-persistent netfilter-persistent
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 3389 -j ACCEPT
sudo netfilter-persistent save

# create a user for xdrp 
sudo adduser MYUSER
sudo usermod -G xrdp MYUSER

# reboot server
sudo reboot