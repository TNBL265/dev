#!/bin/bash

docker compose -f ../docker-compose-cn.yaml down
docker compose -f ../docker-compose-ran.yaml down

docker network rm oai-net
