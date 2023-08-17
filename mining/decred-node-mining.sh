--Mounting and mining on decred using the new algo a partir du block : 794,368
https://dcrdata.decred.org/

--downloading an installing
wget https://github.com/decred/decred-release/releases/download/v1.8.0/dcrinstall-linux-amd64-v1.8.0
chmod +x dcrinstall-linux-amd64-v1.8.0
./dcrinstall-linux-amd64-v1.8.0

--suivre les instructions pour monter le node, pensez a sauver la seed lors de la création du wallet et attendre la synchro
screen ./dcrd

--démarrer le client du wallet, et demander une nouvelle addresse et la sauver, attention il faut attendre la synchro du wallet lui meme
screen ./dcrwallet

--puis dans une autre fenetre demander une nouvelle adresse
./dcrctl --wallet getnewaddress
 --address DsZWtL6UmZLXk66E8GTdafJka2LwiY5kuNf générée su mon node 01

--Stopper le démon, pour le redemarrer plus tard avec l'adresse générée
stop dcrd (CTRL + C dans screen)

--redemarrage du node en précisant l'adresse de minage (ici sur mon adresse locale
./dcrd --miningaddr=DsZWtL6UmZLXk66E8GTdafJka2LwiY5kuNf

--redemarrage du node en précisant l'adresse de minage (ici sur mon adresse trustwallet)
./dcrd --miningaddr=Dsau2BTh18vmRW9N6mC5P9GXe1jS32WaDCn

--on lance la commande d'activation du minage sur 8 thread par exemple
./dcrctl setgenerate true 8
./dcrctl getmininginfo

./dcrctl --wallet getbalance
./dcrctl --wallet getbalance DsZWtL6UmZLXk66E8GTdafJka2LwiY5kuNf

./dcrctl --wallet sendtoaddress <address> <amount>
