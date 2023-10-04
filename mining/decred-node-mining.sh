--Mounting and mining on decred using the new algo a partir du block : 794,368
https://dcrdata.decred.org/

--downloading an installing giving us the dright using old version
sudo chown -Rv <user> /opt
cd /opt
wget https://github.com/decred/decred-release/releases/download/v1.8.0/dcrinstall-linux-amd64-v1.8.0
sudo chmod +x dcrinstall-linux-amd64-v1.8.0
./dcrinstall-linux-amd64-v1.8.0

--Building latest node version from GitHub https://github.com/decred/dcrd#binaries-windowslinuxmacos
-- Go installation https://go.dev/doc/install
cd /tmp
wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz

--Téléchargement et build de la dernière version du node
$ git clone https://github.com/decred/dcrd $HOME/src/dcrd
$ git clone https://github.com/decred/dcrctl $HOME/src/dcrctl
$ (cd $HOME/src/dcrd && go install . ./...)
$ (cd $HOME/src/dcrctl && go install)
$ dcrd -V  ou /root/


--suivre les instructions pour monter le node, pensez a sauver la seed lors de la création du wallet et attendre la synchro
--redemarrage du node en précisant l'adresse de minage (ici sur mon adresse trustwallet)
---/opt/decred/dcrd --miningaddr=Dsau2BTh18vmRW9N6mC5P9GXe1jS32WaDCn
--Lancer le node avec les info
/root/go/bin/dcrd --miningaddr=Dsau2BTh18vmRW9N6mC5P9GXe1jS32WaDCn --rpcuser="stef2001" --rpcpass="stef2001" --rpclisten="0.0.0.0:9109"




--on lance la commande d'activation du minage sur 8 thread par exemple
/opt/decred/dcrctl setgenerate true 8
/opt/decred/dcrctl getmininginfo.

--Building an running the gominer sour ubuntu 23.04
apt update
apt upgrade
sudo apt-get install nvidia-cuda-dev nvidia-cuda-toolkit build-essential btop screen git wget

--Check cuda version : 
nvcc --version

--nstallation GO : 
wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
sudo su
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source $HOME/.profile
go version

--Clone an make
git clone https://github.com/decred/gominer
cd gominer
make
mv gominer /opt/decred
/opt/decred/gominer --version

--Lancer le node avec les info
/opt/decred/dcrd --miningaddr=Dsau2BTh18vmRW9N6mC5P9GXe1jS32WaDCn --rpcuser="stef2001" --rpcpass="pwd" --notls

--on limite les power limit et en sauvant la persistance des données -pm
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 115

--Lancer le miner en local
screen /opt/decred/gominer --rpcuser="stef2001" --rpcpass="pwd" --notls
