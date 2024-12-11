# This contain the commande to setup an Alpine Linux Distribution from scracth
# More information here : https://medium.com/long-sweet-valuable/alpinelinux-docker-and-nginx-proxy-manager-the-perfect-trio-for-your-homelab-1ba108787ebb

#Download the version corresponding to your architecture from the official website https://www.alpinelinux.org/downloads/.
# The standard version x86–64 should suit most of you. The Virtual/X86–64 version is optimized for installation on a VM.
# Once the system has booted, we end up in the command line to start the installation, because everything is actually done on the command line (light command).
#For installing on a VM Server I use https://dl-cdn.alpinelinux.org/alpine/v3.21/releases/x86_64/alpine-virt-3.21.0-x86_64.iso

# STEP 01 : installing the BAS System
# Simply login with default user (root or even enter)
#Launch the setup process.
setup-alpine
#Choose the keymap (FR or what you want) and the variant.
fr fr
#Choose the hostname you want 
vm-alpine01
#Enter the network interface (for me, eth0, the network card)
eth0
#Enter the IP address or the DHCP lease.
dhcp
#Say No to Confirgure the netwok manually
N
#If networking is OK, you should see the IP address.
#- ... lease of 192.168.10.1 obtained..... for example
#Change the root password
#Select the Time zone according to your rental.
Europe/Paris
#Define your web proxy if needed.
none
#Select automatically the fatest mirror.
1 1
#Define a Linux standard user and it 's password if neeeded
#Install the wanted SSH server.
openssh
#Choose the disk to install, for me, SDA.
sda
#Select to use it as system (VERY IMPORTANT)
sys
#Choose to erase the disk all.
y
#The process will format entirely the disk, it can take a while.
#then type Reboot as asked to restart the new system.
reboot

#STEP 02 : updatinf repository to access additonnal package
#As root use :qw to exit (on azerty it SHIFT+; za)
Vi /etc/apk/repositories

#It should look like this (the exact URLs will vary according to your selected mirror).
#A way the community line
http://dl-cdn-alplinelinux.org/alpine/v3.20/main
http://ftp.halifax.rwth-aachen.de/alpine/v3.20/community

#Exit VI, saving the file, typing EC and :wq 
#Update the new package.
apk update
apk upgrade

#STEP 03 : installing et setting up usefull things
#Adding a user and setting up to ssh
adduser -D lestefdusud
passwd lestefdud

#Allowinf to connect it to ssh with password
nano /etc/ssh/sshd_config
PermitRootLogin no
PasswordAuthentication yes

#Connected as root, add Doas (it might be necessary)
apk add doas 
echo 'permit: wheel'  /etc/doas.d/doas.conf 
echo 'permit lestefsudsud as root' >> /etc/doas.d/doas.conf 


#Adding the user to the wheel group
Adding myuser -G wheel 
#You need to logout my user and login again.
#You can now access the root command without root.

#STEP 04 : installing docker an other stuff
#Install docker and docker-compose using
doas apk add docker docker-compose
doas apk add go tmux 


#Start - enable dockcker service at boot
doas rc-update add docker default
doas usermod -aG docker lestefdusud
doas rc-service docker restart

#Start the docker service by running the below command
doas /etc/init.d/docker start
#/var/log/docker.log: creating file
#/var/log/docker.log: correcting owner
#Starting Docker daemon...

#Testing if all is OK.
docker run hello-world
#If you get the simple message "Hello-World" in the console... everything is OK.

