--Mounting and mining on decred using the new algo a partir du block : 794,368
https://dcrdata.decred.org/

--downloading an installing
wget https://github.com/decred/decred-release/releases/download/v1.8.0/dcrinstall-linux-amd64-v1.8.0
chmod +x dcrinstall-linux-amd64-v1.8.0
./dcrinstall-linux-amd64-v1.8.0

--suivre les instructions pour monter le node, pensez a sauver la seed lors de la création du wallet et attendre la synchro
screen ./dcrd

--démarrer le client du wallet, et demander une nouvelle addresse et la sauver
screen ./dcrwallet
./dcrctl --wallet getnewaddress

--Stopper le démon, pour le redemarrer plus tard avec l'adresse générée
stop dcrd (CTRL + C dans screen)

./dcrd --miningaddr=DsUEAdz1xVtaU6GjozQuiEVhahjd9miGyvj

./dcrctl setgenerate true
./dcrctl getmininginfo

./dcrctl --wallet getbalance
./dcrctl --wallet sendtoaddress <address> <amount>
