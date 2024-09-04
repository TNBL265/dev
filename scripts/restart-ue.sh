#!/bin/bash

restart_ue() {
    slice_number=$1
    container_name="oai-nr-ue-slice$slice_number"
    echo "Restarting $container_name..."
    docker restart $container_name
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 [slice_number ...]"
    exit 1
fi

for slice_number in "$@"
do
    restart_ue "$slice_number"
done
