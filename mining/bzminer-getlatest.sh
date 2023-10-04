#!/bin/sh
# This script contains different command lines to install an run the differents version of the bzminer Miner # https://github.com/bzminer/bzminer
# chown -vR user:user /opt
# mkdir -p /opt/bzminer

#getting an the latest version
cd /opt/bzminer
wget https://bzminer.com/downloads/bzminer_v17.0.0_linux.tar.gz
tar -xzvf bzminer_v17.0.0_linux.tar.gz
mv /opt/bzminer/bzminer_v17.0.0_linux/* /opt/bzminer




#Setting the differents path and version
minerversion="v13.4.0"
minername="bzminer"
minerfolder="/home/user/${minername}/${minername}_${minerversion}_linux/"
echo  "Going to directory ${minerfolder}"
cd ${minerfolder}

#Only the following command will be really executed
#sudo ./bzminer  -a kheavyhash -u kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -w rig01 -o stratum+ssl://de.kaspa.herominers.com:1206 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 810 --pl 170,200,270
ocs_kas1='--cclock 210,255,255 --lock-cclock 1740,1740,1740 --lock-mclock 810 --pl 170,200,270'
ocs_kas1='--oc_lock_core_clock 1470 1470 1470 --oc_lock_memory_clock 810  --oc_power_limit 170 200 270'

sudo ./bzminer -a kaspa \
    -w kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -p stratum+ssl://de.kaspa.herominers.com:1206 \
    -r rig01  --nvidia 1 \
    $(echo $ocs_kas1)

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
screen -RR m

mkdir -p bzminer/bzminer
cd bzminer/bzminer

#Getting the last realease
wget https://github.com/bzminer/bzminer/releases/download/v13.4.0/bzminer_v13.4.0_linux.tar.gz
tar -xvzf bzminer_v13.4.0_linux.tar.gz

