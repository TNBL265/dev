#/bin/bash

/tini -v -- /opt/oai-gnb/bin/entrypoint.sh \ 
/opt/oai-gnb/bin/nr-softmodem -O /opt/oai-gnb/etc/gnb.conf --sa --telnetsrv --rfsim --log_config.global_log_options level,nocolor,time

while (true); do sleep 1; done
