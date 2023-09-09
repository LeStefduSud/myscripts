#Different command line for applying OC on command line


# Using nvidia-settings command line

# getting list of GPUS found
$ nvidia-smi -L
GPU 0: NVIDIA GeForce RTX 3060 Ti (UUID: GPU-1d8b99ea-9f1a-2e3d-8253-1a82b196d3a5)
GPU 1: NVIDIA GeForce RTX 3070 Ti (UUID: GPU-7db2b791-e594-b90d-5d7b-bc0990543dde)
GPU 2: NVIDIA GeForce RTX 3080 (UUID: GPU-c54d145d-f1d4-5d68-dccb-a11548c6f79a)

# getting info on aspecific GPU
$ sudo nvidia-smi -i 2
Sat Sep  9 13:54:13 2023       
+---------------------------------------------------------------------------------------+
| NVIDIA-SMI 535.86.05              Driver Version: 535.86.05    CUDA Version: 12.2     |
|-----------------------------------------+----------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |         Memory-Usage | GPU-Util  Compute M. |
|                                         |                      |               MIG M. |
|=========================================+======================+======================|
|   2  NVIDIA GeForce RTX 3080        On  | 00000000:28:00.0 Off |                  N/A |
| 65%   71C    P2             219W / 220W |    427MiB / 10240MiB |    100%      Default |
|                                         |                      |                  N/A |
+-----------------------------------------+----------------------+----------------------+

#getting live info
sudo nvidia-smi dmon
# gpu    pwr  gtemp  mtemp     sm    mem    enc    dec    jpg    ofa   mclk   pclk 
# Idx      W      C      C      %      %      %      %      %      %    MHz    MHz 
    0    119     59      -    100      0      0      0      0      0   6800   1665 
    1    159     59      -    100      0      0      0      0      0   9251   1695 
#Setting the GPU core Clock
$ sudo nvidia-smi -i 2 -lgc 1500
GPU clocks set to "(gpuClkMin 1500, gpuClkMax 1500)" for GPU 00000000:28:00.0
    2    219     74      -    100      0      0      0      0      0   9251   1695 

#Setting power limit to all card
stef2001@rig01-ubuntu:~$ sudo nvidia-smi -pl 120
[sudo] Mot de passe de stef2001 : 
Power limit for GPU 00000000:25:00.0 was set to 120.00 W from 120.00 W.
Power limit for GPU 00000000:27:00.0 was set to 120.00 W from 160.00 W.
Power limit for GPU 00000000:28:00.0 was set to 120.00 W from 220.00 W.

