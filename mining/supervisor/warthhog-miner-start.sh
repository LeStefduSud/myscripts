#!/bin/sh
# This script is for starting mining warthod
echo "Killing Warhhog-miner with OC"
sleep 5
killall -v wart-miner
sleep 5
echo "Starting Warhhog-miner with OC"
/usr/bin/nvidia-smi -pm 1 
/usr/bin/nvidia-smi -lgc 1500 
/usr/bin/nvidia-smi -lmc 5001 
/usr/bin/nvidia-smi -pl 125 
/opt/janusminer/build/src/miner/wart-miner -a 4af9ccf834a941af6869e8bf3ef020a74aa381161fb7f3b1 --gpus 0,1
