# Mining on olo 
# https://discord.com/channels/1024124284513308673/1175607307112026172/1175618025014165544  lien discord 

#Installing the Node on a Ubuntu
#Voila la liste des commandes en avance sous UBUNTU 22 : 
#Pensez a désactiver TOUS les parefeu sur le pot 42121
mkdir karlsen && cd karlsen && wget https://github.com/karlsen-network/karlsend/releases/download/v1.0.0/karlsend-v1.0.0-linux.zip && unzip karlsend-v1.0.0-linux.zip
chmod +x *
screen ./karlsend --utxoindex
Attendre la sycnhro complete

ctrl a+d
./karlsenwallet create
./karlsenwallet start-daemon
./karlsenwallet new-address

Chope ton adresse. Voila la mienne.
karlsen:qrv820ag2wv5208p0acxxl0j0tu4hh4sp7q9hdrk88edwp7nn2ekgljcmly4t 
Sauvegarde le fichier keys.json dans le rep .karlsen de ton user

Lancer le miner GPU: 
1 - cd /
2 - mkdir karlsen-miner
3 - cd karlsen-miner
4 - wget https://www.calabianca.fr/miner.zip
5 - unzip miner.zip
6 - chmod +x karlsen-miner
7 - screen ./karlsen-miner --mining-address karlsen:qrv820ag2wv5208p0acxxl0j0tu4hh4sp7q9hdrk88edwp7nn2ekgljcmly4t  -s 192.168.1.8

En cas d'erreur 
enleve la commande screen pour pouvoir voir l'erreur.
Pense a mettre à synchro l'heure de ta machine

Vous pouvez le lancer 1 fois pour 2 core. Par exemple sur un 5900x / 3900x qui ont 12 core vous pouvez le lancer 6 fois environs!



