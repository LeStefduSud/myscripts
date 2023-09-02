--Mounting and mining on decred using the new algo a partir du block : 794,368
https://dcrdata.decred.org/

--downloading an installing giving us the dright
sudo chown -Rv <user> /opt
cd /opt
wget https://github.com/decred/decred-release/releases/download/v1.8.0/dcrinstall-linux-amd64-v1.8.0
sudo chmod +x dcrinstall-linux-amd64-v1.8.0
./dcrinstall-linux-amd64-v1.8.0

--suivre les instructions pour monter le node, pensez a sauver la seed lors de la création du wallet et attendre la synchro
--redemarrage du node en précisant l'adresse de minage (ici sur mon adresse trustwallet)
/opt/decred/dcrd --miningaddr=Dsau2BTh18vmRW9N6mC5P9GXe1jS32WaDCn

--on lance la commande d'activation du minage sur 8 thread par exemple
/opt/decred/dcrctl setgenerate true 8
/opt/decred/dcrctl getmininginfo.
