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
#My node public adress
4af9ccf834a941af6869e8bf3ef020a74aa381161fb7f3b1

#Building and starting the Jasmine MIner
#https://github.com/CoinFuMasterShifu/janusminer
#You will need maybe to install OpenCl dev lib
sudo apt install ocl-icd-opencl-dev


#building an once building launch it with OC


#Starting the miner
./wart-miner -a "ton adresse" -h "ton ip" -p "ton port" -gpu
