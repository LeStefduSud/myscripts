# Installation of Xrdp an Guacamole on a Ubuntu server
# To Have a fully RDP Remote desktop accessible over Https
# Perplexicty Tread : https://www.perplexity.ai/search/can-u-give-a-a-tutorial-to-run-XN4bMAauTfSgi7ErkoSFZw

# Step 01 : install XRDP on a ubuntu and a Sfce Desktop (or other DE)
sudo apt install xrdp xfce4 xfce4-goodies -y
echo xfce4-session > ~/.xsession
sudo systemctl restart xrdp
# You can now try to connect to the mahcine using RDP client on 3389
