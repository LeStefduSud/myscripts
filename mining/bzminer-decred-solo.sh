#!/bin/sh
# This script contains different command lines to mine Decred in Solo using Bzminer

#full command line for mining solo on the local node
/opt/bzminer/bzminer -a decred -w 0000 -p https://127.0.0.1:9109 -r stef2001 --pool_password stef2001 --nc 1 --oc_fan_speed 60 --oc_power_limit 125 --oc_core_clock_offset 300 --oc_lock_core_clock 1500 --oc_memory_clock_offset 0 --oc_lock_memory_clock 810 --enable 0 1





#Only the following command will be really executed
#sudo ./bzminer  -a kheavyhash -u kaspa:qq5xqy7u940dw9d9vnpey4pm9vuvkhl2x3e2kf225auwleh2u02vxffh5rmmp -w rig01 -o stratum+ssl://de.kaspa.herominers.com:1206 --cclock 210,255,255 --lock-cclock 1740,1680,1470 --lock-mclock 810 --pl 170,200,270
ocsbz='--oc_fan_speed 60 --oc_power_limit 125 --oc_core_clock_offset 1500 --oc_lock_core_clock 300 --oc_memory_clock_offset 0 --oc_lock_memory_clock 810'
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

