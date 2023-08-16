--Mounting and mining on decred using the new algo a partir du block : 794,368
https://dcrdata.decred.org/

wget https://github.com/decred/decred-release/releases/download/v1.8.0/dcrinstall-linux-amd64-v1.8.0
chmod +x dcrinstall-linux-amd64-v1.8.0
./dcrinstall-linux-amd64-v1.8.0

suivre les instructions

screen ./dcrd
screen ./dcrwallet
./dcrctl --wallet getnewaddress

stop dcrd (CTRL + C dans screen)

./dcrd --miningaddr=DsUEAdz1xVtaU6GjozQuiEVhahjd9miGyvj

./dcrctl setgenerate true
./dcrctl getmininginfo

./dcrctl --wallet getbalance
./dcrctl --wallet sendtoaddress <address> <amount>
