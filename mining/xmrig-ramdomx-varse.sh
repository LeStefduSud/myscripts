#!/bin/sh
#Stef mining a GhostRider coin VarseShhain https://varsechain.com/#
#On my Core Wallet VDB7tbv9qe6P8XTcY9hEfoWv2wZGYH55FA

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
