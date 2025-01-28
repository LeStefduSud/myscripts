# ALl stuff for installing n8n a Ubuntu system using npm to run it localy
[https://blog.horizon.dev/how-to-deploy-n8n/](https://blog.horizon.dev/how-to-deploy-n8n/)

# Updating, installing stuff
sudo apt update -y && sudo apt upgrade -y
sudo apt install curl -y

# Installing Node Virtual Machine
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm --version

# Installling node, n8n and pm2 (for startup/restarting management)
nvm install 22.13.1
nvm use 22.13.1
npm install -g n8n@latest
npm install -g pm2@latest

# Installing postgres in a container to facailiate deployement
## Using command line
docker run -d \
--name postgres-container \
-e POSTGRES_USER=myuser \
-e POSTGRES_PASSWORD=mypassword \
-e POSTGRES_DB=mydatabase \
-p 5432:5432 \
-v pgdata:/var/lib/postgresql/data \
postgres:latest

## Using Docker Compose
version: '3.8'
services:
  postgres:
    container_name: postgres-container
    image: postgres:latest
    environment:
      - POSTGRES_USER=myuser
      - POSTGRES_PASSWORD=mypassword
      - POSTGRES_DB=mydatabase
    ports:
      - "5432:5432"
    volumes:
      - pgdata:/var/lib/postgresql/data
volumes:
  pgdata:




# Activating XRDP and configuring Desktop Session to launch
sudo apt install xrdp
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
sudo chmod 600 /etc/xrdp/cert.pem /etc/xrdp/key.pem
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