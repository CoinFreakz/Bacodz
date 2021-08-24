#!/bin/sh
PoolHost=ap.luckpool.net
Port=3956
PublicVerusCoinAddress=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WorkerName=Linux2Core
Threads=2
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
