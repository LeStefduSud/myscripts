#!/bin/sh
# This script contains different command lines to install an run the differents version of the rigel Miner
# https://github.com/rigelminer/rigel for dual mining Radian+Zil
# Use it as an example for my farm, composed in order of the graphic card NIVDIA RTX 3060TI,NIVDIA RTX 3070TI,NIVDIA 3080 FE
# All is run from /opt/rigel


#Setting the differents path and version
minerversion="1.7.2"
minername="rigel"
minerfolder="/opt/rigel/"
echo  "Going to directory ${minerfolder}"


#Only the following command will be really executed
#sudo /opt/rigel/rigel  -a kheavyhash -u kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -w rig01 -o stratum+ssl://de.kaspa.herominers.com:1206 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 810 --pl 170,200,270


# Radian + zil 
# This is for my RTX 
#--lock-cclock [2]1200 --lock-mclock [2]X --mclock [2]1000 \
ocs_etc='--cclock 100,100,100 --lock-cclock 1200,1200,1200 --lock-mclock 8200,9200,9200 --mclock 100,100,100 --pl 125,150,190  --fan-control t:[_;95][70;70-99]'

sudo ./rigel -a etchash\
    -o stratum+ssl://eu.ezil.me:24443 \
    -u 0xd46247E9BA7F1B9603Aa9B53Ab15cff9f3267397.zil10ej64utfe2ueczp284xw28yp73nn97pa9j9cg6 \
    -w rig01manual --log-file /var/log/miner/rigel/rigel.log \
    $(echo $ocs_etc)

exit 0
pause

# Overclocking for Kaspa and my nvidia cards, 3060 Ti, 3070 Ti, 3080
# Standarsd

# Most efficien

# Standard
#The following lines are not executed, there are only here to store and facilitate reuse of the script
#Starting a named screen session to reattach it later quickly

mkdir -p /opt/rigel


#Getting the last realease
cd /tmp
wget https://github.com/rigelminer/rigel/releases/download/1.7.2/rigel-1.7.2-linux.tar.gz
tar -xzvf rigel-1.7.2-linux.tar.gz 
mv rigel-1.3.10-linux/* /opt/rigel

#Tempo flightsheet Kaspa+ZIl
--cclock 300,300,450 --lock-cclock 1500,1500,1600 --lock-mclock 810 --pl 170,200,270 --no-tui