#This is the basic command need to install a docker engine on a debian machine
#updating the system
sudo apt update && sudo apt dist-upgrade

# Using Quick install script from https://docs.docker.com/engine/install/ubuntu/
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Enabling the docker system
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#addin the current user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER

#Checking if all is installed
sudo docker run hello-world

# Installing Portainer CE
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

#Installing the latest version of GO in one single line for amd64
VERSION="1.24.2" && wget -q "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz" -O go.tar.gz && sudo tar -C /usr/local -xzf go.tar.gz && echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile && source ~/.profile && go version

#Installing for Arm64
VERSION="1.24.2" && wget -q "https://golang.org/dl/go${VERSION}.linux-arm64.tar.gz" -O go.tar.gz && sudo tar -C /usr/local -xzf go.tar.gz && echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile && source ~/.profile && go version



#Installing some cool stuff to manage docker
#https://github.com/jesseduffield/lazydocker
go install github.com/jesseduffield/lazydocker@latest

# Permanently boot to console mode:
systemctl set-default multi-user.target
# Permanently boot to graphical mode:
systemctl set-default graphical.target

