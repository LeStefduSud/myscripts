#Mining with sbrmine
# My Karlsen Adress
karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va 

#In command line and Native miner
sudo nvtool --setmem 5001 --setcore 1500 --setcoreoffset 250 --setpl 150  
&& /opt/karlsen-miner/karlsen-miner --mining-address karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va -s ubuntu-worker02.lan --port 42110 

# on Herominer de.karlsen.herominers.com:1195
SRBMiner-MULTI.exe --disable-cpu --algorithm karlsenhash --pool de.karlsen.herominers.com:1195 --wallet karlsen:qpmrrhwj0ph2vezz0dscgrjtd05fywen7cluagm23m9eg2d2z8lkj3f0z56va --password rig01


#FS on hiveos
--disable-cpu
--gpu-cclock0 1500
--gpu-coffset0 250 
--gpu-mclock0 5001
--gpu-plimit0 150
--gpu-fan0 60
