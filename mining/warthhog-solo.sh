#MIning WartHord on solo node on a ubuntu 22.04

#Building the node from source
#Href https://github.com/warthog-network/warthog-guide

cd /opt/Warthog/build/src/node/
#Starting th node
/opt/Warthog/build/src/node/wart-node -r 0.0.0.0:3000

#waiting for the node to synch and create a wallet adress
/opt/Warthog/build/src/wallet/wart-wallet -c
#Save the wallet.json that contains private and public KEY !! Do not share

#Dipslay the public adress, and this is my public adress of my node
/opt/Warthog/build/src/wallet/wart-wallet -a

#Building and starting the Jasmine MIner
#https://github.com/CoinFuMasterShifu/janusminer

#building an once building launch it with OC


#Starting the miner
./wart-miner -a "ton adresse" -h "ton ip" -p "ton port" -gpu
