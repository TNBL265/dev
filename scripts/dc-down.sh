#!/bin/bash

if [ "$1" == "cn" ]; then
    docker compose -f ../docker-compose-cn.yaml down
elif [ "$1" == "ran" ]; then
    docker compose -f ../docker-compose-ran.yaml down
elif [ "$1" == "rfsim" ]; then
    docker compose -f ../docker-compose-rfsim.yaml down
else
    echo "Usage: $0 {cn|ran|rfsim}"
fi
