#Setup for mining AstroMiner on CPU
mkdir -p /opt/dero
cd /opt/dero/
wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.1/astrominer-V1.9.1.R2_modern_amd64_linux.tar.gz
tar -xvf astrominer-V1.9.1.R2_modern_amd64_linux.tar.gz

# starting
./astrominer/astrominer -w dero1qydg07mc8526nzv40vam8xczkxu0vm3la4lmkzre92pcuewk44zg6qgsszedj -r community-pools.mysrv.cloud:10300 -m 11

