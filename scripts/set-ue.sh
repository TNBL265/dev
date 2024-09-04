#!/bin/bash

stop_ue() {
    slice_number=$1
    container_name="oai-nr-ue-slice$slice_number"
    echo "Stopping $container_name..."
    docker stop $container_name
}

restart_ue() {
    slice_number=$1
    container_name="oai-nr-ue-slice$slice_number"
    echo "Restarting $container_name..."
    docker restart $container_name
}

if [ $# -lt 2 ]; then
    echo "Usage: $0 {stop|restart} [slice_number ...]"
    exit 1
fi

action=$1
shift

for slice_number in "$@"
do
    if [ "$action" == "stop" ]; then
        stop_ue "$slice_number"
    elif [ "$action" == "restart" ]; then
        restart_ue "$slice_number"
    else
        echo "Invalid action: $action"
        echo "Usage: $0 {stop|restart} [slice_number ...]"
        exit 1
    fi
done
