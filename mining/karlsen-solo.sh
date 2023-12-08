# Mining on olo 
# https://discord.com/channels/1024124284513308673/1175607307112026172/1175618025014165544  lien discord 

#01-Installing the Node on a Ubuntu
#Voila la liste des commandes en avance sous UBUNTU 22 : 
#Pensez a désactiver TOUS les parefeu sur le pot 42121
mkdir karlsen && cd karlsen && wget https://github.com/karlsen-network/karlsend/releases/download/v1.0.0/karlsend-v1.0.0-linux.zip && unzip karlsend-v1.0.0-linux.zip
chmod +x *
/opt/karlsend/karlsend --utxoindex
Attendre la sycnhro complete


ctrl a+d

#02-Creating a Wallet , attention le Daemon du wallet doit tourner et c'est bien APRES le new-adress qu'on a une adress valide
cd /opt/karlsend
./karlsenwallet create
./karlsenwallet start-daemon
./karlsenwallet new-addresse

#Chope ton adresse. Voila la mienne.
karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va

#Mon adresse sur Excgane
karlsen:qzk23gcq09g9qytqcg9ys4x72hqxltyrkfvwmuk5ugt53utmklx7y430jqnaq
Sauvegarde le fichier keys.json dans le rep .karlsen de ton user

#03-Installer et lancer le Miner GPU, sous Hive OS

sudo nvtool --setmem 5001 --setcore 1480 --setcoreoffset 200     directement dans le shell de hiveos , j ai des 3060ti
/opt/karlsen-miner/karlsen-miner --mining-address karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va -s ubuntu-worker02.lan --port 42110

#en une seul ligne 
sudo nvtool --setmem 5001 --setcore 1500 --setcoreoffset 250 --setpl 150  && /opt/karlsen-miner/karlsen-miner --mining-address karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va -s ubuntu-worker02.lan --port 42110 


En cas d'erreur 
enleve la commande screen pour pouvoir voir l'erreur.
Pense a mettre à synchro l'heure de ta machine

Vous pouvez le lancer 1 fois pour 2 core. Par exemple sur un 5900x / 3900x qui ont 12 core vous pouvez le lancer 6 fois environs!



