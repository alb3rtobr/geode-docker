#!/bin/bash

sleep 15

mkdir -p /data/$HOSTNAME

ip=`hostname -I` 

taskset 1 gfsh start server --bind-address=$ip --hostname-for-clients=$ip --locators=locator[10334] --dir=/data/$HOSTNAME/ $@
# --server-port=40404 --max-heap=1G
while true; do
  sleep 10
done
