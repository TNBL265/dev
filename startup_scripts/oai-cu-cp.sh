#/bin/bash

ip addr add 10.1.20.50/24  dev eth0 # N2
ip addr add 10.1.150.50/24 dev eth0 # E1
ip addr add 10.1.100.50/24 dev eth0 # F1

/tini -v -- /opt/oai-gnb/bin/entrypoint.sh \ 
/opt/oai-gnb/bin/nr-softmodem -O /opt/oai-gnb/etc/gnb.conf --sa --telnetsrv --telnetsrv.shrmod ci --log_config.global_log_options level,nocolor,time,line_num,function

while true; do sleep 1; done
