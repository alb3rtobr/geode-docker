#!/bin/bash

# Using gfsh file for locator in order to
# activate PDX between locator and servers
# init
gfsh run --file=/scripts/locator.gfsh

while true; do
  sleep 10
done
