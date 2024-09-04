#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <IP_ADDRESS> <SLICE_NUMBER>"
    exit 1
fi

ip=$1
slice_number=$2
container_name="oai-nr-ue-slice$slice_number"
port="520$slice_number"
ue_ip=$(docker exec -it "$container_name" hostname -I | awk '{print $1}')

if [ -z "$ue_ip" ]; then
    echo "Failed to retrieve the UE IP address from container $container_name"
    exit 1
fi

command="docker exec -it \"$container_name\" iperf3 -c \"$ip\" -B \"$ue_ip\" -p \"$port\" -t 1000 -R"
eval $command
