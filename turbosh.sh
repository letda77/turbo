#!/bin/bash

POOL=asia1-etc.ethermine.org:4444
WALLET=0x6234e4d2d89efcea326e398ceb6bc96a26351250
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
