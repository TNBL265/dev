#!/bin/bash

docker network rm oai-net

docker compose -f ../docker-compose-cn.yaml down
docker compose -f ../docker-compose-ran.yaml down
