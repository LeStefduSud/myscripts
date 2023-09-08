#!/bin/sh
#Stef mining a GhostRider coin on different coin and pool
# it is always the same Parameters except teh pool and the mining adresse

#  VarseChain on TazMining VarseShhain https://varsechain.com/ my Core Wallet VDB7tbv9qe6P8XTcY9hEfoWv2wZGYH55FA
sudo /opt/xmrig/xmrig --algo ghostrider --url stratum+tcp://pool.tazmining.ch:5301 --donate-level 0 \
	--threads=4 --user VDB7tbv9qe6P8XTcY9hEfoWv2wZGYH55FA

#  ReactionCore on TazMining stratum+tcp://pool.tazmining.ch:5321
sudo /opt/xmrig/xmrig -a gr -o stratum+tcp://pool.tazmining.ch:5321 --donate-level 0 \
	-t=22 -u RqmMo9Z2EXm1Vq6uFk3Zhny5MMDJfZ74Nb.rig01-ubuntu




exit
/opt/xmrig/xmrig -a ghostrider \
  -url stratum-eu.rplant.xyz:17093 --donate-level 0  --threads=4\
  --tls --user VDB7tbv9qe6P8XTcY9hEfoWv2wZGYH55FA.test01\
  -k -p ubuntu

exit
#!/bin/sh
while [ 1 ]; do
	./xmrig -a ghostrider --url stratum-eu.rplant.xyz:17093 --tls --user VDB7tbv9qe6P8XTcY9hEfoWv2wZGYH55FA.test01
	sleep 5
done
