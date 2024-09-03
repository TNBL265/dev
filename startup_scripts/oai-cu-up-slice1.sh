#/bin/bash

ip addr add 10.1.20.201/24  dev eth0 # N3
ip addr add 10.1.150.201/24 dev eth0 # E1
ip addr add 10.1.100.201/24 dev eth0 # F1

/tini -v -- /opt/oai-gnb/bin/entrypoint.sh \ 
/opt/oai-gnb/bin/nr-cuup -O /opt/oai-gnb/etc/gnb.conf --sa

while true; do sleep 1; done
