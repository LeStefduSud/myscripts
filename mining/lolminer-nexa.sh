#!/bin/sh
# This script contains different command lines to install an run the differents version of the LolMiner Miner # https://github.com/Lolliedieb/lolMiner-releases/releases
# Use it as an example for my farm, composed in order of the graphic card AMD RX 5600XT, NIVDIA RTX 3060TI,NIVDIA RTX 3070TI,NIVDIA 3080 FE

#Setting the differents path and version
minerversion="1.70"
minername="lolMiner"
minerfolder="/home/user/${minername}/${minername}-${minerversion}/"
echo  "Going to directory ${minerfolder}"
cd ${minerfolder}

#Only the following command will be really executed
ocs_nexa='--coff 255 --cclk 1500 --mclk 5001 --pl 190'

sudo ./lolMiner --algo NEXA --devices NVIDIA \
    --user nexa:nqtsq5g5wa882tktx2qj94qts96dkwcanw0dua9twh9ht6sk.rig01 \
    --pool tls://fr.vipor.net:5184 \
    $(echo $ocs_nexa)

exit 0
pause

# Overclocking for Kaspa and my nvidia cards, 3060 Ti, 3070 Ti, 3080
# Standarsd
ocs_nexa='--coff 255 --cclk 1500 --mclk 5001 --pl 190'
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
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.70/lolMiner_v1.70_Lin64.tar.gz
tar -xzvf lolMiner_v1.70_Lin64.tar.gz
 mv 1.70 lolminer-1.70

