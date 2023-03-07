#!/bin/sh
# This script contains different command lines to install an run the differents version of the BZminer Miner
# https://github.com/bzminer/bzminer/releases
#Use it as an example for my farm, composed in order of the graphic card AMD RX 5600XT, NIVDIA RTX 3060TI,NIVDIA RTX 3070TI,NIVDIA 3080 FE


#The following line is executed and the script exit

#Only the following command will be really executed
sudo ./rigel -a nexapow -o stratum+ssl://fr.vipor.net:5184 -u nexa:nqtsq5g5wa882tktx2qj94qts96dkwcanw0dua9twh9ht6sk -w rig01 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 5001 --pl 170,200,270
pause
exit 0

#Starting a named screen session to reattach it later quickly
screen -S myminer
screen -r myminer

#The following lines are not executed, there are only here to store and facilitate reuse of the script
mkdir -p myminer/rigel
cd myminer/rigel

#Getting the last realease
wget https://github.com/rigelminer/rigel/releases/download/1.3.8/rigel-1.3.8-linux.tar.gz
tar -xzvf rigel-1.3.8-linux.tar.gz 
cd rigel-1.3.8-linux/

#listing
rigel --list-devices

#solo mining on woolypooly with all Card with
sudo ./rigel -a nexapow -o stratum+ssl://pool.woolypooly.com:3124 -u nexa:nqtsq5g5wa882tktx2qj94qts96dkwcanw0dua9twh9ht6sk -w rig01 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 5001 --pl 170,200,270

#solo mining on vipor.net with all Card with
sudo ./rigel -a nexapow -o stratum+ssl://fr.vipor.net:5184 -u nexa:nqtsq5g5wa882tktx2qj94qts96dkwcanw0dua9twh9ht6sk -w rig01 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 5001 --pl 170,200,270

#mining Nexa+Zil with same overclock settings
sudo ./rigel -a nexapow+zil -o [1]stratum+ssl://fr.vipor.net:5184 -u [1]nexa:nqtsq5g5wa882tktx2qj94qts96dkwcanw0dua9twh9ht6sk -o [2]zmp+ssl://eu1-zil.shardpool.io:5555 -u [2]zil10ej64utfe2ueczp284xw28yp73nn97pa9j9cg6 -w rig01 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 5001 --pl 170,200,270