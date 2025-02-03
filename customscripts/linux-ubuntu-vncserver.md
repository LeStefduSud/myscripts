# Script to install and configure VNC Server as service on a ubuntu server
# [Chat on Perplexicit](https://www.perplexity.ai/search/you-are-an-expert-in-linux-can-SXHP2Q_PQAeV.wcyJ78hrA)

# Install VNC server / configur it and defining a DE
sudo apt update && sudo apt upgrade -y
sudo apt install tightvncserver -y

# Launch vnc server as session user to configue it
vncserver
sudo apt install xfce4 xfce4-goodies -y

# Setting the X Startup
nano ~/.vnc/xstartup
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &

