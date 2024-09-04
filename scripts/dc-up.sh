#!/bin/bash

if [ "$1" == "cn" ]; then
    docker compose -f ../docker-compose-cn.yaml up -d
elif [ "$1" == "ran" ]; then
    docker compose -f ../docker-compose-ran.yaml up -d
elif [ "$1" == "rfsim" ]; then
    docker compose -f ../docker-compose-rfsim.yaml up -d
else
    echo "Usage: $0 {cn|ran|rfsim}"
fi
