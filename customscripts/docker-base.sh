#This is the basic command need to install a docker engine on a debian machine
#updating the system
sudo apt update && sudo apt dist-upgrade

# Add Docker's official GPG key if they are not up to date
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# Installing the latest version of the docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Enabling the docker system
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#Checking if all is installed
sudo docker run hello-world

#Installing the latest version of GO in one single line
VERSION="1.21.4" && wget -q "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz" -O go.tar.gz && sudo tar -C /usr/local -xzf go.tar.gz && echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile && source ~/.profile && go version

#Installing some cool stuff to manage docker
#https://github.com/jesseduffield/lazydocker
go install github.com/jesseduffield/lazydocker@latest
