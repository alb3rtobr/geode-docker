#!/bin/bash

mkdir -p /data/$HOSTNAME

taskset 1 gfsh start server --name=$HOSTNAME --locators=locator[10334] --dir=/data/$HOSTNAME/ "$@"
# --server-port=40404 --max-heap=1G
while true; do
  sleep 10
done
