# Installation of Xrdp an Guacamole on a Ubuntu server
# To Have a fully RDP Remote desktop accessible over Https
# Perplexicty Tread : https://www.perplexity.ai/search/can-u-give-a-a-tutorial-to-run-XN4bMAauTfSgi7ErkoSFZw

# Step 01 : install XRDP on a ubuntu and a Sfce Desktop (or other DE)
sudo apt install xrdp xfce4 xfce4-goodies -y
echo xfce4-session > ~/.xsession
sudo systemctl restart xrdp

# Generating SSL and adding the user to ssl-cert to allow ssl connecion
sudo adduser your_username ssl-cert  
sudo openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/xrdp/key.pem -out /etc/xrdp/cert.pem -days 365

# Define the ssl file to use and define section below
# sudo nano /etc/xrdp/xrdp.ini
certificate=/etc/xrdp/cert.pem
key_file=/etc/xrdp/key.pem
sudo systemctl restart xrdp

 

# You can now try to connect to the mahcine using RDP client on 3389
