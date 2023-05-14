#!/bin/sh
#Stef mining monero

# /opt/xmrig/xmrig --coin=XMR --threads=4 -o xmr.2miners.com:12222 -u 48DWUzoTANZAMakwHVKqJq6JT3Ah2SfFC5i5nVrkFVREVaKcPet8hP9MPFapEveUCr3mLZCmnChUG7THLu7maDENLvsyaZZ.hpprodesk --tls -p x

/opt/xmrig/xmrig -a rx/0 \
  -o de.monero.herominers.com:1111 --donate-level 1  --threads=4\
  -u 48DWUzoTANZAMakwHVKqJq6JT3Ah2SfFC5i5nVrkFVREVaKcPet8hP9MPFapEveUCr3mLZCmnChUG7THLu7maDENLvsyaZZ \ 
  -k -p hpprodesk