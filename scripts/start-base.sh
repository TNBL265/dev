#!/bin/bash

docker network create -d ipvlan --subnet=10.1.20.0/24 --gateway=10.1.20.1 -o parent=enp1s0 oai-net

docker compose -f ../docker-compose-cn.yaml up -d
docker compose -f ../docker-compose-ran.yaml up -d
