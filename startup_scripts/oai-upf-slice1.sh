#/bin/bash

ip addr add 10.1.20.101/24 dev eth0

/openair-upf/bin/oai_upf -c /openair-upf/etc/config.yaml -o

while true; do sleep 1; done
