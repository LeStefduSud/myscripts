#Setup for mining Dero on CPU
mkdir -p /opt/dero
cd /opt/dero/
wget https://github.com/deroproject/derohe/releases/download/Release117/dero_linux_amd64.tar.gz
tar -xvf dero_linux_amd64.tar.gz
mv dero_linux_amd64/* ./

# starting
./dero-miner-linux-amd64 --wallet-address=dero1qyph7msnjk0y5nrqwrydkaqsvwem6ypn9a89gkrpez3uesar0nt2kqguqpnqv


./dero-miner-linux-amd64  --wallet-address deroi1qyph7msnjk0y5nrqwrydkaqsvwem6ypn9a89gkrpez3uesar0nt2kqdpvfz92xlrugqm0462yk7qwfhkpw --mining-threads 11 -r community-pools.mysrv.cloud:10300
