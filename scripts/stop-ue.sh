#!/bin/bash

stop_ue() {
    slice_number=$1
    container_name="oai-nr-ue-slice$slice_number"
    echo "Stopping $container_name..."
    docker stop $container_name
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 [slice_number ...]"
    exit 1
fi

for slice_number in "$@"
do
    stop_ue "$slice_number"
done
