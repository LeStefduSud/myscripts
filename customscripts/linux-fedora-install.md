# All stuff  regarding the installation and setup for a Fedora 41 Based distro
# Ref [text](https://fedoraproject.org/fr/)
# [My Perplexity Trhread](https://www.perplexity.ai/search/on-fedora-how-to-install-xrdp-h8.8AiIFQNyOC_a72lsyBg)

# Installing stuff
sudo dnf upgrade
sudo dnf install tmux htop 

# Installing and configuring xrdp
sudo dnf install xrdp -y
# Enable and start the XRDP service:
sudo systemctl enable xrdp
sudo systemctl start xrdp

# Configure the firewall to allow XRDP connections:
sudo firewall-cmd --add-port=3389/tcp
sudo firewall-cmd --runtime-to-permanent
