#!/bin/bash

docker compose -f ../oai-net.yaml up -d
docker compose -f ../docker-compose-cn.yaml up -d
docker compose -f ../docker-compose-ran.yaml up -d
