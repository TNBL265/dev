#!/bin/bash

docker network create oai-net --config-from ../network-oai-net.yaml

docker compose -f ../docker-compose-cn.yaml up -d
docker compose -f ../docker-compose-ran.yaml up -d
