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

# Generating SSL and adding the user to ssl-cert to allow ssl connecion
sudo adduser your_username ssl-cert  
sudo openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/xrdp/key.pem -out /etc/xrdp/cert.pem -days 3365

# Define the ssl file to use and define section below
# sudo nano /etc/xrdp/xrdp.ini
certificate=/etc/xrdp/cert.pem
key_file=/etc/xrdp/key.pem
sudo systemctl restart xrdp


# reboot server
sudo reboot





# Fix the RDP color issue
1) Create a config file:

sudo nano /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf

2) Paste in the following:

/etc/polkit-1/localauthority.conf.d/02-allow-colord.conf
polkit.addRule(function(action, subject) {
 if ((action.id == "org.freedesktop.color-manager.create-device" ||
 action.id == "org.freedesktop.color-manager.create-profile" ||
 action.id == "org.freedesktop.color-manager.delete-device" ||
 action.id == "org.freedesktop.color-manager.delete-profile" ||
 action.id == "org.freedesktop.color-manager.modify-device" ||
 action.id == "org.freedesktop.color-manager.modify-profile") &&
 subject.isInGroup("{users}")) {
 return polkit.Result.YES;
 }
});

3) After saving the file, reboot the server:

sudo reboot
