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
# On LolMiner --coff 300,300,300 --cclk 2300,2600,2600 --mclk 6001,6001,6001 --pl 180,250,250 --fan 100,100,100
sudo nvidia-smi -pm 1
sudo nvidia-smi -lgc 1500
sudo nvidia-smi -lmc 5001
sudo nvidia-smi -pl 125

/opt/janusminer/build/src/miner/wart-miner -a 4af9ccf834a941af6869e8bf3ef020a74aa381161fb7f3b1 --gpus 0,1


#Starting the miner
./wart-miner -a "ton adresse" -h "ton ip" -p "ton port" -gpu
