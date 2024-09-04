#!/bin/bash

restart_container() {
    container_name=$1
    echo "Restarting $container_name..."
    docker restart $container_name
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 [slice_number ...]"
    exit 1
fi

for slice_number in "$@"
do
    restart_container "$slice_number"
done
