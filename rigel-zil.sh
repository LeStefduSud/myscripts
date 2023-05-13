#!/bin/sh
# This script contains different command lines to install an run the differents version of the rigel Miner # https://github.com/rigelminer/rigel
# Use it as an example for my farm, composed in order of the graphic card AMD RX 5600XT, NIVDIA RTX 3060TI,NIVDIA RTX 3070TI,NIVDIA 3080 FE

#Setting the differents path and version
minerversion="1.3.8"
minername="rigel"
minerfolder="/home/user/${minername}/${minername}-${minerversion}-linux/"
echo  "Going to directory ${minerfolder}"
cd ${minerfolder}

#Only the following command will be really executed
ocs_zil1='--cclock 100 --lock-cclock 1200 --lock-mclock X --mclock 1000'

sudo ./rigel -a zil \
    -u zil10ej64utfe2ueczp284xw28yp73nn97pa9j9cg6 -o zmp+ssl://eu1-zil.shardpool.io:5555 \
    -w rig01  \
    $(echo $ocs_zil1)

exit 0
pause

# Overclocking for Kaspa and my nvidia cards, 3060 Ti, 3070 Ti, 3080
# Standarsd
--cclock 210,255,255 --lock-cclock 1740,1740,1740 --lock-mclock 810 --pl 170,200,270
# Most efficien

# Standard
sudo ./rigel  -a kheavyhash -u kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -w rig01 -o stratum+ssl://de.kaspa.herominers.com:1206 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 810 --pl 170,200,270




#The following lines are not executed, there are only here to store and facilitate reuse of the script
#Starting a named screen session to reattach it later quickly
screen -S myminer
screen -r myminer

mkdir -p myminer/rigel
cd myminer/rigel

#Getting the last realease
wget https://github.com/rigelminer/rigel/releases/download/1.3.8/rigel-1.3.8-linux.tar.gz
tar -xzvf rigel-1.3.8-linux.tar.gz 
cd rigel-1.3.8-linux/
