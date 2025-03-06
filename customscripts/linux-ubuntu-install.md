# ALl stuff for installing a Ubuntu system
[Perplexity.ai](https://www.perplexity.ai/search/can-u-give-a-a-tutorial-to-run-UgR4tk_6QaewXjE11metpA)

# Updating, installing stuff
sudo apt update
sudo apt dist-upgrade
sudo apt install tmux htop btop

# Installing OpenSSH Server
To install the OpenSSH server, run the following command:
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
sudo systemctl status ssh

## Installing Webmin
curl -o webmin-setup-repo.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh
sh webmin-setup-repo.sh

# Activating XRDP and configuring Desktop Session to launch
sudo apt install xrdp
## Changing the default port if needed
sudo nano /etc/xrdp/xrdp.ini
port=3389

sudo systemctl enable xrdp
sudo systemctl start xrdp
# Defining an setting ssl key
sudo openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/xrdp/key.pem -out /etc/xrdp/cert.pem -days 365
sudo nano /etc/xrdp/xrdp.ini 
# Changing the path of the key
certificate=/etc/xrdp/cert.pem
key_file=/etc/xrdp/key.pem
sudo adduser xrdp ssl-cert
sudo chown root:root /etc/xrdp/cert.pem /etc/xrdp/key.pem
n
sudo systemctl restart xrdp


## Configure the firewall to allow XRDP connections:
sudo firewall-cmd --add-port=3389/tcp
sudo firewall-cmd --runtime-to-permanent
# Configuring right
For XRDP:

    Edit /etc/xrdp/xrdp.ini to enable Xorg sessions6
    .
    Add echo "allowed_users = anybody" >> /etc/X11/Xwrapper.config to allow access for all users6
    .

# Installing an configuring VNCServer to start Lxde

# Installing X11 Forwarding
[LInk](https://itekblog.com/ssh-x11-forwarding-display-using-mobaxterm/)
sudo apt-get install xauth xfonts-base
sudo /etc/ssh/sshd_config
set X11Forwarding yes
