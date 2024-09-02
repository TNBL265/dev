#!/bin/bash

/tini -v -- /opt/oai-nr-ue/bin/entrypoint.sh /opt/oai-nr-ue/bin/nr-uesoftmodem -O /opt/oai-nr-ue/etc/nr-ue.conf ${USE_ADDITIONAL_OPTIONS} &

while true; do sleep 1; done