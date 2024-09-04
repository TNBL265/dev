#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <IP_ADDRESS> <SLICE_NUMBER>"
    exit 1
fi

ip=$1
slice_number=$2

container_name="oai-nr-ue-slice$slice_number"
ue_ip="10.0.$slice_number.2"
port="520$slice_number"

docker exec -it "$container_name" iperf3 -c "$ip" -B  "$ue_ip" -p "$port" -t 1000 -R
