#!/bin/bash

COMMON_SERVER_OPTIONS="--locators=locator[10334] --server-port=40404 --max-heap=1G"
COMMON_SERVER_OPTIONS_G1="--locators=locator[10334] --server-port=40404 --J=-XX:+UseG1GC"

sleep 15

mkdir -p /data/$HOSTNAME

ip=`hostname -I` 

gfsh start server --bind-address=$ip --hostname-for-clients=$ip --dir=/data/$HOSTNAME/ ${COMMON_SERVER_OPTIONS} $@

while true; do
  sleep 10
done
