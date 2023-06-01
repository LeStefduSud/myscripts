#!/bin/sh
# This script contains different command lines to install an run the differents version of the onezeroiner 
# https://github.com/OneZeroMiner/onezerominer/releases/download/v1.1.3/onezerominer-linux-1.1.3.tar.gz
# Use it as an example for my farm, composed in order of the graphic card NIVDIA 3080 FE

#Setting the differents path and version
minerversion="1.1.3"
minername="onezerominer"
minerfolder="/opt/${minername}/${minername}-linux/"
echo  "Going to directory ${minerfolder}"
cd ${minerfolder}

#Only the following command will be really executed
#sudo ./rigel  -a kheavyhash -u kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -w rig01 -o stratum+ssl://de.kaspa.herominers.com:1206 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 810 --pl 170,200,270
ocs_dnx1='--devices 2 --coff 250 --cclk 1470 --mclk 810 --pl 170'


sudo ./onezerominer -a dynex \
    -w XwnpzRhqAv38HskXd8g8cU1VM2b5yffjRCNq6acHytdHHEDJhuxbmxpRrwVs4a2GfxKFyE75LnU8YjGqAKKQpuZr1mdXZ6ou3 \
    -o dnx.eu.ekapool.com:19666 \
    $(echo $ocs_dnx1)

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
sudo mkdir -p /opt/onezerominer/
sudo chown user /opt/onezerominer/

cd /opt/onezerominer/

#Getting the last realease
wget https://github.com/OneZeroMiner/onezerominer/releases/download/v1.1.3/onezerominer-linux-1.1.3.tar.gz
tar -xzvf onezerominer-linux-1.1.3.tar.gz
cd rigel-1.3.8-linux/
